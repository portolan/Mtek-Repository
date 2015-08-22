uses crt;              {Exercicio 5}
                     {by Matheus Portolan}
var x,y,z,a,b,c,d: integer;

begin
    clrscr;
    repeat
        read(x);
        a:=1;
        b:=0;
        c:=0;
        y:=1;
        z:=0;
        d:=0;
        if (x<>0) and (x>0) then
          begin
             if ((x mod 2)= 0) then
               begin
                  for a:= a+1 to x-1 do
                  if ((x mod a) = 0) then
                  b:= b+1;
                  writeln(b);
               end;
             if ((x mod 2)<>0) and (x<10) then
               begin
                  for c:=c+1 to x do
                  y:=c*y;
                  writeln(y);
               end;
             if ((x mod 2)<>0) and (x>=10) then
               begin
                  for z:= z+1 to x do
                  d:= z+d;
                  writeln(d);
               end;
          end;
    until x<=0;
end.
