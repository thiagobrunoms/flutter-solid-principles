import 'package:flutter/material.dart';
import 'package:flutter_solid/design_patterns/factory_method/models/employee.dart';
import 'package:flutter_solid/design_patterns/factory_method/view/abstract_card.dart';

class SeasonalEmployeeCard extends AbstractCard {
  SeasonalEmployeeCard(Employee employee) : super(employee: employee);

  @override
  Widget build() {
    return Row(
      children: [
        Text('Name: ${employee.name}'),
        const Icon(Icons.calendar_today)
      ],
    );
  }
}
