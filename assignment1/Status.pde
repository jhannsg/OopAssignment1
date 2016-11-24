class Status{
 
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
  
  
   void statusChart()
  {
   String [] elements= {"Paladdium", "Oxygen", "Hydrogen", "Aluminium", "Titanium", "Magnesium", "Argon", "Nitrogen", "Sodium", "Zinc", "Krypton", "Vibranium", };
   
   int n; 
   n = elements.length;
   
   float [] values = new float[n];
   
   
   for(int i = 0; i < n; i++)
   {
      values[i] = random(0,100); 
      println(values[i]);
      
   }
   
   float maxValue;
   float minValue;
   float average;
   float sum;
   sum = 0;
   maxValue = values[0];
   minValue = values[0];
   
   for(int i = 0; i < n; i++)
   {
     if(maxValue < values[i])
     {
       maxValue = values[i];
     }
     
     if(minValue > values[i])
     {
       minValue = values[i];
     } 
     sum += values[i];
   }
   average  = sum / n;
   
   float chartHeight;
   float chartWidth;
   chartWidth = width / 2;
   chartHeight = height/ 2;
   
   float barWidth = chartWidth / n;
   float scaleFactor = chartHeight / maxValue;
   
   for(int i = 0; i < n; i++)
   {
     if(values[i] < 25)
     {fill(244,0,0);}
     if(values[i] > 25 && values[i] < 50)
     {fill(122,122,0);}
     if(values[i] > 50)
     {fill(0, 244, 0);}
     
     float y = i * barWidth + 200;
     rect (500, y, values[i] * scaleFactor, barWidth);  
   }
   
  } 
   
    
  
  
  
  
  

}//end 

   
    
  
  
  
  


   