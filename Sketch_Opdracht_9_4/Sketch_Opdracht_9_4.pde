void setup(){
  size(500,500);
}

void draw(){
  //Default = 100,100,300,300
  vierkant(100,100,300,300);
}

void vierkant(int x, int y, int w, int h){
  line(x,y,x+w,y);
  line(x,y,x,y+h);
  line(x,y+h,x+w,y+h);
  line(x+w,y+h,x+w,y);
}
