import 'Refual.dart';
import 'Transport.dart';

class Car extends Transport  implements Refual {
Car(double speed) : super(speed);
@override
void refual() {
  print("Refualing the car...");
}

}