abstract class Plane {
  //Abstract method ไม่สมบูร
  void fly();
  void moveForward(int meter);

  void takeOff() {
    //รูปเต็ม สมบูร
    print('Plane: takeOff()');
  }

  landing() => print('Plane: Landing'); //รูปย่อสมบูร
}

class Boeing extends Plane {
  @override
  void fly() {
    print('Boeing: fly');
  }

  @override
  void moveForward(int meter) {
    // TODO: implement moveForward
    print('Boeing move for ward() $meter Meters');
  }
}

void main(List<String> args) {
  //var p = plane();
  var boeing = Boeing();
  boeing.takeOff();
  boeing.landing();
  boeing.fly();
  boeing.moveForward(150);
}
