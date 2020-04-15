Planet redPlanet = new Planet();
Planet bluePlanet = new Planet();


void setup() {
  size(800, 800, P3D); //inicia o modo 3D
  
  noStroke();
   
  translate (width/2, height/2);
  pushMatrix();
  
  redPlanet.setup(290, 2, 40, 255, 0, 0);
  bluePlanet.setup(150, 4, 15, 0, 0, 255);
 
}

void draw() {
  background(0); // fundo preto
  popMatrix();
  pushMatrix();
  
  lights(); // inclui iluminação básica na cena

  fill(255, 255, 0); // preenchimento amarelo
  //rotateY(radians(map(mouseX,0,width,0,360)));
  //rotateX(radians(map(mouseY,0,width,0,360)));
  
  sphere(80); 
   
  redPlanet.run();
  bluePlanet.run();
  
}

class Planet {
  float Z_rot = 0;
  float r = 100;
  float degree_change = 1;
  int R_color = 120;
  int G_color = 120;
  int B_color = 120;
  float size = 50;
  boolean getPreviousMatrix = true;
  boolean initialPush = false;
  boolean initialPop = false;
  
  void setup(float r, 
             float degree_change, 
             float size, 
             int R_color, 
             int G_color, 
             int B_color
             ){
               
    this.r = r;
    this.degree_change = degree_change;
    this.R_color = R_color;
    this.G_color = G_color;
    this.B_color = B_color;
    this.size = size;
  }
  
  void setGetPreviousMatrix(boolean bool){
    this.getPreviousMatrix = bool;
  }
  
  void setInitialPop(boolean bool){
    this.initialPop = bool;
  }
  
  void setInitialPush(boolean bool){
    this.initialPush = bool;
  }
 
  void run(){
    if(this.getPreviousMatrix == true){
      popMatrix();
      pushMatrix();
    }
      else{
        if(this.initialPush){
        pushMatrix();
      }
      
      if(this.initialPop){
        popMatrix();
      }
    }

    if(this.Z_rot == 360){
      this.Z_rot = 0;
    }
    
    translate(cos(radians(this.Z_rot)) * this.r,sin(radians(this.Z_rot)) * this.r);
    this.Z_rot += this.degree_change;
    
    fill(R_color,G_color,B_color);
    sphere(this.size);
  }
}
