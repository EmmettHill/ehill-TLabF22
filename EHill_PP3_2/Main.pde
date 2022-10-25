float angle = -PI/2;
float intial_speed=0.5;
PVector position = new PVector(50, 92);
boolean shot = false;

CannonBall ball;

void setup() {
  size(100, 100);
  ball = new CannonBall(position.x, position.y);
}

void draw() {
  background(255);

  if (shot) {
    PVector gravity = new PVector(0, 0.5);
    ball.applyForce(gravity);
    ball.update();
  }
  ball.display();

  if (ball.position.y > height+30) {
    ball = new CannonBall(position.x, position.y);  
    shot = false;
  }
}

void keyPressed() {
if (key == ' ') {
    shot = true;
    PVector force = PVector.fromAngle(angle);
    force.mult(intial_speed);
    ball.applyForce(force);
}
  intial_speed+=1.0;
  if(intial_speed>3)
  {
		intial_speed = 1.0;
	}
}