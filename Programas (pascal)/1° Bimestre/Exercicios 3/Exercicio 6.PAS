uses crt;                         {Exercicio 6}
                              {by Matheus Portolan}
var x,y,z,a,b,np,ni: integer;
mp,mg: real;

begin
    clrscr;
    np:=0;
    ni:=0;
    y:=0;
    z:=0;
    a:=0;
    b:=0;
    writeln('Digite somente valores positivos:');
    repeat
        read(x);
        if (x<>0) and (x>0) then
          begin
             a:=a+1;
             b:= b+x;
             if (x mod 2)= 0 then
               begin
                 np:= np+1;
                 y:= x+y;
                 z:= z+1;
               end else
                 ni:= ni+1;
          end;
    until (x=0);
    if (np>0) then
      mp:= y/np;
    mg:= b/a;
    writeln('Voce digitou ',np,' numeros pares.');
    writeln(' ');
    writeln('Voce digitou ',ni,' numeros impares.');
    writeln(' ');
    writeln('A media dos numeros pares digitados e: ',mp:5:2);
    writeln(' ');
    writeln('A media dos numeros digitados e: ',mg:5:2);
    readkey;
end.

