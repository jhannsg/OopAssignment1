class PeriodicTable{
 int atomicNumber ;
 String symbol;
 String name;
 String standardState;
 int elementValue;

  //Constructor
  PeriodicTable(int atomicNumber, String symbol, String name, String standardState, int elementValue)
  {
    this.atomicNumber = atomicNumber;
    this.symbol = symbol;
    this.name = name;
    this.standardState = standardState;
    this.elementValue = elementValue;
    
  }
  

 String toString()
  {
    return atomicNumber + "\t" + symbol+ "\t" + name + "\t" + standardState;   
  }
 
  //used to acces a field of the arrayList
 public int getType(){
        return this.atomicNumber;       
  }
  
  //used to acces a field of the arrayList
  public String getSymbol(){
    return this.symbol;
  }
  
  //used to acces a field of the arrayList
  public String getName(){
    return this.name;
  }
  
  //used to acces a field of the arrayList
   public String getStandardState(){
    return this.standardState;
  }
  
  void returnButton()
   {
       int rx = 630;
       int ry = 560;
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
    }
  
  
  
}//end PeriodicTable()