Circle circle;

void setup() {
  size(300, 300);
  
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), #234562);
}

void draw() {
  background(200);

  circle.move();
  circle.display();
 }
