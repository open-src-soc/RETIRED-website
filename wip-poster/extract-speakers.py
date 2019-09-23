#!/usr/bin/env python3


import collections
import pathlib
import re

SECTION_RE = re.compile(r"\\section{([^}]+)}(.*)$")
SUBSECTION_RE = re.compile(r"\\subsection{([^}]+)}(.*)$")


def main():
    import sys
    if len(sys.argv) != 2:
        print("USAGE {} INPUT.tex", sys.argv[0])
        sys.exit(1)

    for l in pathlib.Path(sys.argv[1]).open():
        if l.startswith("\\emph") or l.startswith("/"):
            # Speaker bio...
            continue
        res = SECTION_RE.match(l)
        if res:
            print("% Section {} | {}".format(res.group(0), res.group(1)))
            print("\n")
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
