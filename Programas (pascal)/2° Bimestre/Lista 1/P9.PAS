uses crt;                      {by Matheus Portolan}

type
vetor1= array [1..50] of integer;

var
x:vetor1;
a,b,c,t:integer;

begin
   clrscr;
   writeln('Digite 2 valores:');
   readln(x[1]);
   readln(x[2]);
   for a:=a+1 to 48 do
     x[a+2]:=x[a+1]+x[a];
   writeln('Vetor completo:');
   for b:=b+1 to 50 do
     write(x[b],':');
   readkey;
end.