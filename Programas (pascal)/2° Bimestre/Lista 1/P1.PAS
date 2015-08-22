uses crt;                       {by Matheus Portolan}

type
vetor=array [1..100] of integer;

var
v:vetor;
x,y:integer;

begin
   clrscr;
   y:=101;
   writeln('Digite 100 valores:');
   for x:=x+1 to 100 do
     begin
       read(v[x]);
     end;
   writeln('Ordem Inversa:');
   repeat
     y:=y-1;
     writeln(v[y]);
   until y=1;
   readkey;
end.