function area = integralSimpson(a, b, n)
    h = (b-a)/n;
    x = a:h:b;
    y = y_pontos_de_integracao_cm.^2;
    area = y(1)+y(n+1);
    for i=2:1:n
        if modulo(i, 2) == 0
            area = area + 2*y(i);
        else
            area = area + 4*y(i);
        end
    end
    area = h/3*area;
endfunction
