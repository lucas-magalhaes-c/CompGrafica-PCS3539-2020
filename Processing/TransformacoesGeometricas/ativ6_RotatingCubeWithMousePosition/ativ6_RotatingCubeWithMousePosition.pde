void setup() {
  size(800, 800, P3D); //inicia o modo 3D
  noStroke();
  
}

void draw() {

  background(0); // fundo preto
  
  lights(); // inclui iluminação básica na cena

  fill(255, 255, 0); // preenchimento amarelo
  translate (width/2, height/2);
  rotateY(radians(map(mouseX,0,width,0,360)));
  rotateX(radians(map(mouseY,0,width,0,360)));
  
  box(100); 

}
