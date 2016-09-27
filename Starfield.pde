//your code here
void setup()
{
	size(1000,1000);
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double xPos;
	double yPos;
	double speed;
	double myAngle; 
	NormalParticle(){

	}
	void show() {
		color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
		ellipse(xPos,yPos,8,8);
	}
	void move(){
		xPos = xPos + (Math.cos(myAngle) * speed);
		yPos = yPos + (Math.sin(myAngle) * speed);
	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

