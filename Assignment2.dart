/*
1. Class - Engine
The Engine class has attributes like fuel type(should be an Enum), horsepower, and efficiency.
The constructor initializes these attributes when creating an Engine object.
Methods like start, stop, and displayDetails are included to perform actions related to the engine.
In the main function, create the engine object and execute start, stop and display details methods
*/

enum fuelType { petrol, diesel, cng }

//abstract
class Engine implements Service {
  //The Engine class has attributes like fuel type(should be an Enum), horsepower, and efficiency.
  fuelType fuel;
  int horsepower;
  double efficiency;

// The constructor initializes these attributes when creating an Engine object.
  Engine(this.horsepower, this.efficiency, this.fuel);
// Methods like start, stop, and displayDetails are included to perform actions related to the engine.
  //void StartEngine() {}

  @override
  void checkEngineCondition() {
    print("Good for all petrol vehicles and Bad Diesel vehicles ");
  }

  void StartEngine() {
    print("Engine Started");
  }

  //void StopEngine() {}
  void StopEngine() {
    print("Engine Stoped");
  }

  //void DisplayDetails() {}
  void DisplaDetails() {
    print("HorsePower : $horsepower");
    print("Engine Efficieny : $efficiency");
    print("Engine fuel type is : $fuel");
  }
}

/*
Class - Car Engine
Class CarEngine should be derived from Engine class.
Should have attributes of Engine Class and additional attribute ‘cylinders’ and ‘cc’ and ‘model’’
Override the display details to include cylinder details 
In the main function create the carEngine object and execute start, stop and display details.
Display details should print `Model - Car Engine` followed by the other details.
Create Factory methods for creating xuv300, xuv500, xuv700 with prefilled data for horsePower, efficiency, cylinders, cc and model(to be set to the variant xuv300, xuv500 and xuv700 respectively) and required params for fuel type.
Create objects for xuv300Petrol, xuv500Petrol and xuv700Petrol and similarly for diesel variants.
*/

// Class CarEngine should be derived from Engine class.
class CarEngine extends Engine {
// Should have attributes of Engine Class and additional attribute ‘cylinders’ and ‘cc’ and ‘model’’
  int cylinders;
  int cc;
  String model;

  CarEngine(this.cc, this.cylinders, this.model, int horsepower,
      double efficiency, fuelType fuel)
      : super(horsepower, efficiency, fuel);

  //@override

  void StartEngine() {
    print("Engine Started");
  }

  void StopEngine() {
    print("Engine Stoped");
  }

  void DisplaDetails() {
    print("model:$model");
    print("cc:$cc");
    print("Cylinder : $cylinders");
    print("HorsePower : $horsepower");
    print("Engine Efficieny : $efficiency");
    print("Engine fuel type is : $fuel");
  }

// factory constructor
  factory CarEngine.xuv300(fuelType fuel) {
    return CarEngine(300, 4, 'Xuv', 300, 50, fuel);
  }

  factory CarEngine.xuv500(fuelType fuel) {
    return CarEngine(500, 5, 'Xuv500', 500, 50, fuel);
  }

  factory CarEngine.xuv700(fuelType fuel) {
    return CarEngine(700, 6, 'Xuv700', 700, 50, fuel);
  }
}

/*
  Create Factory methods for creating xuv300, xuv500, xuv700 with prefilled data for horsePower, efficiency, cylinders, cc and model(to be set to the variant xuv300, xuv500 and xuv700 respectively) and required params for fuel type.
  */

/*class CarFactory {
  static CarEngine xuv300(fuelType fuel) {
    return CarEngine(200, 2, "XUV", 7, 33.33, fuel);
  }

  static CarEngine xuv500(fuelType fuel) {
    return CarEngine(300, 2, "XUV", 7, 43.33, fuel);
  }

  static CarEngine xuv700(fuelType fuel) {
    return CarEngine(400, 2, "XUV", 7, 53.33, fuel);
  }
}*/

/*

 Interface - Service
Create an interface Service 
Define a checkEngineCondition method
Engine class should implement Service Interface
Car Engine class should override checkEngineCondition and print Good for all petrol vehicles and Bad Diesel vehicles 
*/

abstract class Service {
  void checkEngineCondition();
}

/*
Class - Truck Engine
Create a TruckEngine class and should be derived from Engine class
Should have attributes of Engine Class and additional attribute ‘Cargo’ capacity
Override the display details to include cargo capacity details. Display details should print `Truck Engine` followed by the other details.
In the main function create the carEngine object and execute start, stop and display details.
*/

class TruckEngine extends Engine {
  int CargoCapacity;

  TruckEngine(
      this.CargoCapacity, int horsepower, double efficiency, fuelType fuel)
      : super(horsepower, efficiency, fuel);

  void DisplayDetails() {
    print("Cargo Capacity : $CargoCapacity");
    print("HorsePower : $horsepower");
    print("Engine Efficieny : $efficiency");
    print("Engine fuel type is : $fuel");
  }
}

/*
 Class - SuperCar Engine 
Class SuperCar Engine should be derived from the CarEngine class.
Should have attributes of CarEngine and additional attributes ‘hasTurbo(bool)’, specialFeatures(list), topSpeed
Display details should print `Model - SuperCar Engine` followed by the other details.
*/

class SuperCarEngine extends CarEngine {
  bool hasTurbo;
  List<String> specialFeatures;
  int topSpeed;

  SuperCarEngine(
      this.hasTurbo,
      this.specialFeatures,
      this.topSpeed,
      int cc,
      int cylinders,
      String model,
      int horsepower,
      double efficiency,
      fuelType fuel)
      : super(cc, cylinders, model, horsepower, efficiency, fuel);

  @override
  void DisplaDetails() {
    print("IT has turbo : $hasTurbo");
    print("Special Features: $specialFeatures");
    print("Its Top Speed : $topSpeed");
    print("model:$model");
    print("cc:$cc");
    print("Cylinder : $cylinders");
    print("HorsePower : $horsepower");
    print("Engine Efficieny : $efficiency");
    print("Engine fuel type is : $fuel");
  }
}

/*
Extension - CarExtension
Create an Extension on Car class with method convertToSuperCar()
convertToSuperCar extension should convert the Car obj to a Super Car object.
Create a xuv500 object using the factory method Car.xuv500(FuelType.petrol) 
Execute xuv500.display details(). 
Expected output is - xuv500 - Car Engine followed by other details
Assign xuv500 = xuv500.convertToSuperCar()
Execute xuv500.displayDetails()
Expected output is - xuv500 - SuperCar Engine followed by other details
*/

extension on CarEngine {
  SuperCarEngine convertToSuperCar() {
    SuperCarEngine superCarEngine = SuperCarEngine(true, ["airbags", "turbos"],
        300, 500, 5, "Lambo", 300, 66.66, fuelType.cng);
    return superCarEngine;
  }
}

void main() {
// In the main function, create the engine object and execute start, stop and display details methods

// In the main function create the carEngine object and execute start, stop and display details.
  CarEngine carEngine =
      CarEngine(300, 4, "new model", 110, 60, fuelType.diesel);
  carEngine.StartEngine();
  carEngine.DisplaDetails();
  carEngine.StopEngine();

  //

  CarEngine xuv300Petrol = CarEngine.xuv300(fuelType.petrol);
  CarEngine xuv500Petrol = CarEngine.xuv500(fuelType.petrol);
  CarEngine xuv700Petrol = CarEngine.xuv700(fuelType.petrol);

  CarEngine xuv300Diesel = CarEngine.xuv300(fuelType.diesel);
  CarEngine xuv500Diesel = CarEngine.xuv500(fuelType.diesel);
  CarEngine xuv700Diesel = CarEngine.xuv700(fuelType.diesel);

  xuv300Petrol.DisplaDetails();
  xuv500Petrol.DisplaDetails();
  xuv700Petrol.DisplaDetails();

  xuv700Diesel.DisplaDetails();
  xuv500Diesel.DisplaDetails();
  xuv300Diesel.DisplaDetails();

  TruckEngine truckEngine = TruckEngine(4, 300, 80, fuelType.diesel);
  truckEngine.StartEngine();
  truckEngine.DisplaDetails();
  truckEngine.StopEngine();

  SuperCarEngine superCarEngine = SuperCarEngine(
      true,
      ["airbags", "power stearing"],
      200,
      500,
      4,
      "Ferrari",
      7,
      90.9,
      fuelType.petrol);

  superCarEngine.DisplaDetails();

  CarEngine xuv500 = CarEngine.xuv300(fuelType.petrol);
  xuv500.DisplaDetails();
  xuv500 = xuv500.convertToSuperCar();
  xuv500.DisplaDetails();
}
