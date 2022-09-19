import 'list_implementation.dart';

void main(List<String> args) {
  // tryout some list
  final QueueList list = QueueList();
  list.enqueue('Brian');
  list.enqueue('Tracy');
  list.enqueue('boks');
  print('list before dequeue: $list');
  list.dequeue();
  print('list after dequeue: $list');
  final peeker = list.peek;
  print('peeker is looking at: $peeker');
}
