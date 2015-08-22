uses crt;                           {Exercicio 1}
                                   {by Matheus Portolan}
var
x,y,a,np,nn,b:integer;
media,nz,pz,py,ny:real;

begin
    clrscr;
    writeln('Digite um numero indeterminado valores: (0 encerra)');
    y:=0;
    a:=0;
    repeat
       read(x);
       if x=0 then
         b:=0 else
           begin
              if (x>0) then
                np:= np+1;
              if (x<0) then
                nn:= nn+1;
              a:= a+1;
              y:= x+(y);
           end;
    until x=0;
    media:= y/a;
    nz:= (np/(np+nn))*100;
    pz:= (nn/(np+nn))*100;
    writeln(' ');
    writeln('A media dos valores digitados e: ',media:5:3);
    writeln('Voce digitou ',np,' numeros positivos.');
    writeln('Voce digitou ',nn,' numeros negativos.');
    writeln(' ');
    writeln('Porcentagem de numeros positivos: ',nz:6:2,'%');
    writeln('Porcentagem de numeros negativos: ',pz:6:2,'%');
    readkey;
end.
