//Pawat Wantrong 1130

abstract class Shape {
  void calculateArea();
}

abstract class Drawable {
  void draw();
}

class Circle implements Shape, Drawable {
  double? radius;
  @override
  Circle(this.radius);

  double calculateArea() {
    double sum = 3.14 * radius! * radius!;
    print('Area of Circle: ${sum}');
    return sum;
  }

  void draw() {
    print('"Drawing Circle with radius: $radius"');
  }
}

class Rectangle implements Shape, Drawable {
  double? width, height;

  Rectangle(this.width, this.height);
  @override
  double calculateArea() {
    double sum = width! * height!;
    print('Area of Rectangle: ${sum}');
    return sum;
  }

  void draw() {
    print('"Drawing Rectangle with width: $width and height: $height"');
  }
}

void main(List<String> args) {
  var ss = Circle(5);
  ss.draw();
  ss.calculateArea();
  
  var sss = Rectangle(10, 20);
  sss.draw();
  sss.calculateArea();

}
