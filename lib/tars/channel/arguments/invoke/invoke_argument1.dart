import 'dart:typed_data';

import 'invoke_argument.dart';

class InvokeArgument1 extends InvokeArgument {
  late Object? arg1;

  InvokeArgument1(Object? arg1) {
    this.arg1 = arg1;
  }

  @override
  List<Object?> getArguments() {
    return [this.arg1];
  }
}
