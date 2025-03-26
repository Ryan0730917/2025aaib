//week06-4_fishX_fishY_for_many_X_Y
void setup(){
  size(600,400);
}
float fishX=300, fishY = 200;//魚座
float[] x = new float[100];//Java的陣列
float[] y = new float[100];//最多有100個飼料
int N = 0;//目前是0顆
void draw(){
  background(#c0ffee);
  for(int i=0; i<N; i++){//for迴圈
    ellipse(x[i], y[i], 8, 8);//飼料的陣列
    y[i]++;
    if(y[i]>400){//飼料掉到底部,要回收 x[i]及y[i]
      for(int k=i;k<N-1; k++){//把右邊逐一往左搬
     x[k] = x[k+1];//格子的值,往左移
     y[k] = y[k+1];
      }
      N--;//更新飼料的總數N
    }
  }
  println(N);
  ellipse(fishX, fishY, 30,10);//魚
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
