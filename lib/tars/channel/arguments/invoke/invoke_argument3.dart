
import 'invoke_argument.dart';

class InvokeArgument3 extends InvokeArgument {
  late Object? arg1;
  late Object? arg2;
  late Object? arg3;

  InvokeArgument3(Object? arg1, Object? arg2, Object? arg3) {
    this.arg1 = arg1;
    this.arg2 = arg2;
    this.arg3 = arg3;
  }

  @override
  List<Object?> getArguments() {
    return [ this.arg1, this.arg2, this.arg3];
  }


}