class Circle {
  double radius;
  Circle(this.radius);
}

class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
}

double calculateArea(dynamic shape) {
  shape..toString();  

  if (shape is Circle) {
    return 3.1416 * shape.radius * shape.radius;
  } else if (shape is Rectangle) {
    return shape.width * shape.height;
  } else {
    return -1; 
  }
}

void main() {
  var circle = Circle(5)..radius = 5;
  var rectangle = Rectangle(4, 6)..width = 4..height = 6;

  print(calculateArea(circle) != -1
      ? "Circle Area: ${calculateArea(circle)}"
      : "Unknown shape");

  print(calculateArea(rectangle) != -1
      ? "Rectangle Area: ${calculateArea(rectangle)}"
      : "Unknown shape");

  print(calculateArea("text") != -1
      ? "Area: ${calculateArea("text")}"
      : "Unknown shape");
}

  