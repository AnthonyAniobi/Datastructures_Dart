import 'linked_list.dart';

void main(List<String> args) {
  final list = LinkedList.of([1, 2, 3, 4, 5, 6]);

  for (var x in list) {
    print(x);
  }

  print(list);
}
