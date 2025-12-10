import 'Bus.dart';
import 'Car.dart';
import 'Transport.dart';
import 'bike.dart';

void main(){
  List<Transport> transports = [
    Car(120),
    Bus(80),
    Bike(40),
  ];
  Bus bus = Bus(80);
  bus.showLocation("New York");
}