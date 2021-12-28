import 'package:flutter_solid/design_patterns/iterator_v2/models/address.dart';

class Purchase implements Comparable<DateTime> {
  final Address address;
  final DateTime date;

  Purchase({required this.address, required this.date});

  static Comparator<Purchase> distanceComparator =
      (a, b) => a.address.distance.compareTo(b.address.distance);

  @override
  int compareTo(DateTime other) {
    if (date.isBefore(other)) return -1;

    if (date.isAfter(other)) return 1;

    return 0;
  }
}
