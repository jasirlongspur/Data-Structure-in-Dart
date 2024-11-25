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
  linkedList.addNode(30);

  print("Linked List:");
  linkedList.display();
}
