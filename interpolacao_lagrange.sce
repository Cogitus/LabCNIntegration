function saida = interpolacao_lagrange(x, y, p) // pares de pontos (x,y) e ponto x a ser avaliado
    comprimento = length(x);
    soma = 0;
    for i = 1:1:comprimento
        L = 1;
        for j = 1: 1: comprimento
            if(i~=j)
                L = L*(p-x(j))/(x(i)-x(j));
            end
        end
    soma = soma + L*y(i);
    end
    saida = soma;
endfunction
