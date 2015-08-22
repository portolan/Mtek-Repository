uses crt;                       {by Matheus Portolan}

type
vetor1= array [1..500] of integer;
vetor2= array [1..500] of real;
var
x:vetor1;
y:vetor2;
a,b,c:integer;
n:integer;

begin
   clrscr;
   writeln('Digite 500 valores:');
   for a:=a+1 to 500 do
     read(x[a]);
   a:=0;
   for a:=a+1 to 500 do
     begin
        for b:=b+1 to 500 do
          if x[a]>x[b] then
            c:=c+1;
        if c=499 then
          n:=x[a];
        b:=0;
        c:=0;
     end;
   a:=0;
   for a:=a+1 to 500 do
     y[a]:=x[a]/n;
   a:=0;
   writeln('Resultado:');
   for a:=a+1 to 500 do
     write(y[a]:5:3,',');
   readkey;
end.
