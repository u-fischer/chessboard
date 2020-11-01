# chessboard — Print chess boards

Ulrike Fischer 2006-2019

![Version: 1.9](https://img.shields.io/badge/current_version-1.9-blue.svg?style=flat-square)
![Date: 2020-11-01](https://img.shields.io/badge/date-2020--11--01-blue.svg?style=flat-square)
[![License: LPPL1.3c ](https://img.shields.io/badge/license-LPPL1.3c-blue.svg?style=flat-square)](https://ctan.org/license/lppl1.3c)



## INSTALLATION

Get chessboard with the package manager of your tex system. 

If you want to install manually instead
download chessboard.dtx and chessboard.ins and TeX/LaTeX on chessboard.ins to unpack the dtx.
Put the four extracted files in tex/latex/chessboard/ and update  the filename database.

The dtx-file doesn't contain any documentation.
So running LaTeX on it makes no sense!

## DOCUMENTATION

chessboard.pdf. 

## DESCRIPTION

This package offers commands to print chessboards. It can print partial boards, 
hide pieces and fields, color the boards and put various marks on the board. 
It has a lot of options to place pieces on the board. Using exotic pieces (e.g., for fairy chess) is possible.

The documentation includes an example of an animated chessboard, 
for those whose PDF viewer can display animations.

## REQUIREMENTS
chessboard uses some primitives of e\TeX. It needs a recent version
of chessfss and xkeyval. It also needs the packages xifthen, tikz, pgfcore and pgfbaseshapes (from the pgf bundle),
and - if run with latex - pst-node (from pstricks).
