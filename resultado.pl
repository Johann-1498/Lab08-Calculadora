!"C:/xampp/perl/bin/perl.exe"

use strict;
use CGI;

my $cgi = CGI -> new;
my $operacion = $cgi->param('operacion');

my @partes = split(/[\+\-\*\/]/, $operacion);
my $resultado = 0;