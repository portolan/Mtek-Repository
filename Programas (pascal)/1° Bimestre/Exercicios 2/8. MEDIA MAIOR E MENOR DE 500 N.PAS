uses crt;          {8. Algoritmo que mostra a media, o maior e o menos numero}
                           {by Matheus Portolan}
var
x,y,b,r,a,z:integer;
v:real;

begin
    clrscr;
    a:=0;
    b:=32676;
    r:=500;
    for y:=1 to r do
      begin
         read(x);
         if x>a then
           a:=x;
         if x<b then
           b:=x;
         z:=x+z;
         v:=z/r;
      end;
    writeln(' ')
    writeln('O maior numero desses ',r,' valores e: ',a);
    writeln('O menos numero desses ',r,' valores e: ',b);
    writeln('A media desses valores e: ',v:5:2);
    readkey;
end.




