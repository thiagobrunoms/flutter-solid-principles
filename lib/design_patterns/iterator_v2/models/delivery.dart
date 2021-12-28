import 'package:flutter_solid/design_patterns/iterator_v2/models/address.dart';
import 'package:flutter_solid/design_patterns/iterator_v2/models/purchase.dart';
import 'package:flutter_solid/design_patterns/iterator_v2/models/store.dart';

class Delivery {
  final List<Purchase> purchasesToDeliver;
  final Store store;

  Delivery({required this.store, required this.purchasesToDeliver});
}
