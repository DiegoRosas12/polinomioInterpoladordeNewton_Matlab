%Universidad de Guanajuato
%Metodos numericos
%Diego Eduardo Rosas Gonzalez

clear all;
clc;

format rat;
syms x;

n = input('Numero de puntos a ingresar (2-los puntos que desee)\n');

for i=1:n
    fprintf('X%d',i);
    xi(i) = input(':');
    fprintf('Y%d',i);
    y(i) = input(':');
end
fprintf('| i |  x | f(x)|\n');
for i=1:n
    fprintf('| %d | %+d | %+d |\n',i-1,xi(i),y(i));
end
fprintf('\n');
%copiar el vector x
for i=1:n
    cx(i) = xi(i); 
end

k = 1;
a(1) = y(1);
for i=1:n-1
    for j=i:n-1
        if (i==1)
            d1(k) = xi(k+1);
            d2(k) = xi(k);
        else
            d1(k) = d1(k+1);
        end
        r(k) = (y(k+1)-y(k)*(1.0)) / ((d1(k) - d2(k))*(1.0));
        y(k) = r(k);
        k = k+1;
    end
    k = 1;
    a(i+1) = r(1);
end

for i=1:n
    fprintf('a%d = %f\n',i-1,a(i));
end
fprintf('\n%.4f + ',a(1));
for i=1:n-1
    fprintf('%.4f',a(i+1));
    for k=1:i
    fprintf('(x%+d)',cx(k)*(-1));
    end
    fprintf(' + ');
end
fprintf('\n');
r = 0;
m = 1;
for i=1:n
    if (i==1)
        m=1;
    else
    for k=1:i-1
       m = m*(x-cx(k)); 
    end
    end
    r = r + (a(i)*m);
    m=1;
end
R = simplify(r);
pretty(R);