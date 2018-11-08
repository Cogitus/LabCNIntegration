// para cada curva aproximante (parábola ou reta), gera-se 10 pontos

x_aux = [3.1264505 5.0558366 6.9429733 8.7737777 10.660914 12.449469 14.266191 16.068829 17.843301 19.674105] // 10 primeiros pontos de x_pontos_cm

y_integracao = [3.0842011 3.2672816 2.7602896 2.9011207 3.323614 3.4081127 3.3376971 2.9856194 2.5349598 3.323614] //vetor igual a  y_pontos_de_integracao_cm


// 1 3 5 7

for i = 1: 2 :7
    x_intermediario = [x_aux(i) x_aux(i+1) x_aux(i+2)]
    y_intermediario = [y_integracao(i) y_integracao(i+1) y_integracao(i+2)]
    for j = 1:1:10
        x_plotNewton(j) = x_aux(i)+(( x_aux(i+2) - x_aux(i) )*(j/10)) ;
        y_plotNewton(j) = interpolacaoNewton(x_intermediario, y_intermediario, x_plotNewton(j));
        plot(x_plotNewton,y_plotNewton);
    end
end
