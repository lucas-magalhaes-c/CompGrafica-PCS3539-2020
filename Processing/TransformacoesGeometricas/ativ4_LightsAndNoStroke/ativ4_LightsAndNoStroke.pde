size (500,500, P3D); // coloca o Processing em modo 3D
lights();
noStroke();

//Cria esfera do centro e guarda sistema de coordenadas (SC)
translate(width/2,height/2,0);
fill(255,255,0);
sphere(50);
pushMatrix(); //guarda sistema de coordenadas (SC)

//Translada para a esquerda, rotaciona 30 graus para a esquerda e cria uma caixa
translate(-width/4,0,0);
rotateY(radians(-30));
fill(255,0,0);
box (100,100,100);

//Translada para cima e cria uma esfera de mesmo raio que a primeira
translate(0,-100,0);
fill(0,255,0);
sphere(50);

//Translada para cima e cria uma esfera de raio menor que a primeira
translate(0,-75,0);
fill(0,0,255);
sphere(25);

//Retorna ao sistema de coordenadas salvo, translada para a direita e cria uma esfera igual a primeira
popMatrix();
translate(width/4,0,0);
fill(255,0,0);
sphere(50);

//Translada para cima, rotaciona 30 graus em Y e cria uma caixa igual a primeira que foi criada
translate(0,-100,0);
rotateY(radians(30));
fill(0,255,0);
box(100,100,100);

//Translada para cima e cria uma caixa de lado menor que a primeira caixa
translate(0,-75,0);
fill(0,0,255);
box(50,50,50);
