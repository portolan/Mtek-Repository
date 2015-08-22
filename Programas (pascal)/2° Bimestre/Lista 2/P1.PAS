uses crt;                         {by Matheus Portolan}

procedure operacao (var x,y:integer; op: char);

var
resultado: Integer;
divisao:real;

begin
   if op='+' then
     resultado:=x+y;
   if op='-' then
     resultado:=x-y;
   if op='*' then
     resultado:=x*y;
   if op='/' then
     begin
        divisao:=x/y;
        writeln(divisao:5:2);
     end else
       writeln(resultado);
end;

var
a,b:integer;
p:char;

begin
   clrscr;
   writeln('Digite 2 numeros:');
   readln(a);
   readln(b);
   writeln('Digite o operador:');
   readln(p);
   writeln('Resultado:');
   operacao(a,b,p);
   readkey;
end.
