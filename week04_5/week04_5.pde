//week04-5_void
void setup(){
  size(600, 400);
}
int x, y;//餌料的座標
float fishX= 300, fishY = 200;//魚的座標
void draw(){
  background(#C0ffee);
  ellipse(fishX, fishY, 30, 10);
  if(x>0){
    y+= 2;
    if(y>400) x=0;
    ellipse(x, y, 8, 8);
    float dx = x -fishX, dy = y -fishY;
    float d=dist(x, y, fishX, fishY);
    fishX+= dx /d*4;
    fishY+= dy /d*4;
   }
}
void mousePressed(){
  x=mouseX;
  y=mouseY;
}
