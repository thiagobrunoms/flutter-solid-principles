import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';

class Pizza extends Product {
  Pizza() : super(id: 2);

  @override
  String getDescription() {
    return 'Uma pizza';
  }

  @override
  double getPrice() {
    return 5.0;
  }
}
