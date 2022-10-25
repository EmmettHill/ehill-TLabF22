void setup() {
  size(1100,360);
	float damping;
}
 
void draw() {
	background(255);	
	float period=120;
	float amplitude=500;
	float x=amplitude*cos(TWO_PI*frameCount/period);
	stroke(0);
	fill(175);
	translate(width/2,height/2);
	line(0,0,x,0);
	ellipse(x,0,20,20);
	if (frameCount == period*3)
		amplitude -= 50;
	if (frameCount == period*4)
		amplitude -= 50;
	if (frameCount == period*5)
		amplitude -= 50;
	if (frameCount == period*6)
		amplitude -= 50;
	if (frameCount == period*7)
		amplitude -= 50;
	if (frameCount == period*8)
		amplitude -= 50;
	if (frameCount == period*9)
		amplitude -= 50;
}