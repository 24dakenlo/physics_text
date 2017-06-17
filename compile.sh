#!/bin/sh

platex main.tex
platex main.tex
platex main.tex
# http://www.interq.or.jp/mars/cherry/tex/mendex.html

makeindex main.idx
mendex -s gind.ist main.idx
platex main.tex
#dvipdfmx main.dvi
mv main.dvi 2017_physics_text.dvi
rm *.aux *idx main.ind main.ilg main.toc
#acroread main.pdf &

