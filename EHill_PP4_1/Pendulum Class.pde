class Pendulum{
	PVector location;
	PVector origin;
	float r;
	float angle;
	float aVelocity;
	float aAcceleration;
	//float damping;

	Pendulum(PVector origin_, float r_){
		origin=origin_.get();
		location=new PVector();
		r=r_;
		angle=-PI/2;
	
		aVelocity=0.0;
		aAcceleration=0.0;
		//damping=0.995;
	}
	
void go(){
	update();
	display();}
	
void update() {
	float gravity=0.4;
	aAcceleration=(-1*gravity/r)*sin(angle);
	aVelocity+=aAcceleration;
	angle+=aVelocity;
	//aVelocity*=damping;
}
	
void display(){
	//PVector origin=new PVector(320, 180);
	//float r=125;
	//PVector location=new PVector(r*sin(angle), r*cos(angle);
	location.set(r*sin(angle),r*cos(angle),0);
	location.add(origin);
	
	stroke(0);
	fill(175);
	line(origin.x, origin.y, location.x, location.y);
	ellipse(location.x, location.y, 20, 20);
	//aAcceleration=(-1*gravity*sin(angle))/r;
	//aVelocity *=0.99;
}
}


