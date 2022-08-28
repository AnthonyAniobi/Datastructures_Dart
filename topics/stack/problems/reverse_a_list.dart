import '../stack.dart';

/// a function that prints a list in reverse order
///
/// This makes use of a stack
void reverse(List list) {
  final stack = Stack.of(list);
  print('printing in reverse order');
  while (stack.isNotEmpty) {
    final x = stack.pop();
    print(x);
  }
}
