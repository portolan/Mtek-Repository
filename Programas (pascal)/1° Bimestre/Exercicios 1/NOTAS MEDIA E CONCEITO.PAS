uses crt;

var
x,y,z,n,m: real;

begin
     clrscr;
     writeln('Digite a Nota 1:');
     read(x);
     writeln('Digite a Nota 2:');
     read(y);
     writeln('Digite a Nota 3:');
     read(z);
     writeln('Digite a media dos exercicios:');
     read(n);
     m:=(x+(y*2)+(z*3)+n)/7;
     if (x>10) or (y>10) or (z>10) or (n>10) then
     writeln('Favor escrever notas ate 10.')
     else
     begin
         writeln('Resultado:');
         if (m>=9) then
           writeln(m:2:1,' Aprovado ','A');
         if (m>=7.5) and (m<9) then
           writeln(m:2:1,' Aprovado ','B');
         if (m>=6) and (m<7.5) then
           writeln(m:2:1,' Aprovado ','C');
         if (m>=4) and (m<6) then
           writeln(m:2:1,' Reprovado ','D');
         if (m<4) then
           writeln(m:2:1,' Reprovado ','E');
     end;
     readkey;
end.

