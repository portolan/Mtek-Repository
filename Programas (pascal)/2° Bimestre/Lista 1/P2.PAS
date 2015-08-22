uses crt;                       {by Matheus Portolan}

type
valeria= array [1..100] of integer;

var
x:valeria;
y,z,s,vp,vn,a,ve,np:integer;
media:real;

begin
    clrscr;
    a:=1;
    writeln('Digite 100 valores inteiros:');
    for y:=y+1 to 100 do
       begin
          ve:=0;
          a:=1;
          read(x[y]);
          z:=(x[y])+z;
          if ((x[y]) mod 2) = 0 then
            vp:=vp+1;
          if (x[y])<0 then
            vn:=vn+1;
          for a:=a+1 to ((x[y])-1) do
            begin
              if ((x[y]) mod a) = 0 then
                ve:=1;
            end;
          if x[y]<>1 then
            if ve<>1 then
              np:=np+1;
       end;
    media:=z/10;
    writeln('Media Aritmetica:');
    writeln(media:6:2);
    writeln('Soma:');
    writeln(z);
    writeln('Valores pares:');
    writeln(vp);
    writeln('Valores negativos:');
    writeln(vn);
    writeln('Valores primos');
    writeln(np);
    readkey;
end.