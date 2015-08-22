uses crt;            {BONUS. Algoritmo da urna} {HACKEADA para o Candidato 3}
                           {by Matheus Portolan}
 {A cada 3 votos em outros candidatos o candidato 3 recebe 1 voto}

var
x,vcc1,vcc2,vcc3,vcc4,vn,vb,y:integer;

begin
    clrscr;
    repeat
    read(x);
    if (x=1) then
      begin
         vcc1:=vcc1+1;
         writeln('Voce votou no candidato 1.');
         y:=y+1;
      end;
    if (x=2) then
      begin
         vcc2:=vcc2+1;
         writeln('Voce votou no candidato 2.');
         y:=y+1;
      end;
    if (x=3) then
      begin
         vcc3:=vcc3+1;
         writeln('Voce votou no canditado 3.');
      end;
    if (x=4) then
      begin
         vcc4:=vcc4+1;
         writeln('Voce votou no canditado 4.');
         y:=y+1
      end;
    if (y>=3) then
      begin
         vcc3:= vcc3+1;
         y:=0;
      end;
    if (x=5) then
      begin
         vn:=vn+1;
         writeln('Voce votou nulo.');
      end;
    if (x=6) then
      begin
         vb:=vb+1;
         writeln('Voce votou branco.');
      end;
    if (x<>1) and (x<>2) and (x<>3) and (x<>4) and (x<>5) and (x<>6) and (x<>0) then
      writeln('Favor digitar um valor valido.');
    until (x=0);
    writeln('O candidato 1 teve ',vcc1,' votos');
    writeln(' ');
    writeln('O candidato 2 teve ',vcc2,' votos');
    writeln(' ');
    writeln('O candidato 3 teve ',vcc3,' votos');
    writeln(' ');
    writeln('O candidato 4 teve ',vcc4,' votos');
    writeln(' ');
    writeln('Tiveram ',vn,' votos nulos');
    writeln(' ');
    writeln('Tiveram ',vb,' votos brancos');
    readkey;
end.

