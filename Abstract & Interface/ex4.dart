//interface modifier
abstract class Building {
  void draftBlueprint();
  void interior();
  void constuct();
}

class House implements Building {
  //ใช้เรียก super class ได้มากกว่า 1 class
  @override
  void constuct() {
    // TODO: implement constuct
    print('House: constucter');
  }

  @override
  void draftBlueprint() {
    // TODO: implement draftBlueprint
    print('House: Draftblueprint');
  }

  @override
  void interior() {
    // TODO: implement interior
    print('My: interior');
  }
}

void main(List<String> arg31) {
  var myHouse = House();
  myHouse.draftBlueprint();
  myHouse.constuct();
  myHouse.interior();
}
