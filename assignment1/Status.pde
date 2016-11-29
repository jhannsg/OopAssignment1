class Status{
  Button buton;

   
   float maxValue;
   float minValue;
   float average;
   float sum;
   color c =  color(0, 200, 0);
   color c1 = color(25, 220, 20);
   
  
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
  
  
   void healthChart()//float [] vals, String [] elms)
  {
   fill(255, 255,255);
   textAlign(LEFT);
   textFont(font1, 20);
   text("HEALTH ANALISYS MONITOR v098.21", 20, 20);
    
   int n = elements.length;
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
   average  = sum / values.length;
   
   float chartHeight;
   float chartWidth;
   chartWidth = width / 3;
   chartHeight = height/ 2;
   
   float barWidth = chartWidth / n;
   float scaleFactor = chartHeight / maxValue;
   
   //draw chart
   for(int i = 0; i < n; i++)
   {
     if(values[i] < 25)
     {
       c = color(244,0,0);
     }
     if(values[i] > 25 && values[i] < 50)
     {
       c = color(122,122,0);
     }
     if(values[i] > 50)
     {
       c = color(0,244,0);
     }
     
     //drawChart and display name of element
     float y = i * barWidth +150;
    
     buton = new Button(150, y, values[i] * scaleFactor, barWidth, c , c1);
     
     buton.drawButton();
     noStroke();
     buton.updateButton();
     
     fill(255, 255,255);
     textAlign(LEFT);
     textFont(font1, 20);
     text(elements[i] , 155 + values[i] * scaleFactor, y + barWidth - 5);
     textAlign(RIGHT);
     text(int(values[i]) + "%", 145 + values[i] * scaleFactor, y + barWidth - 5); 
   }
   
   //find elements identical with the one in arrayList
   for(int i = 0; i < n; i++)
   {
     if(average < 40 || values[i] < 25)
     {   
       for(int j = 0; j < periodicTable.size(); j++)
       {
          if( elements[i].equals(trim(periodicTable.get(j).getName())))
          {
            println(elements[i] + periodicTable.get(j).getName() +  periodicTable.get(j).elementValue);                        
            periodicTable.get(j).elementValue = (int)values[i];
            println(elements[i] + periodicTable.get(j).getName() + periodicTable.get(j).elementValue);
          }
        }   
      } 
    }
    
    textAlign(LEFT);
    if (values[0] < 25)
    {
      text ("Palladium - " + (int)values[0]+ "%", 675, 135); 
     // fill(255,0,0);
      text("DANGER", 900, 135);
    }
    else if (values[0] > 25 && values[0] < 50)
    {
      text ("Palladium - " + (int)values[0]+ "%", 675, 135);     
      text("LOW LEVEL", 900, 135);
    }
    else if ( values[0] > 50)
    {
      text ("Palladium - " + (int)values[0]+ "%", 675, 135); 
      text("GOOD LEVEL", 900, 135);    
    }
    
    
    text("HEAT", 715, 215);
    text("465", 920, 215);
    
    //noLoop();
  }
   
   void myBackground()
   {     
     strokeWeight(4);
     stroke(255,255,255);

     line(100, 100, 200, 50);
     line(200, 50, 1050, 50); 
     line(1050, 50, 1150, 100);
     
     line(100, 630, 200, 680);
     line(200, 680, 1050, 680);
     line(1050, 680, 1150, 630);
          
   }
   
   void drawGrid()
   {
      //draw the grid
      strokeWeight(1);
      for(int i = 0; i <= rowCount; i++)
      {
        for(int j = 0; j <= colCount ; j++)
        {
          stroke(0, 199, 0);
           line(0, j* celHeight , width, celHeight * j);
           line(j* celWidth  ,0 , celWidth * j, height  );
        }
      }
   }
   
   int rowCount = 10;
   int colCount = 15;   
   float celWidth = width  / (float)colCount;
   float celHeight = celWidth;
   
   
   //draw a circle and show the percentage of health on it using arc()
   void circle()
   {
     c =  color(0, 200, 0);
     stroke(mainColor);
     strokeWeight(2);
     noFill();
     ellipse(950, 500, 200, 200);
     fill(c);
     
     float y1 = map(sum, 0, 1200, 0, TWO_PI);
     float y2 = map(1200 , 0, 1200, 0, TWO_PI);
     
     float perc1 = map(sum, 0, 1200, 0, 100);
     float perc2 = map(1200 - sum, 0, 1200, 0, 100);
     
     arc(950, 500, 200, 200, 0, y1, PIE);
     textFont(font1,14);
     textAlign(LEFT);
     fill(255,255,255);
     text(perc1 + "%" , 940, 540);
     
     fill(255, 0, 0);
     arc(950, 500, 200, 200, y1, y2, PIE); //start from the end of first arc()
     textFont(font1,14);
     fill(255,255,255);
     text(perc2 + "%" , 930, 460);   
   }
   
   void heatLevel()
   {
     stroke(0, 122, 244);
     strokeWeight(1);
     noFill();
     rect(670, 100, 400, 60);
     line(870, 100, 870, 160);
     rect(670, 180, 400, 60);
     line(870, 180, 870, 240);      
   }//end heatLevel
  
   void returnButton()
   {
       int rx = 615;
       int ry = 615;
       int size = 50;
       
       rect(rx, ry, size, size);
       image(returnImg, 600, 560, size, size);
       if (mouseX >= rx  && mouseX <= rx + size && 
          mouseY >= ry && mouseY <= ry + size)
       { 
         
         fill(255,255,255);
          if(mousePressed)
          {          
            backButton1 = true; 
            checkButton1 = false;
            activateHealth = true;
          }
       }
       else
       {
         fill(122, 244, 0);
       }
       
       rect(rx, ry, size, size);
       image(returnImg, rx, ry, size, size);
          
        println(backButton1);
        println(mouseX);
        //exit();
       // return checkButton;
        //return backButton;
    }  
    

}//end 

   
    
  
  
  
  


   