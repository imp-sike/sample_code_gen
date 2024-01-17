import 'CalcNode.dart';

abstract class CalcVisitor {
  void visitCalcNumber(GeneralNumberNode node);
}

// sample impl
class SampleCalcVisitor implements CalcVisitor {
  @override
  void visitCalcNumber(GeneralNumberNode node) {
    print("Number Node Value: ${node.value}");
  }

}