import 'package:flutter_solid/design_patterns/decorator/entities/ingrediente.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';
// import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';

class Presunto extends Ingredient {
  Presunto(Product product) : super(product: product, ingredientId: 1);

  @override
  String getDescription() {
    return 'Um ingrediente de presunto';
  }

  @override
  double getPrice() {
    return product.getPrice() + 3.4;
  }
}
