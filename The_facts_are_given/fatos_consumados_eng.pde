String [] facts = {
  "I", "know", "for", "a", "fact", "fact", "that", "nothing", "is", "is"
};
String [] given = {
  "But", "Also", "also", "that", " ", "the", "facts", "are", "already", "given", "given"
};
String [] kontinue = {
  "And", "And", " ", "maybe", " ", "is", "a", "question", "of", "continuing", "to", "live", "live", "live", "somehow"
};
String [] why = {
  "But", "I", "also", "question", "myself", " ", "why ?", "why ?"
};
String [] answer = {
  " ", " ", "For", "this", "question", "there", "is", "is", "no", "no", "answer", "answer"
};
String [] again = {
  "And", "again", "again", "hier", "I", "am", "am", " ",
};
String [] going = {
  "Away", " ", " wanting", "to", "be"
};
String [] stay = {
  "I", "don't", "want", "to", "stay", " ",
};
String [] go = {
  "I", "don't", "want", "to", "go", "back", " ",
};


boolean poema = true;

PFont f, f2;

int size = 50;
int w, y, z, k, s, a, o, t, g;

void setup() {

  size(350, 550);
  f = createFont("Helvetica", size); 
  f2 = createFont("Arial", size/3); 
  
    
  println(facts.length + given.length + kontinue.length + why.length + answer.length
  + again.length + going.length + stay.length + go.length);

  textAlign(CENTER);
}

void draw() {
  if (poema == true) {
    poema();
  }
}    

void poema() {

  textFont(f);

  background(0);
  translate(width/2, height/2);
  delay(500);
  fill(255, 0, 0 );
  rectMode(CENTER);
  //rect(0, 0, 300, 300);

  fill(255);
  // FACTS - W
  w++;
  if (w >= facts.length ) {
    w = 0;
  }
  // GIVES - K
  k++;
  if (k >= given.length) {
    k = 0;
  }
  // KONTINUE - Y
  y++;
  if (y >= kontinue.length) {
    y = 0;
  }
  // WHY - Z
  z++;
  if (z >= why.length) {
    z = 0;
  }
  // ANSWER - S
  s++;
  if (s >= answer.length) {
    s = 0;
  }
  // AGAIN - A
  a++;
  if (a >= again.length) {
    a = 0;
  }
  o++;
  // GOING - O
  if (o >= going.length) {
    o = 0;
  }  
  t++;
  // STAY - T
  if (t >= stay.length) {
    t = 0;
  }  
 g++; 
 // GO - G
   if (g >= go.length) {
    g = 0;
  }  
  
  text(facts[w], 0, -size*4);
  text(given[k], 0, -size*3); 
  text(kontinue[y], 0, -size*2);
  text(why[z], 0, -size);
  text(answer[s], 0, 0);
  text(again[a], 0, size);
  text(going[o], 0, size*2);
  text(stay[t], 0, size*3);
  text(go[g], 0, size*4);
  
  println (w, y, z, k, s); 

  /*textFont(f2);
   text(w, -size*2, size*3);
   text(y, -size*1, size*3);
   text(z, size*0, size*3);
   text(k, size*1, size*3);
   text(s, size*2, size*3);
   */
   
   //saveFrame();
} 

void keyPressed() {

  if (key == ' ') {
    if (poema == true) {
      poema = false;
    } else { 
      poema = true;
    }
  }
}


