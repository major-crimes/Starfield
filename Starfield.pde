Particle [] bitch;

void setup()
{
  size(630, 630);
  
  noStroke();
  bitch = new Particle [3000];
  for (int i = 2; i < bitch.length; i++) {
    bitch[i] = new NormalParticle();
  
  }
  bitch [1] = new OddballParticle();
  bitch [0] = new JumboParticle();
}
void draw()
{background(0);
//if (mousePressed == true){
  for(int r = 0; r <1; r++){
  for (int i = 0; i < bitch.length; i++) {
    bitch[i].show();
    bitch[i].move();
  
  }
  
 //}
 

}
}
void mousePressed(){
  for (int i = 0; i < bitch.length; i++) {
    bitch[i] = new NormalParticle();
  }
  bitch [1] = new OddballParticle();
  bitch [0] = new JumboParticle();
}
class NormalParticle implements Particle
{

  int r, g, b;
  double myX, myY, mySpeed;
  double myAngle;
  NormalParticle()
  {
    myY = (int) (Math.random()*600);
    myX = (int) (Math.random()*600);
   
    r = (int)(Math.random() * 0)+150;
    g = (int)(Math.random() * 100)+150;
    b = (int)(Math.random() * 255)+100;
    myAngle = (int)(Math.PI*10* Math.random());
    mySpeed =  Math.random() * 10;
  }
  void show() {
    fill(r, g, b);
    
    ellipse((float)myX,(float)myY,2,2);
  
  }
  void move() {

    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
    while( myAngle < 4){
    myAngle += .05;
    }
  
  }

}
interface Particle
{
  public void move();
  public void show();
  
}
class OddballParticle implements Particle
{int myX , myY ;
  int r, g, b;
  
  OddballParticle()
  {
 myX = myY = 315;
  r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 100);
    b = (int)(Math.random() * 100);
  }
  void show() {
   r = r + (int) (Math.random() * 10);
   g = g+(int) (Math.random() * 10);
   b = b+(int) (Math.random() * 10);
    fill(r, g, b);
    ellipse(myX,myY,20,20);
  
  }
  void move() {
    myX = myX + (int) (Math.random()*5) - 2;
    myY = myY + (int) (Math.random()*5) - 2;
  
    }

}
class JumboParticle extends NormalParticle//uses inheritance
{ 
  

  void show() {
    fill(r, g, b);
    
    rect((float)myX,(float)myY,10,10);
  
  }
  
  }

