float x=0.0;
float y=0.0;
float speed=1.0;
float radius=100.0;
void setup(){
  size(500, 500);
  ellipseMode(RADIUS);}
void draw(){
  background(200);
  if (x<250){
  ellipse(250, 125, radius, radius);}
  else if (x>250){
    ellipse(250, y+125, radius, radius);{
    y=y+speed;}
  }
    line(0, height*1/4, x, height*1/4);
    x=x+speed;}
