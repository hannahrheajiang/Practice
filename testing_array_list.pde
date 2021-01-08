ArrayList <Thingy> theList;

void setup(){
  theList = new ArrayList <Thingy>(); 
  Thingy myThing = new Thingy(7); // instance of object Thingy
    //System.out.println(myThing.getNum());
    
   theList.add(myThing); // adds myThing to array list
   theList.add(new Thingy(9));
   for (int i=0; i < (int)(Math.random()*30); i+=1){
     theList.add(new Thingy((int)(Math.random()*300)));
   }
   
   Thingy anotherItem = theList.get(1); //assigns first item of array list
   //System.out.println(anotherItem.getNum()); //getNum gets value of num (public getter function)
   //System.out.println(theList.size());
   
   display();
   
}

void display(){
  System.out.print("theList");
   for (int i=0; i < theList.size(); i+=1){
     System.out.print(" --> " + theList.get(i).getNum());
  }
}
