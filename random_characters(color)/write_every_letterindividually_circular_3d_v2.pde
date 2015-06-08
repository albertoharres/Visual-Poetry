/*
   f                                            
     a                                          
       ç                                        
         a                          X            
                                               
            o                                   
                                               
               q                                
                 u              s.                
                   e           a                 
                              r                 
                     t       i                   
                       u    e                    
                           u                    
                          Q                   
*/
PFont f;
float cx;
String message = "▒░▒░▒░▒░▷▽┢⎝⃞ Ѫ҈҉CHAOS⃌MORTEҢs҈ѪASSASSINATO҈as̿̾̽҈҉҈҉҈.▒▒░▒░";
float angle=0;
float x, py, cos;

void setup() {
  size(900, 750, P3D);
  f = createFont("Arial", 40, true);
  background(255, 0, 0);
  cos = 1.6;
}

void draw() { 
  //background(255, 0, 0);
  translate(width/2, height/2, 0);

  cos+= 0.1;
  camera(width/2+mouseX, mouseY+height/3, (height/2) / tan(cos*PI/6), width/2, mouseY/4, 0, 0, 2, 0);
  
  //delay(100);
  angle+=mouseY+mouseY/50;
  x+=2;
  if (x>width) {
    x=0;
  }
  py = height/2 + sin(radians(angle))*(mouseX);
  textFont(f);         
  int cx = 10;
  for (int i = 0; i < mouseX/10; i+=1) {
  fill(0 , random(255), 255);
    textSize(random((mouseX+mouseY)/20+1, 20+(mouseY+mouseX)/10));
    //text(message.charAt(i), random(-mouseX,mouseX), random(-mouseY,mouseY), random(-mouseX,mouseX ));
     text(char(int(random(0,20000))), random(-mouseX,mouseX), random(-mouseY,mouseY), random(-mouseX,mouseX ));
    // textWidth() spaces the characters out properly.
    //cx += textWidth(message.charAt(i));
  }
  
    for (int i = 0; i < mouseX/100; i+=1) {
  fill( 0, random(255) +100, random(255));
    textSize(random((mouseX+mouseY)/20+1, 20+(mouseY+mouseX)/2));
    //
     text(char(int(random(300,350))), random(-mouseX,mouseX), random(-mouseY,mouseY), random(-mouseX,mouseX ));
       fill(255, 0, 0);
     text(message.charAt(i), random(-mouseX,mouseX), random(-mouseY,mouseY), random(-mouseX,mouseX ));
    // textWidth() spaces the characters out properly.
    //cx += textWidth(message.charAt(i));
  }
  //saveFrame();
  //noLoop();
}

void keyPressed() {
  
  //saveFrame();
}

