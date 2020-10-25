Circle circle;
Circle circle1;
Circle circle2;

float circleD = random(25,75);
float xSpeed = random(-3,3);
float ySpeed = random(-3,3);
float xSpeed2 = random(-3,3);
float ySpeed2 = random(-3,3);
float xSpeed3 = random(-3,3);
float ySpeed3 = random(-3,3);
float xStartPos = random(width);
float yStartPos = random(height);
float xStartPos2 = random(width);
float yStartPos2 = random(height);
float xStartPos3 = random(width);
float yStartPos3 = random(height);
color grey = #838383;
float R = random(255);
float G = random (255);
float B = random (255);

void setup() {
  size(300, 300);
  
  
  circle = new Circle(xStartPos, yStartPos, xSpeed, ySpeed, circleD,R,G,B,1);
  circle1 = new Circle(xStartPos2, yStartPos2, xSpeed2, ySpeed2, circleD,R,G,B,2,1);
  circle2 = new Circle(xStartPos3, yStartPos3, xSpeed3, ySpeed3, circleD,R,G,B,3,1,1);
}

void draw() {
  background(grey);  
  circle.move();
  circle.display();
  circle.overlap();
  circle.overlap1();

  circle1.move();
  circle1.display();
  circle1.overlap();
  circle1.overlap2();
       
  circle2.move();
  circle2.display();
  circle2.overlap1();
  circle2.overlap2();
  
 }
