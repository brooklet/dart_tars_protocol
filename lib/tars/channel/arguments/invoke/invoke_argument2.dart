
import 'invoke_argument.dart';

class InvokeArgument2 extends InvokeArgument {
  late Object? arg1;
  late Object? arg2;

  InvokeArgument2(Object? arg1, Object? arg2) {
    this.arg1 = arg1;
    this.arg2 = arg2;
  }

  @override
  List<Object?> getArguments() {
    return [ this.arg1, this.arg2];
  }


}