//your code here

Particle [] allThem;
void setup()
{
	size(900,900);
	allThem = new Particle[100];

	for (int i= 0; i< allThem.length; i++){
		allThem[i]= new NormalParticle();
		allThem[0] = new OddballParticle();
	}
	//your code here
}
void draw()
{
	background(0);
	
	for (int i= 0; i< allThem.length; i++){
		allThem[i].show();
		allThem[i].move();
	}

	//your code here
}
class NormalParticle implements Particle
{
	double xPos;
	double yPos;
	double speed;
	double myAngle; 
	NormalParticle(){
		xPos = 450;
		yPos = 450;
		myAngle = (Math.random()*(2*Math.PI));
		speed = 20;

	}
	public void show() {
		fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
		ellipse((float)xPos,(float)yPos,12,12);
	}
	public void move(){
		xPos = xPos + (Math.cos((int)(myAngle)) * (int)speed);
		yPos = yPos + (Math.sin((int)(myAngle)) * (int)speed);
		myAngle = myAngle + (Math.random() * (Math.PI / 12));
		
	}//your code here
}
interface Particle
{
	public void show();
	public void move();
	//your code here
}

class OddballParticle implements Particle//uses an interface
{

	double xPos;
	double yPos;
	double speed;
	double myAngle;
	public void show(){
		fill(204, 85, 85);
		rect( (float)xPos, (float) yPos, 40,40,8);

	}
	public void move(){
		xPos = xPos + (Math.cos((int)(myAngle)) * (int)speed);
		yPos = yPos + (Math.sin((int)(myAngle)) * (int)speed);
		myAngle = myAngle + (Math.random() * (Math.PI / 12));
	}
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

