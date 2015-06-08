PFont f;
float cx;
//String message = "▒░▒░▒░▒░▷▽┢⎝⃞ Ѫ҈҉҈҉҈҉ΉἪЊҏԖᏢᴘᶈṔṕṖṗῬ⃌Ңs҈Ѫ҈as̿̾̽҈҉҈҉҈.▒▒░▒░";
float angle=0;
float x, py;
char letter;
String words = " ";
int numL = 1;

void setup() {
  size(800, 550);
  f = createFont("Arial", 20, true);
  //background(255);
}

void draw() { 
  background(0);
  translate(width/numL, height/2);
  
  
  delay(100);
  angle+=mouseY+mouseY/50;
  /*x+=2;
  if (x>width) {
    x=0;
  }*/
  py = height/2 + sin(radians(angle))*(mouseX);
  fill(0);
  textFont(f);         
  int cx = 200/numL;
  for (int i = 0; i < words.length (); i++) {
    textSize(random(200/numL, 20+(800/numL)));
    text(words.charAt(i), cx, random(-mouseY/2,mouseY/2) );
    fill(255);
    // textWidth() spaces the characters out properly.
    cx += textWidth(words.charAt(i));
  }
  //noLoop();
}

void keyPressed() {
 

   letter = key;
   words = words + key;
   numL+=1;

}
  


