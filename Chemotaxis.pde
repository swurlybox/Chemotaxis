//declare bacteria variables here   
Bacteria [] bob = new Bacteria[10];
Food bruh = new Food();
 void setup()   
 {     
   size(500,500);
   for(int i = 0; i < bob.length; i++){
        bob[i] = new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 
 
 
 
 
 void draw()   
 {    
   background(200);
   for(int i = 0; i < bob.length; i++){
     bob[i].show();
     bob[i].move();

     
     if(mousePressed){
        bruh.myX = mouseX;
        bruh.myY = mouseY;
        
        if(bob[i].myX < bruh.myX - 50){
          bob[i].myX = bob[i].myX + (int)((Math.random()*10) - 2);
        }
        
        if(bob[i].myX > bruh.myX + 50){
          bob[i].myX = bob[i].myX - (int)((Math.random()*10) - 2);
        }
        
        if(bob[i].myY > bruh.myY + 50){
          bob[i].myY = bob[i].myY - (int)((Math.random()*10) - 2);
        }
        
        if(bob[i].myY < bruh.myY - 50){
          bob[i].myY = bob[i].myY + (int)((Math.random()*10) - 2);
        }
        
        bruh.show();
   
     }
     
     

   
   
   }
   //move and show the bacteria   
 }  
 
 
 class Bacteria    
 {     
   int myX,myY,myColor;
   Bacteria(){
     myX = 250;
     myY = 250;
     myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }
   
   void show(){
     noStroke();
     fill(myColor,200);
     ellipse(myX,myY,20,20);
   }
   
   void move(){
     myX = myX + (int)(Math.random()*15) - 7;
     myY = myY + (int)(Math.random()*15) - 7;
     
   }
   //lots of java!   
 }   
 
 class Food{
   int myX,myY;
   Food(){
     myX = (int)((Math.random()*400) + 50);
     myY = (int)((Math.random()*400) + 50);
   }
   
   void show(){
     fill(0,50);
     ellipse(myX,myY,50,50);
   }
 
 
 
 
 
 }
