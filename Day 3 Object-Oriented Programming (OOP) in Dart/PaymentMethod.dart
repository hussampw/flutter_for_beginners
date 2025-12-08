abstract class PaymentMethod {
  double get balance;
  bool pay(double amount);
  String get description;
}
class CreditCard implements PaymentMethod {
  final String cardNumber; double _balance;
  CreditCard(this.cardNumber, this._balance);
  @override double get balance => _balance;
  @override bool pay(double amount) {
    if (amount <= _balance) { _balance -= amount; print('Paid \$${amount} with Credit Card $cardNumber'); return true; } return false; }
  @override String get description => 'Credit Card ending in ${cardNumber.substring(12)}';
}
class PayPal extends PaymentMethod {
  String email; double _balance;
  PayPal(this.email, this._balance);
  @override double get balance => _balance;
  @override bool pay(double amount) {
    _balance -= amount; print('Paid \$${amount} with PayPal ($email)'); return true; }
  @override String get description => 'PayPal: $email';
}
void processPayment(PaymentMethod method, double amount) {
  print('Using: ${method.description}');
  if (method.pay(amount)) {
    print('Payment successful! Remaining balance: \$${method.balance}');
  }
}
