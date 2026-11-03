%Métodos Numéricos
function biseccion
clc
a=1;
b=2;
n=10;
format long

f=@(x) x^2-2;
%f=@(x) 2*x-tan(x);
      m=(a+b)/2;
      
     fprintf('n   a   b      m     error   \n') 
     
       error=abs(b-a);
       
     for k=0:n;  
     
     fprintf('%d  %.4f  %.4f %.5f  %.2e \n',k, a,b,m,error)
       
        if f(m)*f(b)<0 
            a=m; 
            else 
                b=m; 
        end
                     m=(a+b)/2;
               
              error=abs(b-a);
          end         
          raiz=m;        
fprintf('número de iteraciones son n=%d \n con un valor aprox  de %.6f  con un error de %.2e \n',n,raiz,error)
end
