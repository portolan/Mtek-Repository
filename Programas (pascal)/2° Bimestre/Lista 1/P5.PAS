uses crt;                            {by Matheus Portolan}

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
   writeln('Digite os valores do vetor 1:');
   for a:=a+1 to 10 do
     read(x[a]);
   a:=0;
   writeln('Digite os valores do vetor 2:');
   for a:=a+1 to 10 do
     read(y[a]);
   a:=0;
   writeln('Diferenca:');
   for a:=a+1 to 10 do
     begin
        z[a]:=((x[a])-(y[a]));
        write(z[a],',');
     end;
   writeln(' ');
   a:=0;
   writeln('Soma:');
   for a:=a+1 to 10 do
     begin
        z[a]:=x[a]+y[a];
        write(z[a],',');
     end;
   writeln(' ');
   a:=0;
   writeln('Produto:');
   for a:=a+1 to 10 do
     begin
        z[a]:=x[a]*y[a];
        write(z[a],',');
     end;
   writeln(' ');
   a:=0;
   writeln('Uniao:');
   for a:=a+1 to 20 do
     z[a]:=0;
   c:=10;
   a:=0;
   for a:=a+1 to 10 do
     begin
        t:=0;
        b:=0;
        for b:=b+1 to 10 do
          begin
             if x[a]<>y[b] then
               t:=t+1;
             z[b]:=y[b];
          end;
        if t=10 then
          begin
             c:=c+1;
             z[c]:=x[a];
          end;
     end;
   c:=0;
   for c:=c+1 to 20 do
     if z[c]<>0 then
       write(z[c],',');
   writeln(' ');
   a:=0;
   for a:=a+1 to 20 do
     z[a]:=0;
   a:=0;
   b:=0;
   c:=0;
   for a:=a+1 to 10 do
     begin
        b:=0;
        for b:=b+1 to 10 do
          if x[a]=y[b] then
            begin
               c:=c+1;
               z[c]:=x[a];
            end;
     end;
   t:=0;
   writeln('Interseccao:');
   for t:=t+1 to 20 do
     if z[t]<>0 then
       write(z[t],',');
   readkey;
end.












