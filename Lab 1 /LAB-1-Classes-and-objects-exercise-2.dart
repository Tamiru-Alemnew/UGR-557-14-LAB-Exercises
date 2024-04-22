class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void makeNoise() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2022);
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
  myCar.makeNoise();
}
