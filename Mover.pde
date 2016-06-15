class Ball{
  float rad;
  color c_ball;
  PVector pos=new PVector(50,70);
  PVector dir=new PVector(2.6,3.3);
  Ball(int r,color c){
    rad=r;
    c_ball=c;
    fill(c_ball);
  }
  void show(){
    pushMatrix();
    ellipseMode(RADIUS);
    ellipse(pos.x,pos.y,rad,rad);
    popMatrix();
  }
  void move(){
    if(pos.x<=rad || pos.x+rad>=width) dir.x=-dir.x;
    if(pos.y<=rad || pos.y+rad>=height) dir.y=-dir.y;
    pos.add(dir);
  }
}