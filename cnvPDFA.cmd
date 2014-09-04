SET DOCFILE=%1

ps2pdf14 -dPDFA -dPDFACompatibilityPolicy=1 -sProcessColorModel=DeviceCMYK %DOCFILE%.pdf %DOCFILE%-pdfa.pdf
