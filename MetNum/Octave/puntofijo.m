%function raiz=puntofijo
clc;
x0=1

g=@(x) sqrt(15/x)

%g=@(x) -3/(x-5)

n=10;
x=x0;
for k=1:n
    x1=x;
    
    x=g(x);
    
    error=abs(x1-x);

fprintf('%d       %.6f     %.2e \n',k,x,error)
end

raiz=x;

fprintf('número de iteraciones son n=%d \n con un valor aprox  de %.6f  con un error de %.2e \n',n,raiz,error)
