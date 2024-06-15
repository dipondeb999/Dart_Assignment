class Car{
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of the number of car objects created
  static int numberOfCars = 0;

  //Constructor
  Car(this.brand, this.model, this.year,this.milesDriven){
    numberOfCars++;
  }

  // Method to drive the car and add miles
  void drive(double miles){
    milesDriven += miles;
  }

  // Getter methods
  double getMilesDriven() => milesDriven;
  String getBrand() => brand;
  String getModel() => model;
  int getYear() => year;

  // Method to get the age of the car
  int getAge(){
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}
void main(){
  // Create three car objects
  Car car1 = Car('Toyota', 'Corolla', 2010, 50000.0);
  Car car2 = Car('Honda', 'Civic', 2015, 30000.0);
  Car car3 = Car('Ford', 'Mustang', 2020, 10000.0);

  // Driving each car a different number of miles
  car1.drive(150.0);
  car2.drive(200.0);
  car3.drive(300.0);

  // Printing out the details of each car
  List<Car> cars = [car1, car2, car3];
  for (Car car in cars){
    print('Brand : ${car.getBrand()}');
    print('Model : ${car.getModel()}');
    print('Year : ${car.getYear()}');
    print('Miles Driven : ${car.getMilesDriven()}');
    print('Age : ${car.getAge()}');
    print('-' * 20);
  }
  // Printing out the total number of car objects created
  print('Total number of car objects created : ${Car.numberOfCars}');
}
