Circle circle;
float circleD = random(25,75);
float xSpeed = random(-3,3);
float ySpeed = random(-3,3);
float xStartPos = random(width);
float yStartPos = random(height);
color grey = #838383;
float state = random(0,1);
float R = random(255);
float G = random (255);
float B = random (255);

void setup() {
  size(300, 300);
  
  
  circle = new Circle(xStartPos, yStartPos, xSpeed, ySpeed, circleD,R,G,B,state);
}

void draw() {
  background(grey);  
  circle.move();
  circle.display();
  
 }
