import 'package:flutter_solid/design_patterns/strategy/value_objects/value_object.dart';

class CreditCard extends ValueObject<String> {
  CreditCard(String number) : super(number);
}
