void loadTable()
{
  Table t = loadTable("periodicTable.csv");
  periodicTable.clear();
  for (int row = 0; row < t.getRowCount(); row ++)
   {
     PeriodicTable pt = new PeriodicTable(t.getInt(row, 0),
                       t.getString(row, 1),
                       t.getString(row, 2),              
                       t.getString(row, 13),
                       70  //added initial value for all elements in the table
                       );
     periodicTable.add(pt);
    
   }
}//end periodicTable()


void printPeriodicTable()
{
  for(int i = 0; i < periodicTable.size(); i++)
  {
    PeriodicTable pt = periodicTable.get(i);
    println(pt);
  }
}


//Display the elements of perodic table in rectangles
void displayPeriodicTable()
{
    int posx = width / 4 + 100;
    int posy = 50;
    float rectWidth = width/16 ;
    float rectHeight = height /10;
    for(int i = 0; i < periodicTable.size() - 38 ; i++)
    {
      fill(184, 229, 242);
      if(posx < width - rectWidth*1.5)
      {
        if (mouseX >= posx  && mouseX <= posx + rectWidth && 
            mouseY >= posy && mouseY <= posy + rectHeight)
        {          
            
            fill(244,244,244);
            stroke(255,0,0);
            rect(0, 570, 380, 150);
            fill(0);
            textFont(font2, 20);
            text(periodicTable.get(i).getName() + " has value :" + periodicTable.get(i).elementValue, 10, 590);
            text("Click on element to increase value", 10, 610);
            if(mousePressed && periodicTable.get(i).elementValue < 95)
            {  
              periodicTable.get(i).elementValue += 5;
            }
         }
         else
         {
            stroke(159, 242, 162);
            fill(184, 229, 242);
            if(periodicTable.get(i).elementValue < 35)
            {
              fill(255, 0, 0);
            }
           
         }           
          rect( posx, posy , rectWidth, rectHeight);
          
          PeriodicTable pt = periodicTable.get(i);
         
          fill(50); //text color
  
          int atomicNumber = periodicTable.get(i).getType();
          textFont(font2, 10);
          text(atomicNumber, posx + 5, posy + 15);
          text(periodicTable.get(i).getSymbol(),  posx + 40, posy + 15);
          text(periodicTable.get(i).getName(),  posx , posy + 40);
          text(periodicTable.get(i).getStandardState(),  posx + 43, posy + 65);
   
          posx += width/17 + 15;
        }
        else
        {
          posx = width / 4 + 100;
          posy += rectHeight + 10;
        }
      
    } 
}//end displayTable()


void errorMsg()
{
  fill(mainColor);
  textFont(font1,height/12);
  text("Check your status first",450, 500 );
  text(" And then come back",470, 560 );
  checkButton2 = false;  
}