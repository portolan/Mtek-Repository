uses crt;                     {by Matheus Portolan}

type
vetor1= array [1..50] of integer;
vetor2= array [1..50] of integer;

var
x:vetor1;
y:vetor2;
a,b,c,t,v:integer;

begin
   clrscr;
   writeln('Digite 50 valores para o vetor 1:');
   for a:=a+1 to 50 do
     read(x[a]);
   a:=0;
   writeln('Digite 50 valores para o vetor 2:');
   for a:=a+1 to 50 do
     read(y[a]);
   a:=0;
   b:=51;
   repeat
      a:=a+1;
      b:=b-1;
      v:=v+((x[a])-(x[b]));
      c:=c+1;
   until c=50;
   writeln('Resultado:');
   writeln(v);
   readkey;
end.
