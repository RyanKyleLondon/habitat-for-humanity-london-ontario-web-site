@ECHO off
IF EXIST temp RMDIR /S /Q temp
MKDIR temp
Transform -s:xml -xsl:xml2html.xsl -o:temp
RENAME temp\*.xml *.html
XCOPY /Q /Y temp\*.html ..\public_html
RMDIR /S /Q temp
