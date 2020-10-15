class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float circleD;
  float state;
  float R;
  float G;
  float B;
  
  
 
  
  //circle = new Circle(xStartPos, yStartPos, xSpeed, ySpeed, circleD)
  Circle(float x, float y, float xSpeed, float ySpeed, float circleD, float R, float G, float B, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.circleD = circleD;
    this.R=R;
    this.G=G;
    this.B=B;
    this.state=state;
 
    
   
  }
  
  

  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
  
  void display(){
    
   
   fill(R,G,B);
   if(state <=0.5){
   ellipse(x, y, circleD, circleD);}
   else{
     rect(x,y,circleD,circleD);}
   
   
  }
}
