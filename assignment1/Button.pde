class Button{
 float x;
 float y;
 float w;
 float h;
 color bColor = color(112);      //initial color for the buttons on the menu bar
 color newColor = color(255,0,0);  //color for the buttons on the menu bar when mouse is over

 
 boolean mouseOver = false;
 boolean onMousePress = false;
 
 //construxtor
 Button(float x, float y, float w, float h)
 {
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
 
 }
 
 
 
 //update the colour of the button
 void updateButton()
 {
   if(mouseOver)
   {
    //fill(newColor);
    //rect(500, 600, 200, 500);
   }
   else
   {
     bColor = newColor;
   }
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
  
  
  boolean overButton(float x, float y, float w, float h)
  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) 
    { 
      return true; 
    }
    
    else
    {
      return false;
    }
  }
  

   boolean mouseOver() 
  {

    if( overButton(x, y, w, h) ) 
    {
      mouseOver = true; 
      return true;
    } 

    else {
      mouseOver = false;
      return false;
    }

  }
  
  
  //draw the button 
 void drawButton() 
  {
    stroke(70,247,201);
    noFill();
    rect(x, y, w, h);
    mouseOver();
  }
  
  
    
}