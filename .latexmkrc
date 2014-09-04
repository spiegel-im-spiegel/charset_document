#!/usr/bin/env perl
$latex        = 'uplatex -synctex=1';
$latex_silent = 'uplatex -synctex=1 -interaction=batchmode';
$bibtex       = 'upbibtex';
$biber        = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf       = 'dvipdfmx -z9 -V 7 %O -o %D %S';
$makeindex    = 'mendex %O -o %D %S';
$max_repeat   = 5;
$pdf_mode	  = 3; # generates pdf via dvipdfmx

$pvc_view_file_via_temporary = 0;
