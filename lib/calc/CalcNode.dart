
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

// General Addition Node
class GeneralAdditionNode implements CalcNode {
  GeneralNumberNode generalNumberNode;
  GeneralAdditionNode? generalAdditionNode;

  GeneralAdditionNode(this.generalNumberNode, this.generalAdditionNode);


  @override
  void accept(CalcVisitor visitor) {
    visitor.visitAddition(this);
  }
}