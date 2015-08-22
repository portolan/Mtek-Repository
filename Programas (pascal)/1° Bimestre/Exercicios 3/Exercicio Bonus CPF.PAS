uses crt;                            {Exercicio 11}
var x,y,a3,a4,a5,a6,b,c: real;      {by Matheus Portolan}
h,f,l,p,v,resto,resto2,mn:integer;
a7,a:longint;

begin
    clrscr;
    h:=11;
    a3:=10000;
    a4:=1;
    a6:=100;
    a7:=0;
    f:=0;
    l:=10;
    write('Digite seu CPF: ');
    readln(x);
    repeat
       f:=f+1;
       a7:=0;
       if f=2 then
         begin
            a6:=100;
            l:=11;
            h:=12;
            a7:=0;
            mn:=0;
         end;
       repeat
          h:= h-1;
          a7:= a7*10;
          if (h=2) and (f=2) then
            a:=resto else
              begin
                 y:=x/(a3/a4);
                 b:=y/(a3/a4);
                 c:=b/(a3/a6);
                 a:=(trunc(c));
                 if a6<>1 then
                   a6:=a6*10;
                 if h=l then
                   a7:= a7+a;
                 if h<=(l-1) then
                   begin
                      a:= (a-a7);
                      a7:= (a7+a);
                   end;
              end;
          mn:=mn+(a*h);
       until h=2;
       if f=1 then
         begin
            if (mn mod 11)<=2 then
              resto:=0 else
                resto:= 11-(mn mod 11);
         end;
       if f=2 then
         begin
         if (mn mod 11)<=2 then
           resto2:=0 else
             resto2:= 11-(mn mod 11);
         end;
    until f=2;
    p:=trunc((frac(x/100)+0.001)*100);
    v:=(resto*10)+resto2;
    writeln(' ');
    if v<>p then
      writeln('CPF Invalido') else
        writeln('CPF Valido');
    readkey;
end.