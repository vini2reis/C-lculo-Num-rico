

clear
clc
format(16)
n=5;
m=3;









X=[25.03;27.03;28.33;29.51;31.57];
Y=[1.227;1.251;1.262;1.259;1.234];










for i=1:n
    for j=1:m+1
        A(i,j)=X(i) ^ (j-1);
    end
end

x=inv(A' *A)*A' *Y;




for i=1:n
    S=0;
    for j=1:m+1
        S=S+x(j)*X(i)^(j-1);
    end
    YY(i)=S;
end

k=100;


xx=linspace(X(1),X(n),k);
for i=1:k
    S=0;
    for j=1:m+1
        S=S+x(j)*xx(i)^(j-1);
    end
    Ya(i)=S;
end


//plot(X,Y,' m',xx,Ya,'b');


//xv=-x(2)/(2*x(3));
//yv=x(3)*xv^2 + x(2)*xv+x(1);

//printf('xv=%f \n ',xv)
//printf('yv=%f \n ',yv)


S=0;
for i=1:n
    S=S+Y(i);
end
ym=S/n;
SM=0;
SN=0;
for i=1:n
    SM=SM+(Y(i)-ym)^2;
    SN=SN+(Y(i)-YY(i))^2;
end

R2=1-SN/SM;
printf('R2=%f \n ',R2)
printf('X=%f \n ',x)
//printf('xv=%f \n ',xv)
//printf('yv=%f \n ',yv)
