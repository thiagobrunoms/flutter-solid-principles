import 'package:flutter_solid/design_patterns/command/i_command.dart';
import 'package:flutter_solid/design_patterns/command/purchase_entity.dart';

class BuyCommand implements ICommand<PurchaseEntity, bool> {
  @override
  Future<bool> execute(PurchaseEntity entity) async {
    return await Future.value(true);
  }
}
