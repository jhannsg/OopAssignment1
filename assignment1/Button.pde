class Button{
 float x;
 float y;
 float w;
 float h;
 color bColor ;      //initial color for the buttons on the menu bar
 color newColor ;  //color for the buttons on the menu bar when mouse is over

 
 boolean mouseOver = false;
 boolean onMousePress = false;
 
 //constructor
 Button(float x, float y, float w, float h, color bColor, color newColor)
 {
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.bColor =  bColor;
   this.newColor = newColor;
 
 }
 
 
 
 //update the colour of the button
 void updateButton()
 {
   if(mouseOver)
   {
    bColor = newColor;
   }
   else
   {
     bColor = color(50); ;
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
      fill(111);
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
    //noFill();
    fill(bColor);
    rect(x, y, w, h);
    mouseOver();
  }
  
  
    
}