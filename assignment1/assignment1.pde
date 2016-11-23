PShape s;  // The PShape  for menu object
PImage img;
PFont font;

FirstPage fp;
Button b1, b2, b3;
Circle c1, c2;




//create 3 buttons for side menu
void initMenuButtons()
{
  b1 = new Button(1.5, height/5.2, width/4 +40, height / 8, initialColor, highlitedColor);
  b2 = new Button(1.5, height/2.55, width/4 +40, height / 8, initialColor, highlitedColor);
  b3 = new Button(1.5, height/1.71, width/4 +40, height / 8, initialColor, highlitedColor); 
}


boolean start = false;
boolean locked;
boolean checkButton1 = false;
boolean checkButton2 = false;
boolean checkButton3 = false;
color initialColor = color(112); //initial color for the buttons on the menu bar
color highlitedColor = color(255,0,0); //color for the buttons on the menu bar when mouse is over 

void setup() {

  size(1280, 720);
  
  fp = new FirstPage();
 
  menuShape();
  
  initMenuButtons();
  
  //Load and print periodicTable
   loadTable();
  //printPeriodicTable();
  
  img = loadImage("ironman3.jpg");
 
 
}//end setup()



ArrayList<PeriodicTable> periodicTable = new ArrayList<PeriodicTable>();

void loadTable()
{
  Table t = loadTable("periodicTable.csv");
  periodicTable.clear();
  for (int row = 0; row < t.getRowCount(); row ++)
   {
     PeriodicTable pt = new PeriodicTable(t.getInt(row, 0),
                       t.getString(row, 1),
                       t.getString(row, 2),              
                       t.getString(row, 13)                   
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

void draw() {
  
  if(start == false)
  {
    background(0);
    fp.drawFirstPage();
  }
  
  else
  {
      background(50);
      image(img, 0, 0, 1280, 720);
      shape(s, 0, height / 10); //big menu box
      
     
      update(mouseX, mouseY);
      
      b1.drawButton();
      b2.drawButton();
      b3.drawButton();
      
      //Text for contol panel/menu box
     
      textSize(height/18);
      fill(255, 55, 255);
      text("STATUS", width/15, height/3.6);
      text("TOXICITY", width/18, height/2.1);
      text("ENERGY", width/15, height/1.5);  
      
      //display the ironFace status when button pressed  
      if(checkButton1)
      {
          
      }
      
      if(checkButton2)
      {
        displayPeriodicTable();
      }
  }  
}

void update(int x, int y)
{

 if(locked == false) 
   {
    b1.updateButton();
    b2.updateButton();
    b3.updateButton();
  } 

  else 
  {
    locked = false;
  }
  
  if(mousePressed) {
    if(b1.onMousePress() )
    {
      checkButton1 = true;
      //fill(100,100,0);
      //rect(500,500, 349,574);
    }
    
    if(b2.onMousePress() )
    {
      checkButton2 = true; 
  
    }
    
    if(b3.onMousePress() )
    {
      checkButton3 = true;
    }
  }
}


//Displays the control menu bar as a rectangle in the left hand side of the screen
// Creating a custom PShape as a rectangle
// using vertex().
void menuShape()
{
  s = createShape();
  s.beginShape();
  s.noFill();
  
  float menuBoxWidth  = width / 4;
  float menuBoxHeight = height / 1.5;

  s.stroke(23, 255, 23);
  s.vertex(0, 0);
  s.vertex(menuBoxWidth, 0);
  s.vertex(menuBoxWidth*1.14, height/23.33);
  s.vertex(menuBoxWidth*1.14, menuBoxHeight);
  s.vertex(menuBoxWidth, menuBoxHeight + height/23.33);
  s.vertex(0, menuBoxHeight + height/23.33); 
  s.endShape(CLOSE); 
}//end menuShape()


//Display the elements of perodic table in rectangles
void displayPeriodicTable()
{
    background(123);

    int posx = 20;
    int posy = 20;
    float rectWidth = width/17 ;
    float rectHeight = height /10;
    for(int i = 0; i < periodicTable.size(); i++)
    {
      if(posx < width - rectWidth*1.5)
      {
        stroke(159, 242, 162);
        fill(184, 229, 242);
        rect( posx, posy , rectWidth, rectHeight);
     
        PeriodicTable pt = periodicTable.get(i);
        fill(50);
        int atomicNumber = periodicTable.get(i).getType();
        textSize(10);
        text(atomicNumber, posx + 5, posy + 15);
        text(periodicTable.get(i).getSymbol(),  posx + 40, posy + 15);
        text(periodicTable.get(i).getName(),  posx , posy + 40);
        text(periodicTable.get(i).getStandardState(),  posx + 43, posy + 65);
        
        posx += width/17 + 10;
      }
      else
      {
        posx = 20;
        posy += rectHeight + 10;
      }
      
    } 
}