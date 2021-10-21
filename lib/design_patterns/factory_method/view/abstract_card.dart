import 'package:flutter/material.dart';
import 'package:flutter_solid/design_patterns/factory_method/models/employee.dart';

abstract class AbstractCard {
  Employee employee;

  AbstractCard({required this.employee});

  Widget create() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            build(),
          ],
        ),
      ),
    );
  }

  Widget build();
}
