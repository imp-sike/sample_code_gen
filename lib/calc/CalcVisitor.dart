import 'CalcNode.dart';

abstract class CalcVisitor {
  void visitCalcNumber(GeneralNumberNode node);
  void visitAddition(GeneralAdditionNode node);
  void visitSubtraction(GeneralSubtractionNode node);
}

// sample impl
class SampleCalcVisitor implements CalcVisitor {
  @override
  void visitCalcNumber(GeneralNumberNode node) {
    print("Number Node Value: ${node.value}");
  }

  @override
  void visitAddition(GeneralAdditionNode node) {
    int x = node.generalNumberNode.value; // addition result
    CalcNode? rightNodeTemp = node.rightNode;
    x += _parseResult(rightNodeTemp);
    print("Addition Result is: $x");
  }

  @override
  void visitSubtraction(GeneralSubtractionNode node) {
    int x = node.generalNumberNode.value;
    CalcNode? rightNodeTemp = node.rightNode;
    x -= _parseResult(rightNodeTemp);
    print("Subtraction Result is: $x");
  }

  int _parseResult(CalcNode? rightNodeTemp) {
    int x = 0;
    while(rightNodeTemp != null) {
      if(rightNodeTemp is GeneralSubtractionNode) {
        x -= rightNodeTemp.generalNumberNode.value;
        rightNodeTemp = rightNodeTemp.rightNode;
      } else if(rightNodeTemp is GeneralAdditionNode) {
        x += rightNodeTemp.generalNumberNode.value;
        rightNodeTemp = rightNodeTemp.rightNode;
      }
    }
    return x;
  }

}