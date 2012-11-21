#!/bin/sh
cd /Users/buddi/ProgToolz/Uni-Workspace/WissArbeiten

latexLoc="/usr/local/texlive/2011/bin/x86_64-darwin"
datei="document"

echo $datei
echo $latexLoc
echo $SELFAUTOLOC:$SELFAUTODIR:$SELFAUTOPARENT

$latexLoc/pdflatex -interaction=nonstopmode --src-specials "$datei.tex"
$latexLoc/bibtex "$datei"
$latexLoc/makeindex -s "$datei.ist" -t $datei.glg -o $datei.gls $datei.glo
#$latexLoc/makeindex -s "$datei.ist" -t "$datei.alg" -o "$datei.acr" "$datei.acn"
#$latexLoc/makeindex -s "$datei.ist" -t "$datei.glg" -o "$datei.gls" "$datei.glo"
#$latexLoc/makeindex -s "$datei.ist" -t "$datei.slg" -o "$datei.syi" "$datei.syg"
$latexLoc/pdflatex -interaction=nonstopmode --src-specials "$datei.tex"
#$latexLoc/pdflatex -interaction=nonstopmode --src-specials "$datei.tex"