import processing.core.PVector;
Ball b;
Base bs;
void setup(){
  size(400,400);
  background(0);
  stroke(255);
  b=new Ball(10,color(255,244,0));
  bs=new Base(40,20,color(255,0,200));
  frameRate(120);
}
void draw(){
   background(0);
  b.move();
  b.show();
  bs.move();
  bs.show();
}