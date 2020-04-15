void setup() {
  size(800, 800, P3D); //inicia o modo 3D
  noStroke();

  //centraliza o sistema de coordenadas
  translate (width/2, height/2);
  pushMatrix();
}

void draw() {
  popMatrix();
  background(0); // fundo preto
  
  lights(); // inclui iluminação básica na cena

  fill(255, 255, 0); // preenchimento amarelo

  //centraliza o sistema de coordenadas
  rotateX (radians(1)); //aplica rotacao de 1 grau no eixo X
  rotateY (radians(2)); //aplica rotacao de 2 graus no eixo Y
  box(100); 
  pushMatrix();
}
