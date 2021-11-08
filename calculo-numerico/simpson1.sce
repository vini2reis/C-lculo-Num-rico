clear;
clc;
p1=acos(-1);
format(16)


a=0;
b=(%pi) / 2;



function [f]=my(x)
    f = sqrt(x+1)*sin(x)*cos(x);
endfunction


X=linspace(a,b,100);





for i=1:100
    [Y(i)]=my(X(i));
end


figure(1);
plot(X,Y,'k');
xlabel('x');
ylabel('y');



n=42;
/*xT=linspace(a,b,n);
hT=xT(2)-xT(1);
for i=1:n
    [yT(i)]=my(xT(i));
end


IT(1)=yT(1);
IT(n)=yT(n);

S=0;
for i=2:n-1
    IT(i)=2*yT(i);
    S=S+IT(i);
end

TRAP=hT*(IT(1)+S+IT(n))/2;

printf('TRAP=%f \n ', TRAP)


hT = (b-a)/(n-1)  
  xT = linspace(a,b,n);  
  y = my(xT(1));  
  for i = 1:n-1  
    y = y + 2*my(xT(2*i+1));  
  end  
  for i = 1:n  
    y = y + 4*my(xT(2*i));  
  end  
  y = y + my(xT(n));  
  y = hT*y/3;
  
  printf('SIMP=%f \n ', y);*/
  
  
  hT = (b-a)/n  
  soma = 0;   
  for i = 1:n-1
      xx = a+i*hT;
      if modulo(i,2)==0
          soma=soma+2*my(xx);
      else
          soma=soma+4*my(xx);
      end  
  end    
  y = (hT/3)*(my(a)+my(b)+soma);
  
  printf('SIMP=%f \n ', y);
  
  
