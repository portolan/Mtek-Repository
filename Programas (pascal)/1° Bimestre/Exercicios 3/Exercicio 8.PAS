uses crt;                     {Exercicio 8}
                            {by Matheus Portolan}
var x,y,z: integer;

begin
    clrscr;
    y:=1;
    repeat
       read(x);
       if (x<>0) and (x>0) then
         begin
         if ((x mod 2) = 0) then
           y:=x*y;
         end;
    until x<=0;
    writeln(' ');
    writeln('O produto dos numeros pares digitados e: ',y);
    readkey;
end.