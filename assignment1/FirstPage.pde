class FirstPage
{
  //String currentTime;
  float x = width / 2;
  float y = height / 2;
  float size = width / 6; 
  color c = color(0, 200, 0);
  boolean blink;
  boolean mouseOver;
 
 
 public void drawFirstPage()
 {
   background(0);
    fill(c);
    textSize(17);
    text("STARTING...", 20, 20 );
    if (frameCount>100)
    {
      text("MEMORY....//OK", 20, 40);
    }
    
    if (frameCount>175)
    {
      text("DATA DRIVES........//100% ", 20, 60);
    }
    if (frameCount>225)
    {
      text("MAIN CORES........44.........77.....//OK", 20, 80);
    }
    if (frameCount>250)
    {
      text("LOADING...", 20, 100);
    }
    
    if ( (frameCount>250) && (frameCount % 15 == 0))
    {
      blink = !blink;
    }
    if(blink)
    {
      text("              .", 40, 100);
    }
      
      
   
  if(frameCount > 350)
  {
   // fill(c);
    textSize(36);
    text("DO YOU WISH TO CONTINUE ?", 380, 150);
    strokeWeight(4);
    stroke(c);
    noFill();
    
      if ( (dist(mouseX, mouseY, x-size, y)) < size * 0.5) //if mouse over circle1
      { 
        fill(67); 
        if(mousePressed)
        {
          start = true;
        }
      }
     
       else
       {
         noFill();  
       }
       ellipse(x - size, y , size, size);
       line(x - size - 60, y - 40 ,  x - size - 15 , y + 60);
       line(x - size - 15, y + 60 , x - size + 50, y - 60);
    
     
      if  ((dist(mouseX, mouseY, x+size, y)) < size * 0.5) //if mouse over circle2
      {
        fill(67);
        if(mousePressed)
        {
          start = false;
          exit();
        }
      }
      else
      {
        noFill(); 
      }
        ellipse(x + size, y, size, size); 
        stroke(255,0,0);
        line(x + size - 50, y - 50,  x + size + 50, y + 50);
        line(x + size + 50, y - 50, x + size - 50, y + 50);
   }
       
 }
   
 
  
}