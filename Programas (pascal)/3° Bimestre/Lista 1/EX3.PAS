uses crt;               {Funcao Bhaskara by Matheus Portolan}

type
{Tipos}

function funcBhaskara(a,b,c: integer): integer;

var
   delta,x1,x2: real;

begin
   delta:=(b * b) - 4 * a * c;

   if delta<0 then
      funcBhaskara := 0
   else
   begin
      x1 := (-(b) + sqrt(delta)) / (2 * a);
      x2 := (-(b) - sqrt(delta)) / (2 * a);
      
      if ((x1 >= 0) and (x2>=0)) then
      	 funcBhaskara := 3
      else if x1 >= 0 then
     	 funcBhaskara := 1
      else if x2 >= 0 then
	 funcBhaskara := 2; 
   end;
end;

var
   x,y,z: integer;

begin
   clrscr;

   writeln('Digite a,b e c respectivamente:');

   read(x)
   read(y)
   read(z)	
   
   writeln('---------------------');
   write('Resultado:');
   writeln(funcBhaskara(x,y,z));

   readkey;
end.




