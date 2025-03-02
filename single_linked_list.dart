class Node {
  int data;
  Node? tail;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode; // If the list is empty, make the new node the head
    } else {
      Node? current = head;
      // Traverse to the last node
      while (current!.tail != null) {
        current = current.tail;
      }
      // Set the tail of the last node to the new node
      current.tail = newNode;
    }
  }

  insertAfter(int nextTo, int value) {
    Node? current = head;
    if (head == null) {
      return;
    }
    while (current!.data != nextTo) {
      current = current.tail;
    }
    Node newNode = Node(value);

    newNode.tail = current.tail;
    current.tail = newNode;
  }

  void removeNode(int value) {
    if (head == null) {
      print("Linked list is empty");
      return;
    }

    // if the head node is one to delete
    if (head!.data == value) {
      head = head!.tail;
      print("Node with value $value is deleted");
      return;
    }
    Node? current = head, prev;
    while (current!.tail != null && current.tail!.data != value) {
      prev = current;
      current = current.tail;
    }
    if (current.data == value) {
      current.tail = prev;
      return;
    }
    current.tail = current.tail!.tail;
  }

  // Traverse and print all the nodes in the list
  void display() {
    if (head == null) {
      print("The list is empty.");
      return;
    }

    Node? current = head;
    while (current != null) {
      print(current.data); // Print the data of the current node
      current = current.tail; // Move to the next node
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addNode(10);
  linkedList.addNode(20);
  linkedList.addNode(50);
  linkedList.addNode(80);
  linkedList.addNode(30);
  linkedList.removeNode(80);
  linkedList.insertAfter(30, 100);
  print("Linked List:");
  linkedList.display();
}
