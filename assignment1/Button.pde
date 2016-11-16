class Button{
 float x;
 float y;
 float w;
 float h;
 
 color initialColor, newColor;
 
 boolean mouseOver = false;
 boolean onMousePress = false;
 
 Button(float x, float y, float w, float h, color initialColor, color newColor)
 {
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.initialColor = initialColor;
   this.newColor = newColor;
 }
 
 void drawButton() 

  {

    stroke(255);

    fill(initialColor);

    rect(x, y, w, h);

  }
 
 void updateButton()
 {
   if(mouseOver)
   {
     initialColor = newColor;
   }
   else
   {}
 }
   
   
  boolean onMousePress()
  {
    if(mouseOver)
    {
      locked = true;
      return true;
    }
    else
    {
      locked = false;
      return false;
    }
  }
  
  
  boolean overB(float x, float y, float w, float h)
  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {

      return true; 
    }
    
    else
    {
      return false;
    }
  }
    
}//end Button class()