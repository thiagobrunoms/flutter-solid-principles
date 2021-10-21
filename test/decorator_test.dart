import 'package:flutter_solid/design_patterns/decorator/entities/ingrediente.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/macarronada.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/pizza.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/presuto.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/product.dart';
import 'package:flutter_solid/design_patterns/decorator/entities/queijo.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Object testing', () {
    Product pizza = Pizza();
    Ingredient i1 = Queijo(pizza);
    Ingredient i2 = Queijo(pizza);

    expect(i1, i2);
  });
  group('Adding and removing products', () {
    test('Adding products and ingredients', () {
      Product product = Macarronada();

      product = Queijo(product);
      product = Queijo(product);
      product = Presunto(product);
      product = Presunto(product);
      product = Presunto(product);

      expect(product.getPrice(), 20.099999999999998);
    });
  });
}
