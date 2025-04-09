//week08-4
void setup(){
  size(400, 400); //大小
}
int x, y, s; //氣球的座標,氣球的大小
void draw(){
  background(255); //白色的背景
  ellipse(x, y-s/2, s*0.7, s); //瘦瘦的氣球,接觸下方
  if(mousePressed) s++;
 
}
void mousePressed(){  //按下mouse改變氣球位置
  x = mouseX;
  y = mouseY;
  s=1;
}
