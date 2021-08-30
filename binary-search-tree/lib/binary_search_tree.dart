class BinarySearchTree {
  final Node root;

  BinarySearchTree(String data) : root = Node(data);

  void insert(String data) => root.insert(data);

  List<String> get sortedData => root.inOrderTraverse;
}

class Node {
  final String data;
  Node left, right;

  Node(this.data);

  void insert(String newData) {
    // if newData < this.data add to left node
    if (newData.codeUnitAt(0) <= data.codeUnitAt(0)) {
      if (left == null) {
        left = Node(newData);
      } else {
        left.insert(newData);
      }
    } else {
      if (right == null) {
        right = Node(newData);
      } else {
        right.insert(newData);
      }
    }
  }

  List<String> get inOrderTraverse => [
        if (left != null) ...left.inOrderTraverse,
        data,
        if (right != null) ...right.inOrderTraverse,
      ];
}
