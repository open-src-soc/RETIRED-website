{-# LANGUAGE OverloadedStrings #-}

import           Data.Monoid     ((<>))
import           Hakyll
import           System.Process  (readProcess)

import           GHC.IO.Encoding


main :: IO ()
main = do
  setLocaleEncoding utf8
  setFileSystemEncoding utf8
  setForeignEncoding utf8
  hakyll $ do

    -- static content
    mapM_ (`match` (route idRoute >> compile copyFileCompiler))
          [   "CNAME"
            , "css/*"
            , "css/layouts/*"
            , "img/*"
            , "js/*"
            , "media/*"
          ]

    -- Static pages
    match ("pages/*.markdown" .||. "pages/*.md" .||. "pages/*.org") $ do
        route $ gsubRoute "pages/" (const "") `composeRoutes` setExtension "html"
        compile $
            pageCompiler
                >>= loadAndApplyTemplate "templates/default.html" builtPageCtx
                >>= relativizeUrls
    match "templates/*" $ compile templateCompiler

    -- robots, etc.
    match "assets/txt/*" $ do
        route $ gsubRoute "assets/txt/" (const "")
        compile copyFileCompiler

    create ["sitemap.xml"] $ do
        route idRoute
        compile $ do
            -- posts <- recentFirst =<< loadAll "posts/*"
            -- pages <- loadAll "pages/*"
            -- let allPages = pages ++ posts
            let sitemapCtx = builtPageCtx <> lastGitModification
            makeItem ""
                >>= loadAndApplyTemplate "templates/sitemap.xml" sitemapCtx

feedConfiguration :: FeedConfiguration
feedConfiguration = FeedConfiguration
    { feedTitle = "Deuxièmes rencontres RISC-V"
      , feedDescription = "Deuxièmes rencontres RISC-V"
      , feedAuthorName = "Damien Couroussé"
      , feedAuthorEmail = "damien.courousse@cea.fr"
      , feedRoot = "http://open-src-soc.github.io"
    }

-- Auxiliary compilers
--    the main page compiler
pageCompiler :: Compiler (Item String)
pageCompiler = pandocCompiler

-- Context builders
builtPageCtx :: Context String
builtPageCtx =  constField "siteroot" (feedRoot feedConfiguration)
             <> listField "entries" builtPageCtx (loadAll $ "pages/*" .||. "posts/*")
             <> dateField "date" "%A, %e %B %Y"
             <> dateField "isodate" "%F"
             <> gitTag
             <> lastGitModification
             <> defaultContext

-- | Extracts git commit info and render some html code for the page footer.
--
-- Adapted from
-- - Jorge.Israel.Peña at https://github.com/blaenk/blaenk.github.io
-- - Miikka Koskinen at http://vapaus.org/text/hakyll-configuration.html
gitTag :: Context String
gitTag = field "gitinfo" $ \item -> do
  let fp = toFilePath $ itemIdentifier item
      gitLog format =
        readProcess "git" ["log", "-1", "HEAD", "--pretty=format:" ++ format, fp] ""
  unsafeCompiler $ do
    date    <- gitLog "%aD"
    return $ concat
             [ "<a href=https://github.com/jaif2019/jaif2019.github.io/commits/master>"
             , "Page last modified " ++ date
             , "</a>"
             ]

-- | Extract the last modification date from the git commits
lastGitModification :: Context a
lastGitModification = field "lastgitmod" $ \item -> do
  let fp = toFilePath $ itemIdentifier item
  unsafeCompiler $
    readProcess "git" ["log", "-1", "HEAD", "--pretty=format:%ad", "--date=short", fp] ""
