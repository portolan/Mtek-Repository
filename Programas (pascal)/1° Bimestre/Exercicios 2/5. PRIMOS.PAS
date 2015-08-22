uses crt;            {5. Algoritmo para identificacao de numeros primos.}
                               {by Matheus Portolan}
var
numero,x,t:integer;

begin
    clrscr;
    writeln('Digite um numero inteiro positivo:');
    read(numero);
    x:=1;
    t:=0;
    if (numero<=0) then
      writeln('Digite somente valor positivo..') else
    for x:=x+1 to (numero-1) do
       begin
       if ((numero mod x) = 0) then
         t:=1;
       end;
    if (t=1) then
      writeln('O numero ',numero,' nao e primo.') else
      writeln('O nomero ',numero,' e primo.');
    readkey;
end.



