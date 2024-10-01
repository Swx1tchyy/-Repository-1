void setup(){
  mijnmethode(5,26);
  mijnmethode(66,42);
}

void draw(){
}

void mijnmethode(int nummer, int nummer2){
  int totaal = nummer + nummer2 / 2;
  println(nummer + " + " + nummer2 + " / 2 = " + totaal);
}
