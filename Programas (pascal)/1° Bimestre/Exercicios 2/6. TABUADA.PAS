uses crt;                        {6. Algoritmo de tabuada}
                              {by Matheus Portolan}
var
x,y,z:integer;

begin
    clrscr;
    writeln('Digite um numero inteiro positivo:');
    read(x);
    if (x<=0) then
      writeln('Numero invalido..') else
    for y:= 2 to x do
    begin
    z:=y*x;
    writeln(y,' x ',x,' = ',z);
    end;
    readkey;
end.