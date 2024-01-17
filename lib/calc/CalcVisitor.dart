import 'CalcNode.dart';

abstract class CalcVisitor {
  void visitCalcNumber(GeneralNumberNode node);
  void visitAddition(GeneralAdditionNode node);
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
    GeneralAdditionNode? temp = node.generalAdditionNode;
    while(temp != null) {
      x += node.generalAdditionNode!.generalNumberNode.value;
      temp = temp.generalAdditionNode;
    }
    print("Addition Result is: $x");
  }

}