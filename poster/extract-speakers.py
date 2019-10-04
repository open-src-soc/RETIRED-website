#!/usr/bin/env python3


import collections
import pathlib
import re
import subprocess


SECTION_RE = re.compile(r"\\section{([^}]+)}(.*)$")
SUBSECTION_RE = re.compile(r"\\subsection{([^}]+)}(.*)$")


def pandoc_version():
    stdout = subprocess.check_output(['pandoc', '--version'])
    version_str = stdout.splitlines()[0].split()[1].decode('utf-8')
    return tuple(map(int, version_str.split('.')))


def main():
    import sys
    if len(sys.argv) != 2:
        print("USAGE {} INPUT.tex", sys.argv[0])
        sys.exit(1)

    strip_hypertarget = False
    try:
        major, minor, _ = pandoc_version()
        if major >= 2:
            if minor < 8:
                # FIXME(ThomasH, 24 Sep 2019): not sure of the exact version
                strip_hypertarget = True
    except FileNotFoundError:
        print("Unable to find a valid pandoc executable, please make sure that "
              "**pandoc is installed**!", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print("WARNING: unable to query pandoc version,",
              "got exception '{}' ({})".format(e, e.__class__),
              file=sys.stderr)

    for l in pathlib.Path(sys.argv[1]).open():
        if l.startswith("\\emph") or l.startswith("/"):
            # Speaker bio...
            continue
        res = SECTION_RE.match(l)
        if res:
            if strip_hypertarget:
                print("}")
            continue

        res = SUBSECTION_RE.match(l)
        if res:
            # print("SUBSECTION MATCH", res.groups())
            title, rest = res.groups()
            print("\\vspace{0.3cm}{\\color{blue}\\bfseries " + title + "}" + rest)
            continue
        print(l.rstrip())


if __name__ == "__main__":
    main()
