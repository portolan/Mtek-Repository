uses crt;                        {by Matheus Portolan}

type
valeria= array [1..10] of integer;

var
x:valeria;
y,z,cp,c,a:integer;

begin
   clrscr;
   writeln('Numeros primos acima de 100:');
   y:=100;
   z:=1;
   repeat
      z:=1;
      c:=0;
      y:=y+1;
      for z:=z+1 to y-1 do
         begin
            if (y mod z)= 0 then
              c:=1;
         end;
      if c=0 then
        begin
           cp:=cp+1;
           a:=a+1;
           x[a]:=y;
        end;
   until cp=10;
   a:=0;
   for a:=a+1 to 10 do
     writeln(x[a]);
   readkey;
end.