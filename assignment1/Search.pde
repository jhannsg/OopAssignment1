class Search{
  float x = 0; 
  float y = 0;
  float w = width;
  float h = height;
  
  PVector position;
  PVector velocity;
 

  
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
     
    if( x > w - searchBoxSize || x < 0)
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
    
    
     position = new PVector(x, y);
     velocity = new PVector(9, 7);
     ellipse(position.x, position.y, 0, 0 );
     
    
     date = nf(day(),2) + "."+ nf(month(),2) + "."+ year() ;
     time= nf(hour(),2) +":" +  nf(minute(),2) +":" +nf(second(),2);
     textFont(font1, 25);
     fill(0, 255,0); 
     text(date, width - 200, 50);
     text(time, width - 200, 80);
  }
    
    
  
}//end Search