import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_solid/design_patterns/abstract_factory/i_progress_indicator.dart';

class MyCupertinoProgressIndicator implements IProgressIndicator {
  @override
  Widget build() {
    return const CupertinoActivityIndicator();
  }
}
