import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';

class Macarronada extends Product {
  Macarronada() : super(id: 1);

  @override
  String getDescription() {
    return 'Uma macarronada';
  }

  @override
  double getPrice() {
    return 7.5;
  }
}
