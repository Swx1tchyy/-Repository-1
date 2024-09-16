int x = 50;
int y = 50;
int grote = 20;
int horSpeed = -3;
int verSpeed = 3;

void setup(){
  size(1000,500);
}


void draw(){
  x += horSpeed;
  background(0,0,0);
  fill(255,0,0);
  ellipse(x,y,grote,grote);
  if(x > 990){
    horSpeed = -3;
  }
  if(x < grote/2){
    horSpeed = 3;
  }
  y += verSpeed;
  if(y > 490){
    verSpeed = -3;
  }
  if(y < grote/2){
    verSpeed = 3;
  }
}
