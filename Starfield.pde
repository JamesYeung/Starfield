Particle[] a;
int[] colorOne, colorTwo, colorThree;
void setup()
{
	size(500,500);
	a= new Particle[300];
	colorOne= new int[300];
	colorTwo= new int[300];
	colorThree= new int[300];
	for(int i=0; i<a.length-1; i++)
	{
		a[i]=new NormalParticle();
		colorOne[i]= (int)(Math.random()*256);
		colorTwo[i]=(int)(Math.random()*256);
		colorThree[i]=(int)(Math.random()*256);
	}
	a[299]= new OddballParticle();
	a[298]= new JumboParticle();
}
void draw()
{
	background(0);
	for(int i=0; i<a.length;i++)
	{
		fill(colorOne[i],colorTwo[i],colorThree[i]);
		a[i].move();
		a[i].show();
	}
}
class NormalParticle implements Particle
{
	double dX,dY,dSpeed,dAngle;
	NormalParticle()
	{
		dX= 255;
		dY= 255;
		dSpeed=Math.random()*5;
		dAngle= Math.PI*Math.random()*2;
	}
	public void move()
	{
		dX=dX+dSpeed*Math.cos(dAngle);
		dY=dY+dSpeed*Math.sin(dAngle);
		if((int)dX==0 || (int)dX>500)
		{
			dX= 255;
			dY= 255;
			dSpeed=Math.random()*5;
			dAngle= Math.PI*Math.random()*2;
		}
		if((int)dY<0 || (int)dY>500)
		{
			dX= 255;
			dY= 255;
			dSpeed=Math.random()*5;
			dAngle= Math.PI*Math.random()*2;
		}
	}
	public void show()
	{
		ellipse((float)dX,(float)dY,5,5);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
		double dX,dY,dSpeed,dAngle;
	OddballParticle()
	{
		dX= 255;
		dY= 255;
		dSpeed=Math.random()*5;
		dAngle= Math.PI*Math.random()*2;
	}
	public void move()
	{
		dX=dX+dSpeed*Math.cos(dAngle);
		dY=dY+dSpeed*Math.sin(dAngle);
		if((int)dX==0 || (int)dX>500)
		{
			dX= 255;
			dY= 255;
			dSpeed=Math.random()*5;
			dAngle= Math.PI*Math.random()*2;
		}
		if((int)dY<0 || (int)dY>500)
		{
			dX= 255;
			dY= 255;
			dSpeed=Math.random()*5;
			dAngle= Math.PI*Math.random()*2;
		}
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)dX,(float)dY,30,30);
	}
}
class JumboParticle extends OddballParticle
{
	void show()
	{
		fill(0,0,255);
		ellipse((float)dX,(float)dY,40,40);
	}
}
