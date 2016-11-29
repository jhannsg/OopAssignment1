class Enemies{
  float x;
  float y;
  PVector pos;
  PVector direction;
  float speed = 100;
  float w;
  float h;
  color eColor;
  float angle;
  
  
  //constructor
  Enemies(float x, float y,float angle, color eColor)
 {
   pos = new PVector(x, y);
   direction = new PVector(random(0,5),random(0,5));
   this.angle = angle;
   this.x = x;
   this.y = y;
   this.eColor =  eColor;
  
 }
 
 void render()
 {
   noStroke();
   fill(eColor);
   float c = cos(angle);
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(c); 
   triangle(x, y, x+10, y +10, x-10, y+10);
   popMatrix();
 }
 
 void update() // Overrides the method in the base class
  {
    direction.x = cos(angle);
    direction.y = -cos(angle);
    
    pos.add(PVector.mult(PVector.mult(direction, speed), 0.1f));
    if (pos.x > width - 300)
    {
      pos.x = -1*pos.x;
    }
    if (pos.x < 0)
    {
      pos.x = -1*pos.x;
    }
    if (pos.y > height)
    {
      pos.y = -1 * pos.y;
    }
    if (pos.y < 0)
    {
      pos.y = -1 *pos.y;
    }
  }  

  
}