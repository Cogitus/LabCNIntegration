 é <>// As coordenadas aqui apresentadas sao aquelas que se encontram na imagem marcada.
// (x_pontos,y_pontos) são as coordenadas de cada ponto da imagem.
// centimetros é um vetor que representa a coordenada x de cada ponto em relação a régua
// Deve-se lembrar que, dado a origem do sistema de eixos, os pontos estão nos locais certos
// para iniciar o processo de interpolação e integração, sendo necessário apenas a subtração
// da coordenada y desses pela coordenada y do eixo (segundo valor do vetor).
x_pontos = [222 359 493 623 757 884 1013 1141 1267 1397 1526]
y_pontos = [548 561 525 535 565 571 566 541 509 565 582]

centimetros = [0 1.8 3.6 5.4 7.2 9 10.8 12.6 14.4 16.2 18.0]

eixo = [111 329]


/*
O ponto sobre o centímetro 19 é [1597 605], enquanto aquele sobre 20 centímetros 
é [1668 606], logo teremos a reta de comprimento sqrt( (1668-1597)² + (606-605)² )
relativo a um centímetro.
Isso nos leva à relação de 71.007042 pixel/cm. Podemos arredondar para 71 pixel/cm
*/
