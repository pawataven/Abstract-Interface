abstract class shape {
  int dim1;
  int dim2;

  //constructer
  shape(this.dim1, this.dim2);

  //Abstract Mothod
  void area();
}

class Rectangle extends shape {
  Rectangle(super.dim1, super.dim2);
  @override
  int area() {
    int sum = dim1 * dim2;
    print('The area of the Rectangle = ${sum}');
    return sum;
  }
}

class Triangle extends shape {
  Triangle(super.dim1, super.dim2);

  @override
  double area() {
    double sum = 1 / 2 * dim1 * dim2;
    print('The area of the Triangle = ${sum}');
    return sum;
  }
}

void main(List<String> args) {
  var sumRectangle = Rectangle(20, 10);
  var sumTraingle = Triangle(20, 10);

  sumRectangle.area();
  sumTraingle.area();
}
