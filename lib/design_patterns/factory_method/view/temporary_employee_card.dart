import 'package:flutter/material.dart';
import 'package:flutter_solid/design_patterns/factory_method/models/employee.dart';
import 'package:flutter_solid/design_patterns/factory_method/view/abstract_card.dart';

class TemporaryEmployeeCard extends AbstractCard {
  TemporaryEmployeeCard(Employee employee) : super(employee: employee);

  @override
  Widget build() {
    return Row(
      children: [Text('Name: ${employee.name}'), const Icon(Icons.timelapse)],
    );
  }
}
