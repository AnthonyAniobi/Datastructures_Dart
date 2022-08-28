import 'node.dart';

void main(List<String> args) {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  node1.next = node2;
  node2.next = node3;

  print(node1);
}
