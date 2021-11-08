clear;
clc;
p1=acos(-1);
format(16)


a=0;
b=%pi / 2;



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



n=43;
xT=linspace(a,b,n);
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
