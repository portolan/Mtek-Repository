uses crt;                       {7. Algoritmo para calcular varios fatoriais}
                                   {by Matheus Portolan}
var
y,z,n,a:integer;
r:real;

begin
    clrscr;
    read(n);
    for z:= 1 to n do
      begin
         read(y);
         r:= 1;
         for a:= 1 to y do
           r:= r*a;
           writeln(' ');
           writeln(y,' =',r:5:0);
           writeln(' ');
      end;
    readkey;
end.

