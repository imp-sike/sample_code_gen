// Visitor interface
import 'node.dart';

abstract class Visitor {
  void visitNumber(NumberNode node);
  void visitAdd(AddNode node);
}
