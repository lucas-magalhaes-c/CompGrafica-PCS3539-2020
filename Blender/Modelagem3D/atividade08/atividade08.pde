void setup() {
  // prepara a janela para visualização 3D
  size(400, 400, P3D);
}

void draw() {
  // configura câmera, projeção perspectiva e luzes 
  background(0);
  camera(0, 0, 20, 0, 0, 0, 0, 1, 0);
  perspective(PI/2, 1.0, 0.1, 100);
  lights();
  fill(255);
  // aplica transformações de rotação conforme a posição do mouse
  rotateY(map(mouseX, 0, width, PI/2, -PI/2));
  rotateX(map(mouseY, 0, height, -PI/2, PI/2));
  // desenha a malha de triângulos
  beginShape(TRIANGLES);
  //vertex(0, 0, 0);
  //vertex(2, 0, 0);
  //vertex(0, 2, 0);
  
  //vertex(2, 2, 0);
  //vertex(2, 0, 0);
  //vertex(0, 2, 0);
  
  //vertex(2, 4, 0);
  //vertex(2, 2, 0);
  //vertex(0, 2, 0);
  
  //vertex(2, 4, 0);
  //vertex(2, 2, 0);
  //vertex(0, 4, 0);
  
  
  vertex(0, 0, 0);
  vertex(2, 0, 0);
  vertex(0, 2, 0);
  vertex(2, 2, 0);
  vertex(0, 4, 0);
  vertex(2, 4, 0);
  
  vertex(4, 2, 0);
  vertex(2, 4, 0);
  vertex(4, 4, 0);
  
  
  //vertex(0, -5, 0);
  //vertex(-5, -5, 0);
  //vertex(0, 0, 0);
  //vertex(5, 0, 0);
  //vertex(0, 5, 0);
  endShape();
}
