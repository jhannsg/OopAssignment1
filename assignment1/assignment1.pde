PShape s;  // The PShape  for menu object
PImage img;
PImage mapImg;
PImage returnImg;


PFont font1;

color mainColor = color(0, 200, 0); //mai color

FirstPage fp;
Button b1, b2, b3;
Search search;
Status stat;
  

//create 3 buttons for side menu
void initMenuButtons()
{
  b1 = new Button(1.5, height/5.2, width/4 +40, height / 8, initialColor, highlitedColor );
  b2 = new Button(1.5, height/2.55, width/4 +40, height / 8, initialColor, highlitedColor);
  b3 = new Button(1.5, height/1.71, width/4 +40, height / 8, initialColor, highlitedColor); 
}

boolean start = false;
boolean locked;
boolean checkButton1 = false;
boolean checkButton2 = false;
boolean checkButton3 = false;
boolean activateHealth = false;

boolean backButton1 = false; //rerutn from status to main menu
boolean backButton2 = false;
boolean backButton3 = false;

color initialColor = color(112);        //initial color for the buttons on the menu bar
color highlitedColor = color(123);  //color for the buttons on the menu bar when mouse is over

ArrayList<PeriodicTable> periodicTable = new ArrayList<PeriodicTable>(); 
 
String [] elements = {"Palladium", "Oxygen", "Hydrogen", "Aluminium", "Titanium", "Magnesium", "Argon", "Nitrogen", "Sodium", "Zinc", "Krypton", "Vibranium", };
float [] values;
int n ;



void setup() {

  size(1280, 700);
  
  fp = new FirstPage();
 
  menuShape();
  
  initMenuButtons();
  
  loadTable();
  printPeriodicTable();
  
  img = loadImage("ironman3.jpg");
  mapImg = loadImage("map.jpg");
  returnImg = loadImage("return.png");
  
  search = new Search();
  
  stat = new Status();
  
  
  font1 = loadFont("MagmawaveCaps-Bold-48.vlw"); 
    
   //n = elements.length;
   
   values = new float[12];
  
   for(int i = 0; i < 12; i++)
   {
      values[i] = random(5,65); //genereate random values for elements
      println(values[i]); 
   } 
 
}//end setup()



void draw() {
  
  if(start == true)//change to false for loading
  {
    background(0);
    fp.drawFirstPage();
  }

  else //if( start == true && backButton1 == false || start == true && backButton1 == false)
  {
      background(50);
      image(img, 0, 0, 1280, 720);
      shape(s, 0, height / 10); //big menu box
      pushMatrix();
      translate(-200, 0);
      shape(s, 0, height / 10);
      popMatrix();
     
      update(mouseX, mouseY);
      
      b1.drawButton();
      b2.drawButton();
      b3.drawButton();
      
      //Text for contol panel/menu box
      textFont(font1,height/18);
      fill(255);
      text(" STATUS", width/15, height/3.6);
      text("  HEALTH", width/18, height/2.1);
      text("   MAP", width/15, height/1.5);  
      
      //display the ironFace status when button pressed  
      if(checkButton1 )
      {
        background(0);
        stat.drawGrid();
        stat.myBackground();
        stat.healthChart();       
        stat.circle();
        stat.heatLevel();   
        stat.returnButton();
       
      }
      
      if(checkButton2 && activateHealth)
      {
        displayPeriodicTable();
        
      }
      if(checkButton2 && !activateHealth)
      {       
        //background(0);
        //stat.drawGrid();
        errorMsg();      
        
      }
      
      if(checkButton3)
      {
        search.drawLines();
        search.radars();
          
      }
  }  
  
}//end draw


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
}//end update()


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