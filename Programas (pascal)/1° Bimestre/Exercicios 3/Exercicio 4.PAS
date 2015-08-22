uses crt;                        {Exercicio 4}
                               {by Matheus Portolan}
var m,n,x,resultado: integer;

begin
    clrscr;
    repeat
       read(m);
       read(n);
       if (m>0) and (n>0) then
         begin
         for x:=m to (m+n) do
           resultado:=(x+n);
         writeln(resultado);
         end;
    until m<=0;
    readkey;
end.
