uses crt;                         {Exercicio 3}
                                {by Matheus Portolan}
var x,q,c,y,z,a: integer;
rq: real;

begin
    a:=2;
    clrscr;
    z:=20;
    repeat
       read(x);
       if x<=0 then
         z:= z+0 else
           begin
              c:= x*x*x;
              q:= x*x;
              rq:=sqrt(x);
              while z=20 do
                begin
                   z:= -20;
                   writeln('| Valor | Valor ao quadrado | Valor ao Cubo | Raiz Quadrada |');
                end;
              if z<20 then
                z:= z+1;
              a:=a+1;
              gotoxy(5,a);
              write(x);
              gotoxy(18,a);
              write(q);
              gotoxy(37,a);
              write(c);
              gotoxy(52,a);
              writeln(rq:1:2);
           end;
    until (x<=0);
    readkey;
end.
