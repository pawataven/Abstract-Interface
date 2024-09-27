abstract class ElectricApliance {
  void On();
  void Off();
  void Work();
}

abstract class Fan1 extends ElectricApliance {
  @override
  void Off() {
    // TODO: implement Off
    print('Fan1: Off');
  }

  @override
  void On() {
    // TODO: implement On
    print('Fan1: On');
  }
}

class Fan2 extends Fan1 {
  @override
  void Work() {
    // TODO: implement Work
    print('Fan1: Work');
  }
}

void useElectricApliance(ElectricApliance elec) {
  elec.On();
  elec.Work();
  elec.Off();
}

void main(List<String> args) {
  useElectricApliance(Fan2());
  var toshiba = Fan2();
  useElectricApliance(toshiba);
}