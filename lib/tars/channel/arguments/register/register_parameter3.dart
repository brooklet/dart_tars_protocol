import '../invoke/invoke_argument3.dart';
import '../invoke/invoke_argument.dart';
import 'register_parameter.dart';

class RegisterParameter3 extends RegisterParameter {
  late Object arg1;
  late Object arg2;
  late Object arg3;

  RegisterParameter3(Object arg1, Object arg2, Object arg3) {
    this.arg1 = arg1;
    this.arg2 = arg2;
    this.arg3 = arg3;
  }

  @override
  InvokeArgument dispatchResult(List<Object?> result) {
    return InvokeArgument3(result[0], result[1], result[2]);
  }

  @override
  List<Object> getMappingParameter() {
    return [this.arg1, this.arg2, this.arg3];
  }
}
