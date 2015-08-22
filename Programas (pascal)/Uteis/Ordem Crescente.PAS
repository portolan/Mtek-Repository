uses crt;

type
teste= array [1..10] of string[1];

var
a:teste;
aux:string[5];
x,y,z:integer;

begin
   clrscr;

   for x:=x+1 to 10 do
      readln(a[x]);

   x:=0;

   for x:=x+1 to 9 do
   begin
      for y:=x+1 to 10 do
         if a[x]>a[y] then
         begin
            aux := a[x];
            a[x]:= a[y];
            a[y]:= aux;
         end;
   end;

   for z:=z+1 to 10 do
      writeln(a[z]);

   readkey;
end.
