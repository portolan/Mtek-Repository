program ASCII;
uses Crt;
var
    tecla  : char;
    codigo : byte;
 
begin
    writeln('Programa para descobrir o codigo ASCII de determinada tecla');
    writeln('Versao 0.1 - Por Dalton - 2SI Cesumar - 09/02/2007');
    writeln;
 
    repeat
        write('Digite uma tecla (Esc para sair): ');
        tecla := readkey;
        codigo := byte(tecla);
        writeln('  Codigo ASCII: ', codigo);
    until codigo = 27;
end.