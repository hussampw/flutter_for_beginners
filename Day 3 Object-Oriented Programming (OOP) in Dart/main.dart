abstract class Payment{
  int? paymentId;
  void pay(){
    print("Payment done");
  }
}

 class Refound{
  void process(){}
  //int? refoundId;
}
mixin Discount{
  double applyDiscount(double amount){
    return amount * 0.9; // 10% discount
  }
}
class Card extends Payment with Discount  implements Refound {
  @override
  void pay(){
    print("Payment done by Card");
    super.pay();
  }
  @override
  void process(){
    print("Refound processed for Card");
  }
  @override
  double applyDiscount(double amount) {
    print("object");
    return 0.0;
  }
}

class Cash extends Payment with Discount{}
class Transfer extends Payment{}



void main(){
List<Payment> payments = [Card(), Cash()];
List<Discount> discounts = [Card()];
Card card = Card();
card.process();
card.applyDiscount(50);
for(var payment in payments){
  payment.pay(); 
   
}
}




















// import 'preson.dart';
// import 'rectangle.dart';
// void main(){
// // Person p1 =  Person(25,"Ahmed","Ali");
// // Person p2 = Person.newBorn("Sara","Khan");
// // print(p2.fullName);
// // print(p2.getfullName);
// // p1.introduce();
// // p2.introduce();

// // Rectangle rectangle = Rectangle(5.0, 10.0);
// // rectangle.color = "Blue";
// // print("Rectangle color: ${rectangle.color}");

// }