float y=0.0;
void setup(){
  size (200, 200);}
void draw(){
  background (200);
  line (25, y, 175, y);
  y += 1.0;
    if (y > 200) {
      y=0;}
}
