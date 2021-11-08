clear;
clc;
p1=acos(-1);
format(16)


a=0;
b=1;



function [f]=my(x)
    f = (x^(1/3)) * %e^(-x^2) ;
endfunction


X=linspace(a,b,100);





for i=1:100
    [Y(i)]=my(X(i));
end


figure(1);
plot(X,Y,'k');
xlabel('x');
ylabel('y');



n=24;


    hT = (b-a)/n  
      soma = 0;   
      for i = 1:n-1
          xx = a+i*hT;
          if modulo(i,3)==0
              soma=soma+2*my(xx);
          else
              soma=soma+3*my(xx);
          end  
      end    
     y = (3*hT/8)*(my(a)+my(b)+soma);

  printf('SIMP=%f \n ', y);
  
  
