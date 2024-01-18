
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
  CalcNode? rightNode;

  GeneralAdditionNode(this.generalNumberNode, this.rightNode);


  @override
  void accept(CalcVisitor visitor) {
    visitor.visitAddition(this);
  }
}


// General Subtraction Node
class GeneralSubtractionNode implements CalcNode {
  GeneralNumberNode generalNumberNode;
  CalcNode? rightNode;
  // GeneralAdditionNode? generalAdditionNode;

  GeneralSubtractionNode(this.generalNumberNode, this.rightNode);


  @override
  void accept(CalcVisitor visitor) {
    visitor.visitSubtraction(this);
  }
}