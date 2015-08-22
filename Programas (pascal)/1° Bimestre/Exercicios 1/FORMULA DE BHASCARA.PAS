uses crt;

var
a,b,c,x1,x2,delta:real;

begin
 clrscr;
 write('Digite A: ');
 read(a);
 write('Digite B: ');
 read(b);
 write('Digite C: ');
 read(c);
 delta:=(b * b) - 4 * a * c;
 if delta<0 then
  write('Operacao sem resolucao')
 else
   begin
     x1:=(-(b) + sqrt(delta)) / (2 * a);
     x2:=(-(b) - sqrt(delta)) / (2 * a);
     write('x1= ',x1:1:1,' ');
     write('|  x2= ',x2:1:1);
   end;
 readkey;
end.