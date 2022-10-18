# SciencyLatex

My personal environment to start writing things in LaTeX

## Install

Required installation before this will work (I hope you are on linux, that makes live easier...):

- LaTeX (obviously), including all packages in your docunent.
- [Latex-mk](https://mg.readthedocs.io/latexmk.html)
- LuaLatex, for handling the tex files
- Biber, for reference handling

## Actually using this

1. Write the LaTeX document.
2. Go to the working directory in the terminal
3. Run `make COMMAND` to get the pdf file. The interesting commands are (check `Makefile` for details):
   - `full`: boring standard thing that generates your pdf
   - `debug`: if `full` gives you errors, debug will tell you what they are
   - `clean`: does not generate pdf, but cleans up all auxillary files (`.aux`, `.bbl`, etc., etc.).
   - `final`: throw away all auxillary files and start compiling from scratch, probably smart to check if it REALLY works before sending to someone important.
   - The rest you will not need unless you want to show off.
