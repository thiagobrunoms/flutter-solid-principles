import 'package:flutter_solid/design_patterns/decorator/entities/ingrediente.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';

class Queijo extends Ingredient {
  Queijo(Product product) : super(product: product, ingredientId: 2);

  @override
  String getDescription() {
    return 'Um queijo';
  }

  @override
  double getPrice() {
    return product.getPrice() + 1.2;
  }
}
