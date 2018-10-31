function tabela = diff_div(x,y) //vetores coluba x e y dos pares de pontos
    comprimento = length(x);
    tabela(:,1) = y; //diferencas divididas de ordem zero
    for i = 1: 1: comprimento-1 //as colunas se referem ao grau da diferença dividida. 
                      //Com n pontos temos grau máximo igual a n-1
        for j = 1: 1: comprimento-i 
            tabela(j,i+1) = (tabela(j+1,i)-tabela(j,i))/(x(j+i)-x(j));
        end
    end
endfunction
