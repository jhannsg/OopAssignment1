PShape s;  // The PShape  for menu object

Button b1, b2, b3;

Circle c1;

//boolean locked;
color initialColor = color(55, 200, 255);
color highlitedColor = color(255,0,0);

void setup() {
  size(1200, 700);
  
  menuShape();
  
  
  shape(s, 0, height / 10); //big menu box
  
  b1 = new Button(0, height/5.2, width/4 +40, height / 8, initialColor, highlitedColor);
  b2 = new Button(0, height/2.55, width/4 +40, height / 8, initialColor, highlitedColor);
  b3 = new Button(0, height/1.71, width/4 +40, height / 8, initialColor, highlitedColor);
  b1.drawButton();
  b2.drawButton();
  b3.drawButton();
  
 
}//end setup()


// Creating a custom PShape as a rectangle
// using vertex().
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
  
}


void draw() {

  //background(50);
  update(mouseX, mouseY);
   
  textSize(height/18);
  fill(255, 200, 255);
  text("WEAPONS", width/15, height/3.6);
  text("", width/18, height/2.1);
  text("ENERGY", width/15, height/1.5);  
  
  
  

}

void update(int x, int y)

{

 // if(locked == false) 
  //{
    b1.updateButton();
    b2.updateButton();
    b3.updateButton();

  //} 

  //else {

  //  locked = false;

  //}
}