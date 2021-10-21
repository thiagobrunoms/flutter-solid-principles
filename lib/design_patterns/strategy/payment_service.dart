import 'package:flutter_solid/design_patterns/strategy/i_payment.dart';
import 'package:flutter_solid/design_patterns/strategy/i_payment_entity.dart';

class PaymentService {
  IPayment? payment;

  set paymentStrategy(IPayment payment) => this.payment = payment;

  Future<void> pay(IPaymentEntity paymentEntity) async {
    await payment?.pay(paymentEntity);
  }
}
