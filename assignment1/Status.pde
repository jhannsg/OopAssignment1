class Status{
  Button buton;
  
   float maxValue;
   float minValue;
   float average;
   float sum;
   color c;
 
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
  

   void healthChart()
  {
   String [] elements= {"Palladium", "Oxygen", "Hydrogen", "Aluminium", "Titanium", "Magnesium", "Argon", "Nitrogen", "Sodium", "Zinc", "Krypton", "Vibranium", };
   
   int n; 
   n = elements.length;
   
   float [] values = new float[n];
   
   
   for(int i = 0; i < n; i++)
   {
      values[i] = random(10,75); 
      println(values[i]);
      
   }
   
  
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
   chartWidth = width / 3;
   chartHeight = height/ 2;
   
   float barWidth = chartWidth / n;
   float scaleFactor = chartHeight / maxValue;
   
   for(int i = 0; i < n; i++)
   {
     if(values[i] < 25)
     {
       c = color(244,0,0);
     }
     if(values[i] > 25 && values[i] < 50)
     {c = color(122,122,0);}
     if(values[i] > 50)
     {c = color(0,244,0);}
     
     //drawChart and display name of element
     float y = i * barWidth +150;
     
     buton = new Button(150, y, values[i] * scaleFactor, barWidth, c , highlitedColor);
     buton.drawButton();
     buton.updateButton();
     //rect (150 , y  , values[i] * scaleFactor, barWidth);  
     
     fill(255, 255,255);
     textAlign(LEFT);
     textFont(font1, 20);
     text(elements[i] , 155 + values[i] * scaleFactor, y + barWidth - 5);
     textAlign(RIGHT);
     text(int(values[i]) + "%", 145 + values[i] * scaleFactor, y + barWidth - 5);
     
     
   }
   
   for(int i = 0; i < n; i++)
   {
     if(average < 40 || values[i] < 25)
     {
       //println("inside first if");
      // println(elements[i]);
   
       for(int j = 0; j < periodicTable.size(); j++)
       {
           if( elements[i].equals(trim(periodicTable.get(j).getName())))
            {
            println(elements[i] + periodicTable.get(j).getName());
            
                                      
            }
    
        }   
      } 
    }
   // noLoop();
  }
   
   void marginLines()
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

   
    
  
  
  
  


   