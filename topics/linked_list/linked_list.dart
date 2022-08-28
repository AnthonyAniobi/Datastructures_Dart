class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class _LinkedListIterator<E> implements Iterator<E> {
  final LinkedList<E> _list;
  _LinkedListIterator(LinkedList<E> list) : _list = list;

  Node<E>? _currentNode;
  bool _firstPass = true;

  @override
  E get current => _currentNode!.value;

  @override
  bool moveNext() {
    if (_firstPass) {
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    return _currentNode != null;
  }
}

class LinkedList<E> extends Iterable {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  LinkedList();
  LinkedList.of(Iterable<E> list) {
    for (var val in list) {
      append(val);
    }
  }

  /// adds data to the front of the list
  void push(E data) {
    head = Node(value: data, next: head);
    tail ??= head;
  }

  /// adds data to the end of the list
  void append(E data) {
    final node = Node(value: data);
    isEmpty ? head = node : tail!.next = node;
    tail = node;
  }

  /// returns a node at the index
  Node<E> nodeAt(int index) {
    Node<E>? currentNode = head;
    int currentIndex = 0;
    while (currentIndex < index) {
      currentNode!.next == null
          ? throw IndexError(
              index, [], 'wrong index', 'this index is out of range')
          : Null;
      currentIndex++;
      currentNode = currentNode.next;
    }
    return currentNode!;
  }

  /// Insert after a node with a value
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(node.value);
      return tail!;
    }
    final newNode = Node(value: value, next: node.next);
    node.next = newNode;
    return newNode;
  }

  /// remove value at start
  E pop() {
    if (isEmpty)
      throw RangeError.value(
          0, 'empty list', 'can not remove the front from an empty list');

    final value = head!.value;
    head = head?.next;
    if (isEmpty) tail = null;
    return value;
  }

  /// remove from the last item in the list
  E removeLast() {
    Node<E>? currentNode = head;
    if (isEmpty) throw RangeError.value(0, 'The list is empty');
    if (currentNode?.next == null) {
      return pop();
    }
    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }
    final value = tail!.value;
    currentNode.next = null;
    tail = currentNode;
    return value;
  }

  /// remove from the middle of the list
  E removeAfter(Node<E> node) {
    Node<E>? currentNode = head;
    while (currentNode != null) {
      if (currentNode == tail) {
        removeLast();
      }
      if (currentNode == node) {
        if (currentNode.next == null) throw RangeError('End of list reached');
        final nextNode = currentNode.next;
        final value = nextNode!.value;
        final upperNode = nextNode.next;
        currentNode.next = upperNode;
        return value;
      }
      currentNode = currentNode.next;
    }
    throw RangeError('Node not found');
  }

  @override
  String toString() {
    if (isEmpty) return 'The list is empty';
    return head.toString();
  }

  @override
  Iterator get iterator => _LinkedListIterator(this);
}
