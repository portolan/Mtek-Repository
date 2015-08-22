uses crt;                             {by Matheus Portolan}

procedure bhaskara (a,b,c:integer);

var
delta,x1,x2:real;

begin
   delta:=(b * b) - 4 * a * c;
   if delta<0 then
     writeln('Operacao sem resolucao') else
       begin
          x1:=(-(b) + sqrt(delta))/(2 * a);
          x2:=(-(b) - sqrt(delta))/(2 * a);
          write('x1= ',x1:5:2,' ');
          write('|  x2= ',x2:5:2);
       end;
end;

var
x,y,z:integer;

begin
   clrscr;
   writeln('Digite A,B e C:');
   read(x);
   read(y);
   read(z);
   bhaskara(x,y,z);
   readkey;
end.