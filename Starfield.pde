Particle [] bob;
void setup()
{
  size (500,500);
  bob = new Particle [150];
  for (int i = 10; i < bob.length; i++)
    bob[i] = new Particle();
  for (int i = 0; i < 10; i++)
    bob[i] = new OddballParticle();
  
  
  
}

void draw()
{
  
 if (mousePressed == false)
    background(0);

 
  for (int i = 0; i < bob.length; i++)
  {
  
  bob[i].disperse();
  bob[i].show();
 
  
  }
}

class Particle
{
  double myX, myY, mySpeed, myAngle, rand;
  int mySize;
  Particle ()
  {
   myX = 250;
   myY = 250;
   mySize = (int) (Math.random()*6)+4;
   mySpeed = (int)(Math.random()*2)+2;
   myAngle = Math.random()*2 * Math.PI ;
   rand = Math.random()*1; 
   
  }

void disperse ()
{
 myX+= Math.cos(myAngle) *mySpeed;
 myY+= Math.sin(myAngle) *mySpeed;
 if (myX > 505 || myY > 505 || myY < 0 || myX < 0)
   {
     myX = 250;
     myY = 250;
     mySpeed = 2;
   }
  
}

void show ()
{
  
  noStroke();
  if (rand > 0.5)
  fill (0, 102, 165); 
  else
  fill (#003366);
  ellipse ((float)myX,(float)myY,mySize,mySize);
}

}//end of Particle

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle () 
  {
  myX = 250;
  myY = 250;
  mySize = (int) (Math.random()*6)+15;
  mySpeed = (int)(Math.random()*2)+1;
  myAngle = Math.random()*2 * Math.PI;
  rand = Math.random()*1;
}

}





