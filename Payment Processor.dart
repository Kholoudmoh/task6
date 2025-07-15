class CardPayment {
  double amount;
  String cardNumber;
  CardPayment(this.amount, this.cardNumber);
}

class CashPayment {
  double amount;
  CashPayment(this.amount);
}

String processPayment(dynamic payment) {
  payment..toString(); 

  if (payment is CardPayment) {
    double finalAmount = payment.amount *
        (payment.cardNumber.startsWith("5") ? 1.02 : 1.00);
    return "Processed Card Payment: \$${finalAmount.toStringAsFixed(2)}";
  } else if (payment is CashPayment) {
    double converted = payment.amount *
        (payment.amount > 1000 ? 0.9 : 1);
    return "Processed Cash Payment: \$${converted.toStringAsFixed(2)}";
  } else {
    return "Unknown payment method";
  }
}

void main() {
  var card = CardPayment(200, "5123456789012345");
  var cash = CashPayment(1200);

  print(processPayment(card));
  print(processPayment(cash));
  print(processPayment("Invalid"));
}