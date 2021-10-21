import 'package:flutter_solid/design_patterns/iterator/iterators/i_my_iterator.dart';

abstract class ITreeCollection<T> {
  MyIterator<T> createIterator();
}
