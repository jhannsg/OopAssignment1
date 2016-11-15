PShape s;  // The PShape object
PShape r;

void setup() {
  size(600, 500);
  
  menuShape();
 
}


// Creating a custom PShape as a square, by
  // specifying a series of vertices.
void menuShape()
{
  s = createShape();
  s.beginShape();
  s.fill(55, 200, 255);
  
  float menuBoxWidth  = width / 4;
  float menuBoxHeight = height / 1.5;

  s.noStroke();
  s.vertex(0, 0);
  s.vertex(menuBoxWidth, 0);
  s.vertex(menuBoxWidth + 40, 30);
  s.vertex(menuBoxWidth + 40, menuBoxHeight);
  s.vertex(menuBoxWidth, menuBoxHeight + 30);
  s.vertex(0, menuBoxHeight + 30); 
  s.endShape(CLOSE);
  
  
  float margin = menuBoxWidth / 10;
  r = createShape(RECT, margin*2, margin*2, menuBoxWidth - margin , menuBoxHeight / 5);  
  r.setFill(color(55, 2, 255));
  
  
}

void draw() {
  background(50);
  shape(s, 10, height / 10);
  shape(r, 0, height / 10);
  shape(r, 0, height / 10 * 3);
   shape(r, 0, height / 10 * 5);

  
  noStroke();
 
}