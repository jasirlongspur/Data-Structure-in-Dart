class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.prev = tail;
      tail!.next = newNode;
      tail = newNode;
    }
  }

  display() {
    if (head == null) {
      print("Linked is empty");
    } else {
      Node? current = head;
      while (current != null) {
        print(current.data);
        current = current.next;
      }
    }
  }

  reverseDisplay() {
    if (tail == null) {
      return;
    } else {
      Node? current = tail;
      while (current != null) {
        print(current.data);
        current = current.prev;
      }
    }
  }
}

void main(List<String> args) {
  DoubleLinkedList dl = DoubleLinkedList();
  dl.addNode(10);
  dl.addNode(20);
  dl.addNode(30);

  dl.reverseDisplay();
}
