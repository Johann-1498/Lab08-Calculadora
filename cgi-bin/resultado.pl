!"C:/xampp/perl/bin/perl.exe"

use strict;
use CGI;

my $cgi = CGI -> new;
my $operacion = $cgi->param('operacion');

my @partes = split(/[\+\-\*\/]/, $operacion);
my $resultado = 0;
if($operacion){
    if ($operacion =~ /\+/) {
    $resultado = $partes[0] + $partes[1];
    } elsif ($operacion =~ /\-/) {
    $resultado = $partes[0] - $partes[1];
    } elsif ($operacion =~ /\*/) {
    $resultado = $partes[0] * $partes[1];
    } elsif ($operacion =~ /\//) {
    $resultado = $partes[0] / $partes[1];
    }
}
print "Content-Type: text/html\n\n";
print "<html><head><title>RESULTADO</title></head><body>";
print "<h1>Resultado: $resultado</h1>";
print "</body></html>";