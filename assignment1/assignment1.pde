PShape s;  // The PShape object


void setup() {
  size(1200, 750);
  // Creating a custom PShape as a square, by
  // specifying a series of vertices.
  
  menuShape();
}

void menuShape()
{
  s = createShape();
  s.beginShape();
  s.fill(55, 200, 255);
 
  s.noStroke();
  s.vertex(0, height/7);
  s.vertex(width/4, height/7);
  s.vertex(width/4+40, height/7 + 30);
  s.vertex(width/4+40, height/1.5);
  s.vertex(width/4, height/1.5 + 30);
  s.vertex(0,height/1.5 + 30); 
  s.endShape(CLOSE);
  
 
}

void draw() {
  background(50);
  shape(s, 0, 0);
}