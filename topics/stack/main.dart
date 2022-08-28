import 'problems/balance_parenthesis.dart';
import 'problems/reverse_a_list.dart';
import 'stack.dart';

void main(List<String> args) {
  String equation = 'h((e))llo(world)()';
  print(balanceParenthesis(equation));
  equation = '(hello world';
  print(balanceParenthesis(equation));
}
