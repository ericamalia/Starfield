//your code here

NormalParticle [] allThem;
void setup()
{
	size(900,900);
	allThem = new NormalParticle[100];

	for (int i= 0; i< allThem.length; i++){
		allThem[i]= new NormalParticle();
	}
	//your code here
}
void draw()
{
	
	for (int i= 0; i< allThem.length; i++){
		allThem[i].show();
		allThem[i].move();
	}

	//your code here
}
class NormalParticle
{
	double xPos;
	double yPos;
	double speed;
	double myAngle; 
	NormalParticle(){
		xPos = 450;
		yPos = 450;
		myAngle = (Math.random()*(2*Math.PI));
		speed = 10;

	}
	void show() {
		fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
		ellipse((float)xPos,(float)yPos,8,8);
	}
	void move(){
		xPos = xPos + (Math.cos((int)(myAngle)) * (int)speed);
		yPos = yPos + (Math.sin((int)(myAngle)) * (int)speed);
		myAngle = myAngle + (Math.random() * (Math.PI / 6));
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

