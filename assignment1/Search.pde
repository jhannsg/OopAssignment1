class Search{
  float x = 0; 
  float y = 0;
  float w = width;
  float h = height;

  
  String date;
  String time;
  int searchIndex1 = 9;
  int searchIndex2 = 7;
  int searchBoxSize = 150;
 /* Search(float x, float y, float w, float h)
  {
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
  }?*/
    
   
  void drawLines()
  {
    image(mapImg, 0, 0, 1280, 720);
    stroke(0,244,0);
    line(x, 0, x, h);
    line(x + searchBoxSize, 0, x  + searchBoxSize, h);
    x += searchIndex1;
     
    if( x > w - searchBoxSize  - 250 || x < 0)
    {
      searchIndex1 = -1*searchIndex1;
    }
    
    line(0, y, w , y);
    line(0, y + searchBoxSize, w, y + searchBoxSize);   
    y += searchIndex2;
    
    if( y > h - searchBoxSize || y < 0)
    {
      searchIndex2 = -1*searchIndex2;
    }
    
     //noStroke();
     //ellipse(x + searchBoxSize/2, y + searchBoxSize / 2, searchBoxSize,searchBoxSize);
     
     
    
     date = nf(day(),2) + "."+ nf(month(),2) + "."+ year() ;
     time= nf(hour(),2) +":" +  nf(minute(),2) +":" +nf(second(),2);
     textFont(font1, 25);
     fill(0, 255,0); 
     text(date, width - 200, 50);
     text(time, width - 200, 80);
  }
   
Radar radar1 = new Radar(1160, 490, 100, 0.02f);
Radar radar2 = new Radar(1160, 280, 100, 0.03f);  
    void radars()
    {
      
     stroke(mainColor);
     strokeWeight(3);
     fill(0);
     rect(width - 250, 0, width, height); 
     fill(0, 255, 100);
     textSize(40);
     text("System OK", width - 230, 135);
     noStroke();
     strokeWeight(1);
     
     //draw the grid
     int rowCount = 15;
     int colCount = 10;   
     float celWidth = (width -250)  / (float)colCount;
     float celHeight = celWidth;
      for(int i = 0; i <= rowCount; i++)
      {
        for(int j = 0; j <= colCount ; j++)
        {
          stroke(0, 199, 0);
           line(width - 250, j* celHeight , width, celHeight * j);
           line(j* celWidth + (width-250)  ,0 , celWidth * j + (width-250), height  );
        }
      }
     
     radar1.update();
     radar1.render();
     
     radar2.update();
     radar2.render();
     stat.displayTime();
     
     int x = 1180;
     int y = 630;
     int size = 30;
     
     if  ((dist(mouseX, mouseY, x+size, y)) < size * 0.5) //if mouse over circle
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
        stroke(mainColor);
        strokeWeight(3);
        ellipse(x +size, y, size*2, size*2); 
        stroke(255,0,0);
        line(x + size - 20, y - 20,  x + size + 20, y + 20);
        line(x + size + 20, y - 20, x + size - 20, y + 20);
     

    }
    
  
}//end Search