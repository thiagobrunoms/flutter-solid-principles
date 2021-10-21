import 'dart:convert';
import 'dart:math';

import 'package:flutter_solid/design_patterns/composite/product_catalog.dart';
import 'package:flutter_solid/design_patterns/composite/simple_product.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Composite tests', () {
    test('Add compound products', () {
      SimpleProduct risoto = SimpleProduct(id: 1, price: 5, name: 'Risoto');
      SimpleProduct coca = SimpleProduct(id: 2, price: 3, name: 'Coca-cola');

      ProductCatalog items = ProductCatalog();
      SimpleProduct cheese = SimpleProduct(id: 3, price: 1, name: 'Cheese');
      SimpleProduct ham = SimpleProduct(id: 3, price: 1, name: 'Ham');
      items.add(cheese);
      items.add(ham);

      ProductCatalog pc = ProductCatalog();
      pc.add(risoto);
      pc.add(coca);
      pc.add(items);

      expect(pc.getPrice(), 10.0);
    });

    test('Successfuly Remove products from composition', () {
      SimpleProduct risoto = SimpleProduct(id: 1, price: 5, name: 'Risoto');
      SimpleProduct coca = SimpleProduct(id: 2, price: 3, name: 'Coca-cola');

      ProductCatalog items = ProductCatalog();
      SimpleProduct cheese = SimpleProduct(id: 3, price: 1, name: 'Cheese');
      SimpleProduct ham = SimpleProduct(id: 3, price: 1, name: 'Ham');
      items.add(cheese);
      items.add(ham);

      ProductCatalog pc = ProductCatalog();
      pc.add(risoto);
      pc.add(coca);
      pc.add(items);

      pc.remove(coca);

      expect(pc.getPrice(), 7.0);
    });

    test('Map Products to JSON', () {
      ProductCatalog items = ProductCatalog();
      SimpleProduct cheese = SimpleProduct(id: 3, price: 1, name: 'Cheese');
      SimpleProduct ham = SimpleProduct(id: 4, price: 1, name: 'Ham');
      SimpleProduct ham2 = SimpleProduct(id: 4, price: 1, name: 'Ham');
      items.add(cheese);
      items.add(ham);
      items.add(ham2);

      ProductCatalog pc = ProductCatalog();
      SimpleProduct risoto = SimpleProduct(id: 1, price: 5, name: 'Risoto');
      SimpleProduct coca = SimpleProduct(id: 2, price: 3, name: 'Coca-cola');
      pc.add(risoto);
      pc.add(coca);
      pc.add(items);

      Map<String, dynamic> map = pc.toMap();
      print(json.encode(map));
      // expect(pc.getPrice(), 7.0);
    });
  });
}
