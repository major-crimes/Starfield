Particle [] bitch;
void setup()
{
  size(630,630);
  bitch = new Particle [10];
  for (int i = 0; i < bitch.length; i++){
   bitch[i] = new Particle(); 
  }
}
void draw()
{
  //your code here
}
class NormalParticle
{
 double myX,myY,mySpeed;
 int myAngle;
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