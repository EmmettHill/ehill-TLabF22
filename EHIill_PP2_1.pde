float x=0.0;
float speed = 1.0;
float radius = 100.0;

void setup(){
  size(500, 500);
  ellipseMode(RADIUS);}
  
void draw(){
  background(204);
  ellipse(x, 200, radius, radius);{
  x = x+speed;
  if (x > width+radius) {
    x = -radius;}
}
}
