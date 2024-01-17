import 'package:sample_code_gen/lang/visitor.dart';

abstract class Node {
  void accept(Visitor visitor);
}

// Number Node
class NumberNode implements Node {
  final int value;

  NumberNode(this.value);

  @override
  void accept(Visitor visitor) {
    visitor.visitNumber(this);
  }
}

// Add Node
class AddNode implements Node {
  final Node left;
  final Node right;

  AddNode(this.left, this.right);

  @override
  void accept(Visitor visitor) {
    visitor.visitAdd(this);
  }
}
