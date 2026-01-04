
import java.util.Random;

class TreeNode {
    public static final TreeNode EMPTY_TREE = null;
    public static final TreeNode NO_PARENT = null;

    private int data;
    private int height;
    private TreeNode leftChild, rightChild, parent;

    public TreeNode(int data) {
        this.data = data;
        this.height = 1;
        this.parent = NO_PARENT;
        this.leftChild = EMPTY_TREE;
        this.rightChild = EMPTY_TREE;
    }

    public TreeNode(int data, TreeNode parent) {
        this.data = data;
        this.height = 1;
        this.parent = parent;
        this.leftChild = EMPTY_TREE;
        this.rightChild = EMPTY_TREE;
    }

    public void setData(int data) {
        this.data = data;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public void setParent(TreeNode newP) {
        parent = newP;
    }

    public void setLeftChild(TreeNode newLC) {
        leftChild = newLC;
        if (newLC != EMPTY_TREE) {
            newLC.parent = this;
        }
    }

    public void setRightChild(TreeNode newRC) {
        rightChild = newRC;
        if (newRC != EMPTY_TREE) {
            newRC.parent = this;
        }
    }

    public int getData() {
        return data;
    }

    public int getHeight() {
        return height;
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
        String parentNode = (parent == NO_PARENT ? "NO_PARENT" : Integer.toString(parent.getData()));
        String leftChildStr = (leftChild == EMPTY_TREE ? "EMPTY_TREE" : Integer.toString(leftChild.getData()));
        String rightChildStr = (rightChild == EMPTY_TREE ? "EMPTY_TREE" : Integer.toString(rightChild.getData()));

        System.out.printf("TreeNode[ data = %-5d  height = %-5d      parent --> %-11s  leftChild --> %-12s  rightChild --> %-12s]%n",
                data, height, parentNode, leftChildStr, rightChildStr);
    }
}

class BinarySearchTree {
    protected static final TreeNode EMPTY_TREE = null;
    protected static final TreeNode NO_PARENT = null;

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

        return null;
    }

    public void printRootNode() {
        if (root == EMPTY_TREE) {
            System.out.print("Root Node: EMPTY_TREE (NULL)");
        } else {
            System.out.print("Root Node: ");
            root.print();
        }
    }

    public void print() {
        if (root == EMPTY_TREE) {
            System.out.printf("Empty tree -- Node count = %d%n", size());
        } else {
            System.out.printf("Tree Node count = %d%n", size());
            printSubTree(root);
            System.out.println();
        }
    }

    public void printSubTree(TreeNode n) {
        if (n != EMPTY_TREE) {
            printSubTree(n.getLeftChild());
            System.out.print(n.getData() + " ");
            printSubTree(n.getRightChild());
        }
    }

    public void printAllNodes() {
        if (root == EMPTY_TREE) {
            System.out.printf("Empty tree -- Node count = %d%n", size());
        } else {
            printAllNodes(root);
            System.out.printf("Node count = %d%n", size());
        }
    }

    public void printAllNodes(TreeNode root) {
        if (root == EMPTY_TREE) {
            return;
        } else {
            root.print();
            printAllNodes(root.getLeftChild());
            printAllNodes(root.getRightChild());
        }
    }

    protected int calculateNodeHeight(TreeNode leftChild, TreeNode rightChild) {
        int leftChildHeight = (leftChild != EMPTY_TREE) ? leftChild.getHeight() : 0;
        int rightChildHeight = (rightChild != EMPTY_TREE) ? rightChild.getHeight() : 0;
        return 1 + Math.max(leftChildHeight, rightChildHeight);
    }

    public void insert(int newValue) {
        if (root == EMPTY_TREE) {
            root = new TreeNode(newValue);
        } else {
            insert(root, newValue);
        }
        nodeCounter++;
    }

    protected void insert(TreeNode root, int newValue) {
        if (newValue == root.getData()) {
            // Duplicate, do nothing
        } else if (newValue < root.getData()) {
            if (root.getLeftChild() == EMPTY_TREE) {
                TreeNode newValueNode = new TreeNode(newValue, root);
                root.setLeftChild(newValueNode);
            } else {
                insert(root.getLeftChild(), newValue);
            }
        } else {
            if (root.getRightChild() == EMPTY_TREE) {
                TreeNode newValueNode = new TreeNode(newValue, root);
                root.setRightChild(newValueNode);
            } else {
                insert(root.getRightChild(), newValue);
            }
        }
        root.setHeight(calculateNodeHeight(root.getLeftChild(), root.getRightChild()));
    }

    public void delete(int value) {
        TreeNode currentNode = root;

        while (currentNode != EMPTY_TREE && currentNode.getData() != value) {
            if (currentNode.getData() < value) {
                currentNode = currentNode.getRightChild();
            } else {
                currentNode = currentNode.getLeftChild();
            }
        }

        if (currentNode != EMPTY_TREE) {
            TreeNode delValueNode = currentNode;

            if (delValueNode.getLeftChild() == EMPTY_TREE) {
                replaceNode(delValueNode, delValueNode.getRightChild());
            } else if (delValueNode.getRightChild() == EMPTY_TREE) {
                replaceNode(delValueNode, delValueNode.getLeftChild());
            } else {
                TreeNode maxLeftNode = delValueNode.getLeftChild();
                while (maxLeftNode.getRightChild() != EMPTY_TREE) {
                    maxLeftNode = maxLeftNode.getRightChild();
                }
                delValueNode.setData(maxLeftNode.getData());
                replaceNode(maxLeftNode, maxLeftNode.getLeftChild());
            }
            nodeCounter--;
        } else {
            System.out.printf("Deletion of node: %d -- Failed, Not in Tree%n", value);
        }
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
        if (parent != NO_PARENT) {
            parent.setHeight(calculateNodeHeight(parent.getLeftChild(), parent.getRightChild()));
        }
    }

    public void insertAll(int[] values, boolean printResults) {
        for (int value : values) {
            insert(value);
            if (printResults) {
                print();
            }
        }
    }

    public void removeAll(int[] values, boolean printResults) {
        for (int value : values) {
            delete(value);
            if (printResults) {
                print();
            }
        }
    }

    private static final String INDENT = "    ";
    private String indentation = INDENT;

    protected void processNode(TreeNode node) {
        System.out.println(indentation + node.getData());
    }

    public void preOrderTraversal() {
        preOrderTraverse(root);
    }

    public void inOrderTraversal() {
        inOrderTraversal(root);
    }

    public void postOrderTraversal() {
        postOrderTraverse(root);
    }

    private void inOrderTraversal(TreeNode node) {
        String previousIndentation = indentation;
        indentation = indentation + INDENT;

        if (node == EMPTY_TREE) {
            System.out.println(indentation + "EMPTY TREE");
        } else {
            inOrderTraversal(node.getLeftChild());
            processNode(node);
            inOrderTraversal(node.getRightChild());
        }

        indentation = previousIndentation;
    }

    public void traceInOrderTraverse(TreeNode node) {
        String previousIndentation = indentation;
        indentation = indentation + INDENT;

        if (node == EMPTY_TREE) {
            System.out.println(indentation + "Subtree is EMPTY");
        } else {
            System.out.println(indentation + "Start Processing Tree with root: " + node.getData());
            System.out.println(indentation + "InOrder Traverse LEFT subtree of node: " + node.getData());
            traceInOrderTraverse(node.getLeftChild());
            System.out.println(indentation + "Process Node: " + node.getData());
            System.out.println(indentation + "InOrder Traverse RIGHT subtree of node: " + node.getData());
            traceInOrderTraverse(node.getRightChild());
            System.out.println(indentation + "Finished processing Tree with root: " + node.getData());
        }

        indentation = previousIndentation;
    }

    private void preOrderTraverse(TreeNode node) {
        String previousIndentation = indentation;
        indentation = indentation + INDENT;

        if (node == EMPTY_TREE) {
            System.out.println(indentation + "EMPTY TREE");
        } else {
            processNode(node);
            preOrderTraverse(node.getLeftChild());
            preOrderTraverse(node.getRightChild());
        }

        indentation = previousIndentation;
    }

    private void postOrderTraverse(TreeNode node) {
        String previousIndentation = indentation;
        indentation = indentation + INDENT;

        if (node == EMPTY_TREE) {
            System.out.println(indentation + "EMPTY TREE");
        } else {
            postOrderTraverse(node.getLeftChild());
            postOrderTraverse(node.getRightChild());
            processNode(node);
        }

        indentation = previousIndentation;
    }
}

class BST_Properties extends BinarySearchTree {
    public BST_Properties() {
        System.out.println("Created a Traversable BST");
    }

    public int height() {
        return height(root);
    }

    private int height(TreeNode node) {
        if (node == EMPTY_TREE) {
            return 0;
        } else {
            int leftHeight = height(node.getLeftChild());
            int rightHeight = height(node.getRightChild());
            return 1 + Math.max(leftHeight, rightHeight);
        }
    }

    private static final String INDENT = "    ";
    private String indentation = INDENT;

    public void printNodeLevels() {
        nodeLevel(root, 0);
    }

    private void nodeLevel(TreeNode node, int level) {
        String previousIndentation = indentation;
        indentation = indentation + INDENT;

        if (node != EMPTY_TREE) {
            System.out.println(indentation + "Node: " + node.getData() + ",  Level: " + level);
            nodeLevel(node.getLeftChild(), level + 1);
            nodeLevel(node.getRightChild(), level + 1);
        }

        indentation = previousIndentation;
    }

    public int updateHeight() {
        return updateHeight(root);
    }

    private int updateHeight(TreeNode node) {
        if (node == EMPTY_TREE) {
            return 0;
        } else {
            int leftHeight = updateHeight(node.getLeftChild());
            int rightHeight = updateHeight(node.getRightChild());
            int treeHeight = 1 + Math.max(leftHeight, rightHeight);
            node.setHeight(treeHeight);
            return treeHeight;
        }
    }
}

public class Tutorial_7_Testing {
    public static void main(String[] args) {
        System.out.println();
        System.out.println("Lecture 5 - Binary Search Trees");
        System.out.println();

        boolean printResults = false;

        System.out.println();
        System.out.println("Testing Binary Search Trees Operations");
        System.out.println();

        int quantity = 10;
        int[] treeA = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
        int[] treeB = {55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 5};
        int[] treeC = {30, 25, 20, 15, 10, 5, 35, 40, 45, 50, 55};
        int[] treeD = {30, 15, 45, 10, 40, 20, 50, 5, 35, 25, 55};

        int[] numbers = treeC;
        int[] deleteNumbers = {10, 45, 30};

        BST_Properties bstTree = new BST_Properties();

        bstTree.print();
        System.out.println();

        System.out.print("Insert Values into BST: ");
        System.out.println();

        for (int number : numbers) {
            System.out.printf("Insert value: %d%n", number);
            bstTree.insert(number);
            bstTree.printAllNodes();
            System.out.println();
            System.out.println();
        }
        System.out.println();

        int treeHeight = bstTree.height();
        System.out.printf("BST height = %d%n", treeHeight);
        bstTree.printNodeLevels();
        System.out.println();

        System.out.println();
        System.out.print("Delete Values from BST: ");
        System.out.println();

        for (int deleteNumber : deleteNumbers) {
            System.out.printf("Delete value: %d%n", deleteNumber);
            bstTree.delete(deleteNumber);
            bstTree.printAllNodes();
            System.out.println();
            System.out.println();
        }
        System.out.println();

        treeHeight = bstTree.height();
        System.out.printf("BST height = %d%n", treeHeight);
        bstTree.printNodeLevels();
        System.out.println();
    }
}