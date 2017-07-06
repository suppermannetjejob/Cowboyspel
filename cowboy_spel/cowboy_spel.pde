PImage cowboy;
PImage cowboy2;
float x5 = 200;
float x4 = 1400;
float y2 = 0;
float x2 = 0;
float x3 = 0;
float y3 = 0;
float x  = 0; 
float y  = 0;
float y5 = 0;
boolean schot1 =false;
boolean schot2 =false;
void setup() {
  size(2000, 1000);
}

  void draw() {
    background(0, 0, 150);
    fill(0, 250, 0);
    rect(0, 750, 2000, 1000);

    cowboy = loadImage("can-stock-photo_csp11151007.png");
    cowboy.resize(200, 200);
    image(cowboy, x+1400, y+550);

    cowboy2 = loadImage("depositphotos_40618539-stock-illustration-cartoon-cowboy-drawing-guns.png");
    cowboy2.resize(200, 200);
    image(cowboy2, x2+0, y2+550); 

    rect(790, 0, 10, 10000);
    
    if( schot2 == true){
      println("test");
      ellipse(x4,600,14,14);
      x4 = x4 - 50;
    }
    if (x4 <0) {
      schot2 = false;
    }
        if( schot1 == true){
      println("test2");
      ellipse(x5,646,14,14);
         ellipse(100,100,14,14);
      x5 = x5 + 50;
    }
    if (x5 <0) {
      schot2 = false;
    }
    
    if (keyPressed){  
      x3 =x3 +1;                                                                                                                                                                                                                                                                                                                                                                       
      if (key == 's' || key == 'S') {
        x2=x2 + 10;
      } 
   if (key =='d'|| key ==  'D'){
        schot1 = true;
        x5=x2+ 200;
      y5=y2+ 200;
    } 
      
      x4=x4 - 10;
      x4 =x4 +1;                                                                                                                                                                                                                                                                                                                                                                       
      if (key == 'w' || key == 'W') {
         y2=y2 - 10;
      } 

      if (key == 'z' || key == 'Z') {
         y2=y2 + 10;
      }  
      
      if (key == 'a' || key == 'A') {
        x2=x2-10;
      }
      if (key == 'k' || key == 'K' ) {
         y=y - 10;
      }  
        if (key == 'm' || key == 'M' ) {
          y=y + 10;
        } 
    }
    if (mousePressed) {
      if (mouseButton == RIGHT) {
        x=x+10;
      }
      if (mouseButton == CENTER) {
        schot2 = true;
        x4 = 1400;
      } 
      x4=x4 - 10;
      if (mouseButton == LEFT) {
        x=x-10;
      }

      } 
    if (x2 > 600){x2 = 600;
    }          
  // eide drw routine
  }