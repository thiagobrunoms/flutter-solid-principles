import 'package:flutter_solid/design_patterns/iterator_v2/iterators/my_iterator.dart';

abstract class MyCollection<T> {
  MyIterator<T> createIterator();
}
