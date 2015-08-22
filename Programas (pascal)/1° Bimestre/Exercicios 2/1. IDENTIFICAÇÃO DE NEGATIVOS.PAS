uses crt;              {1. Algoritmo para identificacao de numeros negativos}
                            {by Matheus Portolan}
var
a,b,c: integer;

begin
    clrscr;
    a:=0;
    writeln('Digite 20 valores:');
    for c:=1 to 20 do
      begin
         read(a);
         if (a<0) then
         b:=b+1;
      end;
    if (b=0) then
      begin
         writeln(' ');
         writeln('Voce nao digitou nenhum numero negativo.');
      end
    else
    writeln('Existem ',b,' numeros negativos.');
    readkey;
end.
