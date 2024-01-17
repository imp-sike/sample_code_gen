// Concrete visitor for code generation
import 'package:sample_code_gen/lang/visitor.dart';

import 'node.dart';

class CodeGenerator implements Visitor {
  String result = "";

  @override
  void visitNumber(NumberNode node) {
    result += node.value.toString();
  }

  @override
  void visitAdd(AddNode node) {
    result += "(";
    node.left.accept(this);
    result += " + ";
    node.right.accept(this);
    result += ")";
  }
}