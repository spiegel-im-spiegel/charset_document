SET DOCFILE=%1

platex %DOCFILE%
pbibtex %DOCFILE%
platex %DOCFILE%
platex %DOCFILE%
dvipdfmx -z9 -V 7 -o %DOCFILE%.pdf %DOCFILE%.dvi
