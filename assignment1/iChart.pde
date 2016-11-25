class IChart{
  
  void healthChart()
  {
   String [] elements= {"Palladium", "Oxygen", "Hydrogen", "Aluminium", "Titanium", "Magnesium", "Argon", "Nitrogen", "Sodium", "Zinc", "Krypton", "Vibranium", };
   
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
   chartWidth = width / 3;
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
     
     float y = i * barWidth +200;
     rect (500, y, values[i] * scaleFactor, barWidth);  
   }
   
   for(int i = 0; i < n; i++)
   {
     if(average < 40 || values[i] < 25)
     {
       println("inside first if");
       println(elements[i]);
   
       for(int j = 0; j < periodicTable.size(); j++)
       {
        println( periodicTable.get(j).getName());
            if( periodicTable.get(j).getName().equals(elements[i]) )
            {
            println("asdadadasdasda");
                  buton = new Button(width/2, height/2, 200, 100);
                  
              
            }
    
        }   
      } 
    }
    noLoop();
  }
  
}