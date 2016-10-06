//your code here

Particle [] allThem;
 PImage b;

void setup()
{
	size(900,900);
	allThem = new Particle[300];
    b = loadImage("fish.png");
	for (int i= 0; i< allThem.length; i++){
		allThem[i]= new NormalParticle();
		allThem[0] = new OddballParticle();
		allThem[1] = new JumboParticle();
	}
	frameRate(25);
	//your code here
}
void draw()
{
	background(4, 19, 34);
	
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
		speed = 10;

	}
	public void show() {
		noStroke();
		fill(((int)(Math.random()*100)),((int)(Math.random()*255)),((int)(Math.random()*200)));
		ellipse((float)xPos,(float)yPos,10,10);
	}
	public void move(){
		xPos = xPos + (Math.cos((int)(myAngle)) * (int)speed);
		yPos = yPos + (Math.sin((int)(myAngle)) * (int)speed);
		myAngle = myAngle + (.06);
		if (xPos> 900 || xPos < 0){
			xPos = 450;
			yPos = 450;
		}
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
	OddballParticle(){
		xPos = 450;
		yPos = 450;
		myAngle = (4*Math.PI);
		speed = -10;

	}
	public void show(){
		
		image(b, (float)xPos, (float) yPos, 70,60);

	}
	public void move(){
		xPos = xPos + (Math.cos((int)(myAngle)) * (int)speed);
		yPos = yPos + (Math.sin((int)(myAngle)) * (int)speed);
		myAngle = myAngle + (Math.random() * .1);
	}
	//your code here
}
class JumboParticle extends OddballParticle//uses inheritance
{
	JumboParticle(){
		xPos = 450;
		yPos = 450;
		speed= 12;


	}
	
	public void show(){

		image(b, (float)xPos, (float) yPos, 90,80);
	}
	//your code here
}

