class Base{
  float len;
  color c_base;
  float thick;
  PVector pos=new PVector(width/2-len/2,height-3);
  PVector dir=new PVector(1,0);
  Base(float l,float t,color clr){
    len=l;
    thick=t;
    c_base=clr;
    fill(c_base);
  }
  void show(){
    line(pos.x,pos.y,pos.x+len,pos.y);
  }
  void move(){
    if(keyPressed)
        {
          if(keyCode==LEFT){
                  dir.x*=.85;
                  pos.sub(dir);
                  if(pos.x<=len/2)
                      pos.x=len/2;
                    }
          else if (keyCode==RIGHT){
                  dir.x*=1.01;
                  pos.add(dir);
                  if(pos.x>=width-len/2)
                      pos.x=width-len/2;  
                  }
        }
    else dir=new PVector(1,0);
    
  }
}