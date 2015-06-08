

PFont f;
float cx;
String message;
float angle=0;
float x, py;
char letter;
String words = " ";
int numL = 1;
int h = 1;
int gap = 50;

void setup() {
  size(800, 550);
  f = createFont("Arial", 50, true);
  //background(255);
  
}

void draw() { 
  background(0);
  //translate(width/numL, height/2);
  textAlign(CENTER);
  
  delay(20);
  angle+=mouseY+mouseY/50;
  /*x+=2;
  if (x>width) {
    x=0;
  }*/
  py = height/2 + sin(radians(angle))*(mouseX);
  fill(0);
  textFont(f);        
 
  int cx = 10;
  //for (int i = 0; i < words.length (); i++) {
    //message = Character.toString((words).charAt(i));
    fill(255);
    text(words, gap, gap, width-gap, height-gap);

    // textWidth() spaces the characters out properly.
    //cx += textWidth(words.charAt(i));
  //}
  //noLoop();
}

void keyPressed() {
 
     if ( key == 'a' || key == 'A') {
      words = words + A[int(random(0, A.length))];
   }
     if ( key == 'b' || key == 'B') {
      words = words + B[int(random(0, B.length))];
   }
      if ( key == 'c' || key == 'C') {
      words = words + C[int(random(0, C.length))];
   }
      if ( key == 'd' || key == 'D') {
      words = words + D[int(random(0, D.length))];
   }
      if ( key == 'e' || key == 'E') {
      words = words + E[int(random(0, E.length))];
   }
      if ( key == 'f' || key == 'F') {
      words = words + F[int(random(0, F.length))];
   }
      if ( key == 'g' || key == 'G') {
      words = words + G[int(random(0, G.length))];
   }
      if ( key == 'h' || key == 'H') {
      words = words + H[int(random(0, H.length))];
   }
      if ( key == 'i' || key == 'I') {
      words = words + i[int(random(0, i.length))];
   }
        if ( key == 'j' || key == 'J') {
      words = words + J[int(random(0, J.length))];
   }
     if ( key == 'l' || key == 'L') {
      words = words + L[int(random(0, L.length))];
   }
      if ( key == 'm' || key == 'M') {
      words = words + M[int(random(0, M.length))];
   }
      if ( key == 'n' || key == 'N') {
      words = words + N[int(random(0, N.length))];
   }
      if ( key == 'o' || key == 'O') {
      words = words + O[int(random(0, O.length))];
   }
      if ( key == 'p' || key == 'P') {
      words = words + P[int(random(0, P.length))];
   }
      if ( key == 'q' || key == 'Q') {
      words = words + Q[int(random(0, Q.length))];
   }
      if ( key == 'r' || key == 'R') {
      words = words + R[int(random(0, R.length))];
   }
      if ( key == 's' || key == 'S') {
      words = words + S[int(random(0, S.length))];
   }
      if ( key == 't' || key == 'T') {
      words = words + T[int(random(0, T.length))];
   }
      if ( key == 'u' || key == 'U') {
      words = words + U[int(random(0, U.length))];
   }
      if ( key == 'v' || key == 'V') {
      words = words + V[int(random(0, V.length))];
   }
      if ( key == 'x' || key == 'X') {
      words = words + X[int(random(0, X.length))];
   }
      if ( key == 'z' || key == 'Z') {
      words = words + Z[int(random(0, Z.length))];
   }
   //letter = key;
   //words = words + key;
   numL+=1;
  if (key == ' ') {
   words = words + ' ';
  } 
  
  if (numL>100) {
    words = " ";
    numL=1;
    textSize(random(150));
  }

}

void mouseClicked() {

words = " ";
numL=1;
textSize(random(150));
  
}

  


