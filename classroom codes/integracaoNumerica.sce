function I = trapezio(a, b, n)
    h = (b-a)/n;        //tamanho do meu subtintervalo
    x = a:h:b;
    y = y_pontos_de_integracao
      //é um vetor x que varia de 'a' até 'b' em um passo h (tamanho de subintervalos)
    //declarando minha função que basicamente é um vetor cujo domínio é x! 
    //aqui começa minha estrutura de repetição (para isso preciso de um acumulador)
    I = y(1);           //inicializo logo com o primeiro termo de y!  
    for i = 1:n         //é até n porque o 
        I = I + 2*y(i); //2*y(i) por conta do próprio algoritmo do trapézio.
    end
    I = h/2*(I + y(n+1));//também saí pela própria fórmula do trapézio.   
endfunction
