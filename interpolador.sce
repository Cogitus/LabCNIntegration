// codigo que desenha o polinômio que interpola o perfil da garrafa. Antes de utilizar, execute interpolador_lagrange.sce
// após executado, use plot (x_plot, y_plot) no console do scilab 


x_aux = [3.1264505 5.0558366 6.9429733 8.7737777 10.660914 12.449469 14.266191 16.068829 17.843301 19.674105] // 10 primeiros pontos de x_pontos_cm

y_integracao = [3.0842011 3.2672816 2.7602896 2.9011207 3.323614 3.4081127 3.3376971 2.9856194 2.5349598 3.323614] //vetor igual a  y_pontos_de_integracao_cm

for i=1:1:100
    x_plot(i) = x_aux(1)+(( x_aux(10) - x_aux(1) )*(i/92)) ; // anda-se de centésimo a centésimo, partindo do x_aux(1) até o x_aux (10). Isso                                                     // ocorre pra interpolação ter pontos suficientes pra ficar mais "suave"
    y_plot(i) = interpolacao_lagrange(x_aux, y_integracao, x_plot(i));
end


