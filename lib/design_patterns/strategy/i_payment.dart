import 'package:flutter_solid/design_patterns/strategy/i_payment_entity.dart';

abstract class IPayment {
  Future<bool> pay(IPaymentEntity payment);
}
