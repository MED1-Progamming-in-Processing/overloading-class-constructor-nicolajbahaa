class Circle {
  float x;
  float y;
  float x2;
  float y2;
  float x3;
  float y3;
  float xSpeed;
  float ySpeed;
  float xSpeed2;
  float ySpeed2;
  float xSpeed3;
  float ySpeed3;
  float circleD;
  float state;
  float R;
  float G;
  float B;
  int A;
  int T;

  
  
 
  
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
  
   Circle(float x2, float y2, float xSpeed2, float ySpeed2, float circleD, float R, float G, float B, float state, int A) {
    this.x2 = x2;
    this.y2 = y2;
    this.xSpeed2 = xSpeed2;
    this.ySpeed2 = ySpeed2;
    this.circleD = circleD;
    this.R=R;
    this.G=G;
    this.B=B;
    this.A=A;
    this.state=state;
   }
   
   Circle(float x3, float y3, float xSpeed3, float ySpeed3, float circleD, float R, float G, float B, float state, int A, int T) {
    this.x3 = x3;
    this.y3 = y3;
    this.xSpeed3 = xSpeed3;
    this.ySpeed3 = ySpeed3;
    this.circleD = circleD;
    this.R=R;
    this.G=G;
    this.B=B;
    this.A=A;
    this.T=T;
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
     x2 += xSpeed2;
    if (x2 < 0 || x2 > width) {
      xSpeed2 *= -1;
    }

    y2 += ySpeed2;
    if (y2 < 0 || y2 > height) {
      ySpeed2 *= -1;
    }
     x3 += xSpeed3;
    if (x3 < 0 || x3 > width) {
      xSpeed3 *= -1;
    }

    y3 += ySpeed3;
    if (y3 < 0 || y3 > height) {
      ySpeed3 *= -1;
    }
    
    
  }
  
  void overlap(){
  float d=dist(circle.x,circle.y,circle1.x2,circle1.y2);
  if(d<circleD){
  circle.R=random(255);
  circle.G=random(255);
  circle.B=random(255);
  circle1.R=random(255);
  circle1.G=random(255);
  circle1.B=random(255);
   }
  }
    void overlap1(){
  float d=dist(circle.x,circle.y,circle2.x3,circle2.y3);
  if(d<circleD){
  circle.R=random(255);
  circle.G=random(255);
  circle.B=random(255);
  circle2.R=random(255);
  circle2.G=random(255);
  circle2.B=random(255);
   }
  }
  
   void overlap2(){
  float d=dist(circle1.x2,circle1.y2,circle2.x3,circle2.y3);
  if(d<circleD){
  circle1.R=random(255);
  circle1.G=random(255);
  circle1.B=random(255);
  circle2.R=random(255);
  circle2.G=random(255);
  circle2.B=random(255);
   }
  }
  
  
  void display(){
    
   
   fill(R,G,B);
   
   if(state == 1){
   ellipse(x, y, circleD, circleD);}
   if(state == 2){
     ellipse(x2,y2,circleD,circleD);}
   if(state == 3){
   ellipse(x3, y3, circleD, circleD);}
    
   }
   
  }
   
