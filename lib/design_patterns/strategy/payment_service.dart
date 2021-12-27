import 'package:flutter_solid/design_patterns/strategy/i_payment.dart';

class PaymentService {
  IPayment? payment;

  set paymentStrategy(IPayment? payment) => this.payment = payment;

  Future<void> pay() async {
    await payment?.pay();
  }
}
