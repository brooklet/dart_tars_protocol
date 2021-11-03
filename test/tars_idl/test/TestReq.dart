// **********************************************************************
// This file was generated by a TARS parser!
// TARS version 2.4.20.
// **********************************************************************

import 'dart:core';
import 'dart:typed_data';
import '../../../lib/tars/codec/tars_input_stream.dart';
import '../../../lib/tars/codec/tars_output_stream.dart';
import '../../../lib/tars/codec/tars_struct.dart';
import '../../../lib/tars/codec/tars_displayer.dart';
import '../../../lib/tars/codec/tars_deep_copyable.dart';

class TestReq extends TarsStruct {
  String className() {
    return "TestReq";
  }

  int id = 0;

  String? name = "";

  TestReq({int id: 0, String? name: ""}) {
    this.id = id;
    this.name = name;
  }

  @override
  void writeTo(TarsOutputStream _os) {
    _os.write(id, 0);
    if (null != name) {
      _os.write(name, 1);
    }
  }

  @override
  void readFrom(TarsInputStream _is) {
    this.id = _is.read<int>(id, 0, false);
    this.name = _is.read<String>(name, 1, false);
  }

  @override
  void displayAsString(StringBuffer _os, int _level) {
    TarsDisplayer _ds = TarsDisplayer(_os, level: _level);
    _ds.display(id, "id");
    _ds.display(name, "name");
  }

  @override
  Object deepCopy() {
    var o = TestReq();
    o.id = this.id;
    o.name = this.name;
    return o;
  }
}
