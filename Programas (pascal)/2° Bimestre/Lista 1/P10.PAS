uses crt;                              {by Matheus Portolan}

type
vetor1= array [1..100] of integer;

var
x:vetor1;
a,b,c,t,v,y:integer;

begin
   clrscr;
   writeln('Digite um sequencia de 5 valores diferentes:');
   for b:=b+1 to 5 do
     readln(x[b]);
   for c:=c+1 to 5 do
     begin
        t:=c;
        for y:=y+1 to 20 do
          begin
             t:=t+5;
             x[t]:=x[c];
          end;
        t:=0;
        y:=0;
     end;
   a:=0;
   writeln('Vetor completo:');
   for a:=a+1 to 100 do
     begin
        if v=5 then
          v:=0;
        v:=v+1;
        textcolor(v);
        write(x[a],';');
     end;
   readkey;
end.