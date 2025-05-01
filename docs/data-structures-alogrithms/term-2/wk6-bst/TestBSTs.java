/* Lecture 5 DemoCode
TreeNode Class: Represents each node in the BST with data, parent, left, and right children.

BinarySearchTree Class: Implements BST operations (insert, delete, find, traversals).

Insert Method: Correctly increments nodeCounter only when a new node is added.

Delete Method: Handles node deletion cases (no children, one child, two children).

Traversals: In-order traversal implemented to print nodes in sorted order.

Test Class: Demonstrates BST operations using a predefined set of numbers and deletions.
 */

import java.util.Random;

class TreeNode {
    public static final TreeNode EMPTY_TREE = null;
    public static final TreeNode NO_PARENT = null;

    private int data;
    private TreeNode leftChild;
    private TreeNode rightChild;
    private TreeNode parent;

    public TreeNode(int data) {
        this.data = data;
        this.parent = NO_PARENT;
        this.leftChild = EMPTY_TREE;
        this.rightChild = EMPTY_TREE;
    }

    public TreeNode(int data, TreeNode parent) {
        this.data = data;
        this.parent = parent;
        this.leftChild = EMPTY_TREE;
        this.rightChild = EMPTY_TREE;
    }

    public void setData(int data) {
        this.data = data;
    }

    public void setParent(TreeNode newParent) {
        parent = newParent;
    }

    public void setLeftChild(TreeNode newLeftChild) {
        leftChild = newLeftChild;
        if (newLeftChild != EMPTY_TREE) {
            newLeftChild.setParent(this);
        }
    }

    public void setRightChild(TreeNode newRightChild) {
        rightChild = newRightChild;
        if (newRightChild != EMPTY_TREE) {
            newRightChild.setParent(this);
        }
    }

    public int getData() {
        return data;
    }

    public TreeNode getParent() {
        return parent;
    }

    public TreeNode getLeftChild() {
        return leftChild;
    }

    public TreeNode getRightChild() {
        return rightChild;
    }

    public void print() {
        String parentNode = (parent == NO_PARENT) ? "NO_PARENT" : String.valueOf(parent.getData());
        String leftChildStr = (leftChild == EMPTY_TREE) ? "EMPTY_TREE" : String.valueOf(leftChild.getData());
        String rightChildStr = (rightChild == EMPTY_TREE) ? "EMPTY_TREE" : String.valueOf(rightChild.getData());

        System.out.println(String.format("TreeNode[ data = %-5s parent --> %-11s leftChild --> %-12s rightChild --> %-12s]",
                data + ",", parentNode + ",", leftChildStr + ",", rightChildStr + ","));
    }
}

class BinarySearchTree {
    public static final TreeNode EMPTY_TREE = null;
    public static final TreeNode NO_PARENT = null;
    public static final TreeNode NODE_NOT_FOUND = null;

    protected TreeNode root = EMPTY_TREE;
    protected int nodeCounter = 0;

    public int size() {
        return nodeCounter;
    }

    public TreeNode findValueNode(int searchValue) {
        TreeNode currentNode = root;
        while (currentNode != EMPTY_TREE) {
            if (currentNode.getData() == searchValue) {
                return currentNode;
            } else if (currentNode.getData() < searchValue) {
                currentNode = currentNode.getRightChild();
            } else {
                currentNode = currentNode.getLeftChild();
            }
        }
        return NODE_NOT_FOUND;
    }

    public void print() {
        if (root == EMPTY_TREE) {
            System.out.println("Empty tree -- Node count = " + size());
        } else {
            System.out.println("Tree Node count = " + size());
            printSubTree(root);
            System.out.println();
        }
    }

    private void printSubTree(TreeNode subTree) {
        if (subTree != EMPTY_TREE) {
            printSubTree(subTree.getLeftChild());
            System.out.print(subTree.getData() + " ");
            printSubTree(subTree.getRightChild());
        }
    }

    public void printAllNodes() {
        if (root == EMPTY_TREE) {
            System.out.println("Empty tree -- Node count = " + size());
        } else {
            printAllNodes(root);
            System.out.println("Node count = " + size());
        }
    }

    private void printAllNodes(TreeNode root) {
        if (root == EMPTY_TREE) return;
        root.print();
        printAllNodes(root.getLeftChild());
        printAllNodes(root.getRightChild());
    }

    public void insert(int newValue) {
        if (root == EMPTY_TREE) {
            root = new TreeNode(newValue);
            nodeCounter++;
        } else {
            insertBelow(root, newValue);
        }
    }

    private boolean insertBelow(TreeNode node, int value) {
        if (value < node.getData()) {
            if (node.getLeftChild() == EMPTY_TREE) {
                node.setLeftChild(new TreeNode(value, node));
                nodeCounter++;
                return true;
            } else {
                return insertBelow(node.getLeftChild(), value);
            }
        } else if (value > node.getData()) {
            if (node.getRightChild() == EMPTY_TREE) {
                node.setRightChild(new TreeNode(value, node));
                nodeCounter++;
                return true;
            } else {
                return insertBelow(node.getRightChild(), value);
            }
        }
        return false; // Duplicate
    }

    public void delete(int value) {
        TreeNode currentNode = root;
        TreeNode parentNode = NO_PARENT;
        while (currentNode != EMPTY_TREE && currentNode.getData() != value) {
            parentNode = currentNode;
            if (value < currentNode.getData()) {
                currentNode = currentNode.getLeftChild();
            } else {
                currentNode = currentNode.getRightChild();
            }
        }

        if (currentNode == EMPTY_TREE) {
            System.out.println("Deletion of node: " + value + " -- Failed, Not in TREE");
            return;
        }

        if (currentNode.getLeftChild() == EMPTY_TREE) {
            replaceNode(currentNode, currentNode.getRightChild());
        } else if (currentNode.getRightChild() == EMPTY_TREE) {
            replaceNode(currentNode, currentNode.getLeftChild());
        } else {
            TreeNode maxLeftNode = currentNode.getLeftChild();
            while (maxLeftNode.getRightChild() != EMPTY_TREE) {
                maxLeftNode = maxLeftNode.getRightChild();
            }
            currentNode.setData(maxLeftNode.getData());
            replaceNode(maxLeftNode, maxLeftNode.getLeftChild());
        }
        nodeCounter--;
    }

    private void replaceNode(TreeNode node, TreeNode replacement) {
        TreeNode parent = node.getParent();
        if (parent == NO_PARENT) {
            root = replacement;
            if (root != EMPTY_TREE) {
                root.setParent(NO_PARENT);
            }
        } else {
            if (node == parent.getLeftChild()) {
                parent.setLeftChild(replacement);
            } else {
                parent.setRightChild(replacement);
            }
        }
    }

    public void inOrderTraversal() {
        inOrderTraversal(root);
        System.out.println();
    }

    private void inOrderTraversal(TreeNode node) {
        if (node == EMPTY_TREE) return;
        inOrderTraversal(node.getLeftChild());
        System.out.print(node.getData() + " ");
        inOrderTraversal(node.getRightChild());
    }
}

public class TestBSTs {
    public static int[] randomValues(int howMany) {
        int[] result = new int[howMany];
        Random random = new Random();
        for (int i = 0; i < howMany; i++) {
            result[i] = random.nextInt() % (10 * howMany);
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println("Tutorial 5 - Binary Search Trees\n");

        int[] treeD = {30, 15, 45, 10, 40, 20, 50, 5, 35, 25, 55};
        int[] deleteNumbers = {10, 45, 30};

        BinarySearchTree bst = new BinarySearchTree();
        for (int num : treeD) {
            bst.insert(num);
        }

        System.out.println("Initial BST:");
        bst.printAllNodes();
        bst.print();

        System.out.println("\nIn-order Traversal:");
        bst.inOrderTraversal();

        for (int num : deleteNumbers) {
            System.out.println("\nDeleting node: " + num);
            bst.delete(num);
            bst.printAllNodes();
            bst.print();
        }
    }
}