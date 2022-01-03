Grid g;
PImage f;
boolean leftClick, rightClick;
void setup() {
  size(820, 800);
  f = loadImage("flag.png");
  g = new Grid();
}
void draw() {
  g.show();
  if(g.win() == true){
    background(0,255,0);
  }
  leftClick = false;
  rightClick = false;
}
void mouseClicked(){
  if(mouseButton == LEFT){
    leftClick = true;
  }
  else if(mouseButton == RIGHT){
    rightClick = true;
  }
}
