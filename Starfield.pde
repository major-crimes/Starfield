NormalParticle [] bitch;
void setup()
{
  size(630, 630);
  
  noStroke();
  bitch = new NormalParticle [3000];
  for (int i = 0; i < bitch.length; i++) {
    bitch[i] = new NormalParticle();
  }
}
void draw()
{background(0);
if (mousePressed == true){
  for(int r = 0; r <10; r++){
  for (int i = 0; i < bitch.length; i++) {
    bitch[i].show();
    bitch[i].move();
  }
  
 }
 

}
}

class NormalParticle
{

  int r, g, b;
  double myX, myY, mySpeed;
  double myAngle;
  NormalParticle()
  {
    myY = myX = (int)(Math.random()*630);
   
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
class OddballParticle //uses an interface
{
  
  OddballParticle(){
    
  }
  
}
class JumboParticle //uses inheritance
{
  
}
