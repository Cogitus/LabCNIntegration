function area = integralSimpson2(a, b, n)
    h = (b-a)/n;
    x = a:h:b;
    y = y_pontos_de_integracao;
    area = y(1)+y(n+1);
    for i=2:1:n
        if modulo(i, 3) == 1 then
            area = area + 2*y(i);
        end
        if modulo(i, 3) == 2 | modulo(i, 3) == 0 then
            area = area + 3*y(i);
        end
    end
    area = 3/8*h*area;   
endfunction
