import 'abstract_queue.dart';

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  E? dequeue() => _list.isEmpty ? null : _list.removeAt(0);

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => (_list.isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();
}
