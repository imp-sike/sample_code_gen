
import 'CalcVisitor.dart';

abstract class CalcNode {
  void accept(CalcVisitor visitor);
}

// General Number
class  GeneralNumberNode implements CalcNode {
  int value;

  GeneralNumberNode(this.value);

  @override
  void accept(CalcVisitor visitor) {
    visitor.visitCalcNumber(this);
  }
}