import 'package:sample_code_gen/lang/code_generator.dart';
import 'package:sample_code_gen/lang/node.dart';

void main() {
  // Build AST
  var tree = AddNode(NumberNode(3), NumberNode(4));

  // Create CodeGenerator visitor
  var codeGenerator = CodeGenerator();

  // Traverse AST using visitor pattern
  tree.accept(codeGenerator);

  // Print generated code
  print("Generated Code: ${codeGenerator.result}");
}
