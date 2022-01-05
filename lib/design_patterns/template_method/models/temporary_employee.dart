import 'package:flutter_solid/design_patterns/template_method/models/employee.dart';

class TemporaryEmployee extends Employee {
  int months;

  TemporaryEmployee(
      {required String name, required int numberOfSales, required this.months})
      : super(name: name, numberOfSales: numberOfSales);

  @override
  double calculateSalary() {
    return baseSalary * months;
  }

  @override
  String formatFinalMessage() {
    return 'Relatório Funcionário Temporário';
  }
}
