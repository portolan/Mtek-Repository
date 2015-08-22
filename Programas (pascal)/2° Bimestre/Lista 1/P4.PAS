uses crt;                     {by Matheus Portolan}

type
vetor1= array [1..10] of integer;
vetor2= array [1..10] of integer;
vetor3= array [1..20] of integer;

var
x:vetor1;
y:vetor2;
z:vetor3;
a,b,c,t:integer;

begin
   clrscr;
   writeln('Digite 10 valores para o vetor 1:');
   for a:=a+1 to 10 do
      read(x[a]);
   a:=0;
   writeln('Digite 10 valores para o vetor 2:');
   for a:=a+1 to 10 do
      read(y[a]);
   repeat
      t:=0;
      c:=1;
      b:=b+1;
      for t:=t+1 to 10 do
        begin
           if x[b]>x[t] then
             c:=c+1;
           if x[b]>y[t] then
             c:=c+1;
        end;
      z[c]:=x[b];
      t:=0;
      c:=1;
      for t:=t+1 to 10 do
        begin
           if y[b]>x[t] then
             c:=c+1;
           if y[b]>y[t] then
             c:=c+1;
        end;
      z[c]:=y[b];
   until b=10;
   a:=0;
   writeln('Ordem Crescente:');
   for a:=a+1 to 20 do
     if z[a]<>0 then
       begin
          if a=20 then
          write(z[a],';') else
          write(z[a],',');
       end;
   readkey;
end.






