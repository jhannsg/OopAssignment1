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
  
  
  
}//end PeriodicTable()