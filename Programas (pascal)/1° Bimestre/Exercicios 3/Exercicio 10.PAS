uses crt;                     {Exercicio 10}
                           {by Matheus Portolan}
var idade,sexo,salario,mi,ni,mss,x,y,z: integer;
media: real;

begin
    clrscr;
    ni:=200;
    repeat
       write('Digite sua idade: ');
       readln(idade);
       while idade>0 do
         begin
            writeln('Digite seu sexo (1 para masculino e 2 para feminino):');
            read(sexo);
            writeln('Digite o valor do seu salario: ');
            read(salario);
            x:=salario+x;
            y:=y+1;
            if idade>mi then
              mi:=idade;
            if idade<ni then
              ni:=idade;
            if (sexo=2) and (salario<724) then
              mss:= mss+1;
            idade:=0;
         end;
    until idade<0;
    media:= (x/y);
    writeln(' ');
    writeln('A media dos salarios digitados e: ',media:5:2);
    writeln('Maioridade: ',mi);
    writeln('Menoridade: ',ni);
    writeln('Mulheres que ganham salario de ate 724 reais: ',mss);
    readkey;
end.

