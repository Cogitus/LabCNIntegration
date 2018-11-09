// para cada curva aproximante (parábola ou reta), gera-se 10 pontos

x_aux = [3.1264505 5.0558366 6.9429733 8.7737777 10.660914 12.449469 14.266191 16.068829 17.843301 19.674105] // 10 primeiros pontos de x_pontos_cm

y_integracao = [3.0842011 3.2672816 2.7602896 2.9011207 3.323614 3.4081127 3.3376971 2.9856194 2.5349598 3.323614] //vetor igual a  y_pontos_de_integracao_cm


//primeira parábola:

for j = 1: 1: 10
    x_intermediario = [x_aux(1) x_aux(2) x_aux(3)]
    y_intermediario = [y_integracao(1) y_integracao(2) y_integracao(3)]
    x_parab1(j) = x_intermediario(1)+(( x_intermediario(length(x_intermediario)) - x_intermediario(1) )*(j/10)) ;
    y_parab1(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_parab1(j));
end

//segunda parábola

for j = 1: 1: 10
    x_intermediario = [x_aux(3) x_aux(4) x_aux(5)]
    y_intermediario = [y_integracao(3) y_integracao(4) y_integracao(5)]
    x_parab2(j) = x_intermediario(1)+(( x_intermediario(length(x_intermediario)) - x_intermediario(1) )*(j/10)) ;
    y_parab2(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_parab2(j));
end

//terceira parábola:

for j = 1: 1: 10
    x_intermediario = [x_aux(5) x_aux(6) x_aux(7)]
    y_intermediario = [y_integracao(5) y_integracao(6) y_integracao(7)]
    x_parab3(j) = x_intermediario(1)+(( x_intermediario(length(x_intermediario)) - x_intermediario(1) )*(j/10)) ;
    y_parab3(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_parab3(j));
end

//quarta parábola:

for j = 1: 1: 10
    x_intermediario = [x_aux(7) x_aux(8) x_aux(9)]
    y_intermediario = [y_integracao(7) y_integracao(8) y_integracao(9)]
    x_parab4(j) = x_intermediario(1)+(( x_intermediario(length(x_intermediario)) - x_intermediario(1) )*(j/10)) ;
    y_parab4(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_parab4(j));
end

// reta final

for j = 1: 1: 10
    x_intermediario = [x_aux(9) x_aux(10)]
    y_intermediario = [y_integracao(9) y_integracao(10)]
    x_reta(j) = x_intermediario(1)+(( x_intermediario(length(x_intermediario)) - x_intermediario(1) )*(j/10)) ;
    y_reta(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_reta(j));
end

// composicao do vetor de posicoes final

for i = 1:1:50
    if i<=10 then
        x_plotNewton(i) = x_parab1(i);
        y_plotNewton(i) = y_parab1(i);
    elseif i<=20
        x_plotNewton(i) = x_parab2(i-10);
        y_plotNewton(i) = y_parab2(i-10);
    elseif i<=30
        x_plotNewton(i) = x_parab3(i-20);
        y_plotNewton(i) = y_parab3(i-20);
    elseif i<=40
        x_plotNewton(i) = x_parab4(i-30);
        y_plotNewton(i) = y_parab4(i-30);
    else
        x_plotNewton(i) = x_reta(i-40);
        y_plotNewton(i) = y_reta(i-40);
    end
end
