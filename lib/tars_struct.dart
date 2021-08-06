import './tars_input_stream.dart';
import './tars_output_stream.dart';

enum TarsStructType {
  BYTE,
  SHORT,
  INT,
  LONG,
  FLOAT,
  DOUBLE,
  STRING1,
  STRING4,
  MAP,
  LIST,
  STRUCT_BEGIN,
  STRUCT_END,
  ZERO_TAG,
  SIMPLE_LIST,
}

abstract class TarsStruct {
  static int TARS_MAX_STRING_LENGTH = 100 * 1024 * 1024;
  void writeTo(TarsOutputStream _os);
  void readFrom(TarsInputStream _is);
  void displayAsString(StringBuffer sb, int level);
}
