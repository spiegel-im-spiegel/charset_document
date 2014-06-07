SET DOCFILE=%1

platex %DOCFILE%
jbibtex %DOCFILE%
platex %DOCFILE%
platex %DOCFILE%
dvipdfmx -z9 -o %DOCFILE%.pdf %DOCFILE%.dvi
