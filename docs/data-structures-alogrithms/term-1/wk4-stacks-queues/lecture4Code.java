
import java.util.Stack;
        import java.util.Queue;
        import java.util.LinkedList;

 class Lecture4Code{
    public static void main(String[] args) {
        ///////////////////////////////////////////////////////////////////////

        System.out.println("===================================================");
        System.out.println("Testing Java's Stack<String>");
        System.out.println("===================================================");

        System.out.println("Modelling putting luggage into a car's boot,");
        System.out.println("first item in is the last item out,");
        System.out.println("alternatively the last item in is the first item out.");
        System.out.println("===================================================");
        System.out.println();

        Stack<String> carsBoot = new Stack<>();

        carsBoot.push("BlueSuitcase");    // hard luggage first
        carsBoot.push("RedSuitcase");
        carsBoot.push("Holdall");
        carsBoot.push("SportsBag");
        carsBoot.push("Rucksack"); // last in out first

        System.out.println();
        System.out.println("Print the list of luggage in the boot, starting from the last item added");
        for (String luggage : carsBoot) {
            System.out.println(luggage);
        }
        System.out.println();

        System.out.println();
        System.out.println(carsBoot.size() + " items of luggage in the car's boot.");
        System.out.println();

        System.out.println("Is the camera bag in the boot " + (carsBoot.contains("CameraBag") ? "yes" : "NO!!"));
        System.out.println();

        System.out.println("Remove the " + carsBoot.size() + " items of luggage from the car's boot.");
        System.out.println();

        while (!carsBoot.isEmpty()) {
            System.out.println("Got out the " + carsBoot.pop() + " from the boot, " + carsBoot.size() + " items left");

            if (!carsBoot.isEmpty()) {
                System.out.println("Next item to get out is the " + carsBoot.peek());
            } else {
                System.out.println("Nothing to get out, car boot is now empty");
            }
            System.out.println();
        }

        ///////////////////////////////////////////////////////////////////////

        System.out.println("===================================================");
        System.out.println("Testing Java's Queue<String>");
        System.out.println("===================================================");
        System.out.println();

        String[] shoppers = {"Jim", "Sue"};
        Queue<String> checkoutQueue = new LinkedList<>();

        for (String shopper : shoppers) {
            checkoutQueue.add(shopper);
        }

        checkoutQueue.add("Tom");  // people join the end of the queue
        checkoutQueue.add("Mia");
        checkoutQueue.add("Zoe");

        System.out.println("Customers waiting to check out:");
        for (String person : checkoutQueue) {
            System.out.println(person);
        }

        System.out.println("Now serving customer: " + checkoutQueue.poll());
        System.out.println("Next to be served is: " + checkoutQueue.peek());
        System.out.println(checkoutQueue.size() + " customers waiting to be served.");

        while (!checkoutQueue.isEmpty()) {
            System.out.println("Now serving " + checkoutQueue.poll() + ", " + checkoutQueue.size() + " people still to be served");
        }

        System.out.println();
        System.out.println("===================================================");
        System.out.println("******************* END OF TESTS*******************");
        System.out.println("===================================================");
        System.out.println();
    }
}
