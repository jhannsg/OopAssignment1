class Status{
  Button buton;
 
  void displayTime()
  {
     String date;
     String time;
     
     date = nf(day(),2) + "."+ nf(month(),2) + "."+ year() ;
     time= nf(hour(),2) +":" +  nf(minute(),2) +":" +nf(second(),2);
     textFont(font1, 25);
     fill(0, 255,0); 
     text(date, width - 200, 50);
     text(time, width - 200, 80);
  }
  
  
   
   
   void lines()
   {
     strokeWeight(4);
     stroke(255,255,255);
     //line(width/8, -height + 100, width/6, -height + 50);
     line(100, 100, 200, 50);
     line(200, 50, 1050, 50); 
     line(1050, 50, 1150, 100);
     
     line(100, 630, 200, 680);
     line(200, 680, 1050, 680);
     line(1050, 680, 1150, 630);
   }
    
  
  
  
  
  

}//end 

   
    
  
  
  
  


   