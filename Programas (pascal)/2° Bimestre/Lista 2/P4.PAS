uses crt;                      {by Matheus Portolan}

type
vetor1= array [1..100] of string[8];

procedure ordenaralfa (var a:vetor1);

var
aux:string[8];
x,y,z:integer;

begin
   x:=0;
   y:=0;
   for x:=x+1 to 99 do
     begin
        for y:=x+1 to 100 do
          if a[x]>a[y] then
            begin
               aux:=a[x];
               a[x]:=a[y];
               a[y]:=aux;
            end;
     end;
end;

var
x:vetor1;
y:integer;

begin
   clrscr;
   y:=0;
   writeln('Digite 100 valores literais');
   for y:=y+1 to 100 do
     begin
        readln(x[y]);
     end;
   ordenaralfa(x);
   y:=0;
   writeln('Valores literais em ordem alfabetica:');
   for y:=y+1 to 100 do
     writeln(x[y]);
   readkey;
end.





