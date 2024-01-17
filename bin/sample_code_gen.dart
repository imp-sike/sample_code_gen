
import 'package:sample_code_gen/calc/CalcNode.dart';
import 'package:sample_code_gen/calc/CalcVisitor.dart';

void main() {
  SampleCalcVisitor sampleCalcVisitor = SampleCalcVisitor();

  // create a basic AST
  GeneralNumberNode n1 = GeneralNumberNode(5);
  GeneralNumberNode n2 = GeneralNumberNode(3);
  GeneralNumberNode n3 = GeneralNumberNode(9);
  GeneralNumberNode n4 = GeneralNumberNode(6);
  GeneralNumberNode n5 = GeneralNumberNode(2);

  // sample traverse only number
  sampleCalcVisitor.visitCalcNumber(n1);
}
