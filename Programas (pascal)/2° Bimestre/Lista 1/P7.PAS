uses crt;                      {by Matheus Portolan}

type
vetor1= array [1..80] of integer;

var
x:vetor1;
a,b,c,t,n,ordem:integer;

begin
   clrscr;
   writeln('Digite 80 valores:');
   for a:=a+1 to 80 do
     read(x[a]);
   a:=0;
   for a:=a+1 to 80 do
     begin
        for b:=b+1 to 80 do
          begin
             if x[a]<=x[b] then
             c:=c+1;
          end;
        if c=80 then
          begin
             n:=x[a];
             ordem:=a;
          end;
        b:=0;
        c:=0;
     end;
   write('Menor numero: ');
   writeln(n);
   write('Numero de ordem do menor numero: ');
   writeln(ordem);
   readkey;
end.