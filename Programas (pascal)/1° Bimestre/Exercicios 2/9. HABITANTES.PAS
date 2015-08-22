uses crt;     {9. Algoritmo que mostra algumas estatisticas sobre habitantes}
                                {by Matheus Portolan}
var
sexo:char;
olhos:char;
cabelo:string;
idade:integer;
x,y,z:integer;

begin
    clrscr;
    x:=0;
    y:=0;
    repeat
       writeln('Digite sua Idade: ');
       readln(idade);
       writeln(' ');
       if (idade<>-1) then
         begin
           writeln('Digite qual a cor do seu olho:');
           writeln('OBS:(V para Verde; A para Azul; C para Castanho;)');
           readln(olhos);
           writeln(' ');
           writeln('Digite qual a cor do seu cabelo:');
           writeln('(L para Louros; C para Castanhos; P para Pretos;)');
           readln(cabelo);
           writeln(' ');
         end;
       if idade>x then
         x:=idade;
       if (idade>17) and (idade<36) then
         begin
            if (olhos= 'V') or (olhos= 'v') then
              begin
                 if (cabelo='L') or (cabelo='l') then
                 y:= y+1;
              end;
         end;
    until (idade=-1);
    writeln('A maioridade dos habitantes e de ',x,' anos.');
    writeln('A quantidade de mulheres cuja a idade esta entre 18 e 35');
    writeln('e que tem olhos verdes e cabelos louros e de ',y,' habitantes');
    readkey;
end.