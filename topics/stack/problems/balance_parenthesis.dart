import '../stack.dart';

/// balance the parenthesis in an equation
///
/// returns true if balanced else returns false
bool balanceParenthesis(String equation) {
  int lengthOFEquation = equation.length;
  final stack = Stack();
  for (int i = 0; i < lengthOFEquation; i++) {
    if (equation[i] == '(') {
      stack.push(equation[i]);
    }
    if (equation[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.pop();
    }
  }
  return stack.isEmpty;
}
