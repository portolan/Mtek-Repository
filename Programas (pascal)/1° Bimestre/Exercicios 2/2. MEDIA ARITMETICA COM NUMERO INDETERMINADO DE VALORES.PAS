uses crt;    {2. Algoritmo para media aritmetica com numero indeterminado de valores}
                       {by Matheus Portolan}
var
a,b,c,resultado: real;
x: integer;

begin
    clrscr;
    repeat
      read(a);
      if (a>=0) then
        begin
           c:=c+a;
           b:=b+1;
        end;
    until (a<0);
    resultado:=c/b;
    writeln(resultado:5:2);
    readkey;
end.