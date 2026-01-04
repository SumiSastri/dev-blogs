import java.util.LinkedList;

class ListNode {
    private Object item;
    private ListNode next;

    public ListNode() {
        this.item = null;
        this.next = null;
    }

    public ListNode(Object item) {
        this.item = item;
        this.next = null;
    }

    public ListNode(Object item, ListNode next) {
        this.item = item;
        this.next = next;
    }

    public void setItem(Object item) {
        this.item = item;
    }

    public void setNext(ListNode next) {
        this.next = next;
    }

    public Object getItem() {
        return this.item;
    }

    public ListNode getNext() {
        return this.next;
    }
}

class CustomLinkedList {
    protected ListNode head = null;
    protected int length = 0;

    public CustomLinkedList() {
        this.head = null;
        this.length = 0;
    }

    public boolean isEmpty() {
        return (length == 0);
    }

    public void insertAtHead(Object item) {
        ListNode newItem = new ListNode(item, head);
        head = newItem;
        length++;
    }

    private ListNode findItem(Object item) {
        if (!isEmpty()) {
            ListNode current = head;
            while (current != null && !item.equals(current.getItem())) {
                System.out.println("findItem: current.item = " + current.getItem());
                current = current.getNext();
            }
            if (current != null) {
                System.out.println("findItem: current.item = " + current.getItem());
            }
            return current;
        } else {
            System.out.println("findItem: afterNode = null");
            return null;
        }
    }

    public boolean insertAfter(Object newItem, Object afterItem) {
        ListNode afterNode = findItem(afterItem);
        if (afterNode != null) {
            ListNode newItemNode = new ListNode(newItem, afterNode.getNext());
            afterNode.setNext(newItemNode);
            length++;
            return true;
        } else {
            return false;
        }
    }

    public void printList() {
        if (head == null) {
            System.out.println("List is empty");
        } else {
            ListNode current = head;
            System.out.println("Items in the list are:");
            while (current != null) {
                System.out.println(current.getItem());
                current = current.getNext();
            }
        }
    }
}

class LinkedListT {
    public void Zoo() {
        String[] bigCats = { "Lion", "Tiger" };
        LinkedList<String> Zoo = new LinkedList<>();
        for (String cat : bigCats) {
            Zoo.add(cat);
        }
        printAnimals(Zoo);

        Zoo.addLast("Gorilla");
        printAnimals(Zoo);

        Zoo.add(Zoo.size() - 1, "BlackPanther");
        printAnimals(Zoo);

        Zoo.add(1, "Eagle");
        printAnimals(Zoo);

        Zoo.removeFirst();
        printAnimals(Zoo);

        Zoo.remove("Gorilla");
        printAnimals(Zoo);

        System.out.println("The Zoo has an Eagle: " + Zoo.contains("Eagle"));
        printAnimals(Zoo);
    }

    private void printAnimals(LinkedList<String> Zoo) {
        System.out.println();
        System.out.print(Zoo.size() + " Animals in the Zoo: ");
        for (String animal : Zoo) {
            System.out.print(animal + ", ");
        }
        System.out.println();
    }
}

public class TestingLists {
    public static void main(String[] args) {
        System.out.println("Testing Singly Linked Lists\n");
        CustomLinkedList numberList = new CustomLinkedList();
        numberList.printList();
        System.out.println();

        numberList.insertAtHead(99);
        numberList.insertAtHead(88);
        numberList.insertAtHead(77);
        numberList.printList();
        System.out.println();

        numberList.insertAtHead(66);
        numberList.insertAtHead(55);
        numberList.printList();
        System.out.println();

        boolean result11 = numberList.insertAfter(11, 77);
        boolean result22 = numberList.insertAfter(22, 99);

        System.out.println("List should be: 55, 66, 77, 11, 88, 99, 22 ");
        System.out.println();
        numberList.printList();
        System.out.println();

        System.out.println("Testing LinkedLists<String> lists\n");
        LinkedListT myZoo = new LinkedListT();
        myZoo.Zoo();

        System.out.println("\n********************* END OF TESTS *********************\n");
    }
}
