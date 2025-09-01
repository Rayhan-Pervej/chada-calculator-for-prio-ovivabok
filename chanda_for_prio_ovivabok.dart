class Chada {
  String? serviceName;
  int? baseChada;
  Chada({this.baseChada, this.serviceName});

  void displayInfo() {
    print('Service: $serviceName, Base Chada: $baseChada');
  }

  double calculateChada({int? quantity, double? extraPercent}) {
    if (quantity != null && extraPercent == null) {
      return baseChada!.toDouble() * quantity;
    } else if (quantity != null && extraPercent != null) {
      return baseChada!.toDouble() * quantity +
          (baseChada!.toDouble() * quantity * extraPercent / 100);
    } else {
      return baseChada!.toDouble();
    }
  }
}

class BusChada extends Chada {
  BusChada(String serviceName, int baseChada)
    : super(serviceName: serviceName, baseChada: baseChada);
  @override
  void displayInfo() {
    print("Service: $serviceName, Base Chada: $baseChada");
  }
}

class AutoStandChada extends Chada {
  AutoStandChada(String serviceName, int baseChada)
    : super(serviceName: serviceName, baseChada: baseChada);
  @override
  void displayInfo() {
    print("Service: $serviceName, Base Chada: $baseChada");
    print("Includes: Extra 10% for prio ovivabok + singara coke costs");
  }
}

void main() {
  BusChada bus = BusChada("Asim", 50);
  AutoStandChada auto = AutoStandChada("bashundhara auto", 40);

  print("BusChada base: ${bus.calculateChada()}");
  print("BusChada for 3 services: ${bus.calculateChada(quantity: 3)}");
  print(
    "BusChada for 3 services with 10% extra: ${bus.calculateChada(quantity: 3, extraPercent: 10)}",
  );

  print("AutoStandChada base: ${auto.calculateChada()}");
  print("AutoStandChada for 2 services: ${auto.calculateChada(quantity: 2)}");
  print(
    "AutoStandChada for 2 services with 10% extra: ${auto.calculateChada(quantity: 2, extraPercent: 10)}",
  );

  Chada chadaRef;
  chadaRef = bus;
  chadaRef.displayInfo();
  chadaRef = auto;
  chadaRef.displayInfo();
}
