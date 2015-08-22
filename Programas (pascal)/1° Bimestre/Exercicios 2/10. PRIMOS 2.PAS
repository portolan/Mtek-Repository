uses crt;             {10. Algoritmo para mostrar numeros primos entre 1 e N}
                                  {by Matheus Portolan}
var
x,y,z,b:integer;

begin
    clrscr;
    writeln('Digite um numero inteiro positivo:');
    read(y);
    if (y<=0) then
      writeln('Numero invalido.') else
    begin
       writeln(' ');
       write('Numeros primos entre 1 e ',y,': ');
       repeat
          x:= x+1;
          b:=0;
          z:=1;
          for z:= z+1 to (x-1) do
            begin
               if x mod z = 0 then
                 b:=1;
            end;
          if (b<>1) and (x<>1) then
            write(x,';');
       until (x= y-1);
    end;
    readkey;
end.