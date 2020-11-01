# chessboard --- A package to print chessboards
Packageversion: 1.9 Ulrike Fischer 2019
Packagedate: 2020-11-01

## LICENSE
LaTeX Project Public License


## CHANGES
1.8: no longer uses \arabic to avoid problems with pages which redefine it.
     Added source of documentation. 
1.7: chessboard no longer loads amssymb (to avoid clashes)
1.6: Corrected some bugs. Added textfont key for text style.
1.5: Corrected some bugs.
     Added key getpiecelists.
     Adapted the package to xskak.
1.4: changed the code so that it work with xkeyval 2.5
1.3a: corrected a small bug
1.3:A lot of the pgf-code have been rewritten and extended.


## CONTENTS AND INSTALLATION

- README.md (this file)
- chessboard.dtx
- chessboard.ins
- chessboard.pdf

The best is to install chessboard with the package manager of your texsystem.

For manual installation compile the .ins file. This will create chessboard.sty, chessboard-keys-main.sty
chessboard-keys-pgf.sty and chessboard-pgf.sty. 
Move the four .sty  in <texmf>/tex/latex/chessboard/ and update the filename
database. Put chessboard.pdf in  doc/latex/chessboard/


The dtx-file doesn't contain any documentation.
So running LaTeX on it makes no sense!


## DOCUMENTATION

chessboard.pdf. There isn't a source for the documentation as it use some
local fonts and styles.

## DESCRIPTION

This package offers commands to print chessboards. It can print partial boards,
hide pieces and fields, color the boards and put various marks on the board.
It has a lot of options to place pieces on the board. Using exotic pieces e.g. for
fairy chess is possible.
It can be used together with the newest version (1.4) of the skak package
which you can find at CTAN and together with xskak.


## REQUIREMENTS
chessboard uses some primitives of e\TeX. It needs a recent version
of chessfss and xkeyval. It also needs the packages xifthen, tikz, pgfcore and pgfbaseshapes (from the pgf bundle),
and - if run with latex - pst-node (from pstricks).

