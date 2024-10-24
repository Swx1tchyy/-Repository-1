boolean Jan;
String[] leeftijden = {"Thomas", "Jayden", "Tim", "Jan", "Piet"};

void setup(){
  Jan = false;
  for(int i = 0; i < leeftijden.length; i++){
    if(leeftijden[i] == "Jan"){
    Jan = true;
    }
  }
  println(Jan);
}
 
