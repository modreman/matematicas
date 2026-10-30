%Métodos Numéricos
%Método de Newton
clc

f=@(x) x^2-2;
df=@(x) 2*x;

x0=1

n=5;
x=x0;
fprintf('k    raiz       error   \n')
for k=1:n
    x1=x;
    x=x-(f(x)/df(x));

error=abs(x1-x);

fprintf('%d %.5f     %.2e \n',k,x,error)
end

raiz=x;

fprintf('número de iteraciones son n=%d \n con un valor aprox  de %.5f  con un error de %.2e \n',n,raiz,error)
