PShape s;  // The PShape  for menu object

Button b1, b2, b3;
Circle c1;

boolean locked;
color initialColor = color(112);
color highlitedColor = color(255,0,0);

void setup() {
  size(1200, 700);
  
  menuShape();
  b1 = new Button(1.5, height/5.2, width/4 +40, height / 8, initialColor, highlitedColor);
  b2 = new Button(1.5, height/2.55, width/4 +40, height / 8, initialColor, highlitedColor);
  b3 = new Button(1.5, height/1.71, width/4 +40, height / 8, initialColor, highlitedColor);
  
 
}//end setup()


// Creating a custom PShape as a rectangle
// using vertex().


void draw() {

  background(50);
  shape(s, 0, height / 10); //big menu box
  update(mouseX, mouseY);
  
  b1.drawButton();
  b2.drawButton();
  b3.drawButton();
   
  textSize(height/18);
  fill(255, 55, 255);
  text("STATUS", width/15, height/3.6);
  text("TOXICITY", width/18, height/2.1);
  text("ENERGY", width/15, height/1.5);  
  
}

void update(int x, int y)

{

 if(locked == false) 
   {
    b1.updateButton();
    b2.updateButton();
    b3.updateButton();
  } 

  else 
  {
    locked = false;
  }
  
  if(mousePressed) {
    if(b1.onMousePress() )
    {
      fill(100,100,0);
      rect(500,500, 349,574);
    }
    
    if(b2.onMousePress() )
    {
      fill(100,100,0);
      rect(500,500, 349,574);
    }
    
    if(b3.onMousePress() )
    {
      fill(100,100,0);
      rect(500,500, 349,574);
    }
  }
}



void menuShape()
{
  s = createShape();
  s.beginShape();
  s.noFill();
  
  float menuBoxWidth  = width / 4;
  float menuBoxHeight = height / 1.5;

  s.stroke(23, 255, 23);
  s.vertex(0, 0);
  s.vertex(menuBoxWidth, 0);
  s.vertex(menuBoxWidth*1.14, height/23.33);
  s.vertex(menuBoxWidth*1.14, menuBoxHeight);
  s.vertex(menuBoxWidth, menuBoxHeight + height/23.33);
  s.vertex(0, menuBoxHeight + height/23.33); 
  s.endShape(CLOSE);
  
}