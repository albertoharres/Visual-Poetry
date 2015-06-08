
PFont f1, f2, f3, f4, f5;

int xspacing;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave

float theta = 0.0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave
char letter;
StringList words;
int numL = 0;
int[] ArrayY;

void setup() {
  size(900, 600);
  xspacing = width/22;
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];

  // -------Create Fonts-----------//
  f1 = createFont("Helvetica", 124);
  f2 = createFont("ArialUnicodeMS", 50);
  f3 = createFont("Gerogia", 38);
  f4 = createFont("TrebuchetMS", 20);
  f5 = createFont("Helvetica", 25);
  //------------------------------//
  words = new StringList();
  words.append(" ");
}

void draw() {
  background(0);    
  delay(50);
  calcWave();
  renderWave();
  amplitude = width/10;
  period = height*2;
  //saveFrame();
}

void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.0002*width;

  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave() {
  noStroke();
  fill(255);
  textFont(f5);

  // A simple way to draw the wave with an ellipse at each location
  for (int x = 16-numL; x < yvalues.length; x++) {
    for (int y = xspacing*3; y < width - xspacing*3; y+= xspacing) {
      //ellipse(height/2+yvalues[x], x*xspacing, 16, 16);

        String word1 = words.get(numL);
        text(word1, yvalues[x]+y, x*xspacing);

    }
  }
}

void keyPressed() {
  
  numL++;
  if (numL>=17) {
    numL = 0;
    words.clear();
  }
  
      if ( key == 'a' || key == 'A') {
      words.append(A[int(random(0, A.length))]);
   }
     if ( key == 'b' || key == 'B') {
      words.append(B[int(random(0, B.length))]);
   }
      if ( key == 'c' || key == 'C') {
      words.append(C[int(random(0, C.length))]);
   }
      if ( key == 'd' || key == 'D') {
      words.append(D[int(random(0, D.length))]);
   }
      if ( key == 'e' || key == 'E') {
      words.append(E[int(random(0, E.length))]);
   }
      if ( key == 'f' || key == 'F') {
      words.append(F[int(random(0, F.length))]);
   }
      if ( key == 'g' || key == 'G') {
      words.append(G[int(random(0, G.length))]);
   }
      if ( key == 'h' || key == 'H') {
      words.append(H[int(random(0, H.length))]);
   }
      if ( key == 'i' || key == 'I') {
      words.append(i[int(random(0, i.length))]);
   }
        if ( key == 'j' || key == 'J') {
      words.append(J[int(random(0, J.length))]);
   }
     if ( key == 'l' || key == 'L') {
      words.append(L[int(random(0, L.length))]);
   }
      if ( key == 'm' || key == 'M') {
      words.append(M[int(random(0, M.length))]);
   }
      if ( key == 'n' || key == 'N') {
      words.append(N[int(random(0, N.length))]);
   }
      if ( key == 'o' || key == 'O') {
      words.append(O[int(random(0, O.length))]);
   }
      if ( key == 'p' || key == 'P') {
      words.append(P[int(random(0, P.length))]);
   }
      if ( key == 'q' || key == 'Q') {
      words.append(Q[int(random(0, Q.length))]);
   }
      if ( key == 'r' || key == 'R') {
      words.append(R[int(random(0, R.length))]);
   }
      if ( key == 's' || key == 'S') {
      words.append(S[int(random(0, S.length))]);
   }
      if ( key == 't' || key == 'T') {
      words.append(T[int(random(0, T.length))]);
   }
      if ( key == 'u' || key == 'U') {
      words.append(U[int(random(0, U.length))]);
   }
      if ( key == 'v' || key == 'V') {
      words.append(V[int(random(0, V.length))]);
   }
      if ( key == 'x' || key == 'X') {
      words.append(X[int(random(0, X.length))]);
   }
      if ( key == 'z' || key == 'Z') {
      words.append(Z[int(random(0, Z.length))]);
   }
     if (key == ' ') {
   //words =  " ";
  } 
}

void mouseClicked() {


numL=0;
textSize(random(150));
  
}

