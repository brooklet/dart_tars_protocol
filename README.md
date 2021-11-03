# dart_tars_protocol

> dart编码及解码Tars协议数据。

> dart编码及解码TUP组包协议数据。

> Flutter中可以使用

## 使用

example:

```dart
import 'package:dart_tars_protocol/tars/codec/tars_output_stream.dart';
import 'package:dart_tars_protocol/tars/codec/tars_input_stream.dart';

main() {
  //encode
  var out = TarsOutputStream();
  out.write(false,0);
  out.write("ok",1);
  var bytes= out.toUint8List();
  //decode
  var input = TarsInputStream(bytes);
  print(input.readBool(0,false));//print:false
  print(input.readString(1,false));//print:ok
}


```
> 更多tars结构体编解码实例: [dart_tars_protocol_test.dart](test\dart_tars_protocol_test.dart)


## 参考

[通过tars文件生成 Dart 代码的IDL工具的源码实现](https://github.com/brooklet/TarsCpp/tree/master/tools/tars2dartp)

[TarsTup](https://github.com/TarsCloud/TarsTup)

[TarsProtocol](https://github.com/TarsCloud/TarsProtocol)
