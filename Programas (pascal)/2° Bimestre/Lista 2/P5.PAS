uses crt;                     {by Matheus Portolan}

type
vetor1= array [1..50] of integer;
vetor2= array [1..100] of integer;

procedure intercalar (x,z: vetor1;var d:vetor2);

var
a,b,c,r,v:integer;
h:vetor1;

begin
   r:=0;
   a:=0;
   b:=0;
   for r:=r+1 to 100 do
     begin
        if (r mod 2)=0 then
          begin
             a:=a+1;
             d[r]:=z[a];
          end else
               begin
                  b:=b+1;
                  d[r]:=x[b];
               end;
     end;
end;

var
a1,b1,c1:integer;
f,g:vetor1;
y:vetor2;

begin
   clrscr;
   a1:=51;
   writeln('Digite 50 valores para o Vetor 1:');
   for a1:=a1-1 downto 1 do
     read(f[a1]);
   a1:=0;
   writeln('Digite 50 valores para o Vetor2:');
   for a1:=a1+1 to 50 do
     read(g[a1]);
   intercalar(f,g,y);
   a1:=0;
   writeln('Resultado:');
   for a1:=a1+1 to 100 do
     writeln(y[a1]);
   readkey;
end.