class Node<T> {
  T value;
  Node<T>? next;
  Node<T>? prev;

  Node({required this.value, this.prev, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class DoublyLinkedList<E> {
  Node<E>? head;
  Node<E>? tail;
  int _length = 0;

  bool get isEmpty => head == null;
  int get length => _length;

  DoublyLinkedList();

  /// adds data to the front of the list
  void push(E data) {
    head = Node(value: data, next: head);
    tail ??= Node(value: data, prev: head);
    _length += 1;
  }

  /// adds data to the end of the list
  void append(E data) {
    tail = Node(value: data, prev: tail);
    head ??= Node(value: data, next: tail);
    _length += 1;
  }

  /// returns a node at the index
  Node<E> nodeAt(int index) {
    Node<E>? currentNode = head;
    for (int i = 1; i < index; i++) {
      if (currentNode?.next == null) {
        throw RangeError('The index: $index is out of range');
      }
      currentNode = currentNode!.next;
    }
    return currentNode!;
  }

  /// Insert a value after a node
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    final newNode = Node(value: value, prev: node, next: node.next);
    node.next!.prev = newNode;
    node.next = newNode;
    _length += 1;
    return newNode;
  }

  /// remove value at start
  E pop() {
    if (isEmpty) throw RangeError('Can\'t pop from empty list');
    if (tail!.value == head!.value) {}
    head = head?.next;
    head?.prev = null;
  }
}
