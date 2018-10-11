Particle [] bitch;
void setup()
{
  size(630, 630);
  bitch = new Particle [10];
  for (int i = 0; i < bitch.length; i++) {
    bitch[i] = new Particle();
  }
}
void draw()
{
  for (int i = 0; i < bitch.length; i++) {
    bitch[i].show();
    bitch[i].move();
  }
}
void show(){
  
}
void move(){
  
}
class NormalParticle
{

  fill(r, g, b);
  double myX, myY, mySpeed;
  int myAngle;
}
interface Particle
{
  Particle()
  {
    int r = (int)(Math.random() * 256);
    int g = (int)(Math.random() * 256);
    int b = (int)(Math.random() * 256);
    fill(r, g, b);
  }
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
