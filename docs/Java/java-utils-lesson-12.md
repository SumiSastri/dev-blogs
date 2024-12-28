# Lesson 12 Notes

# Java Utils are a collection of types of classes

- Collections and data structures of different types can be used to solve particular use case challenges

## What is a List how is it different from an Array

- An array specifies the number of elements, the array when allocated in memory has a fixed set that can not be modified
- When we do not know how many elements need to be stored because they change dynamically there are different data structures
- Arrays are also a type of collection
- Arrays can be converted into Lists

- A list is dynamic
- It does not have a specified length, but it has a "size" method to access all the elements
- It is more flexible and dynamic
- Each element can be individually added and accessed by an index
- It is an interface with a design contract that every list should fulfil
- It is a form of polymorphism - the list has different types of implementations

## What is a Linked List

A linked list is a chain of different lists that interact with each other that support the same set of operations
Concatinated linked lists

## What is an Array List and how does it incorporate generics?

- The array list uses an array and then creates a copy in runtime
- This runtime copy is larger than the initial one and we can add new elements to it
- Types of elements in an array list is a generic type of list
- The list then contains elements of a specific type
- This prevents errors in run time
- A generic is a list of a specific type - integers, doubles or objects and classes
- It is a customised type, where you define the kind of type you want to set for the object
- It prevents errors at run time
- Generic means a type of anything - a class that we define

__Initialising the List interface__

List is the interface that morphs Booking into an array list interface.
eg: List based on an array - this is now an array of booking objects and how it is initialised

`List<Booking> bookings = new ArrayList<>();`

The methods availble for a list are:- 
add - adds to the end of the list if nothing is specified, it overwrites what you have if you specify the index in the overloaded method
add - overloadded with index and element adds elements to a list at a particular point of the list
remove & get - removes and retrieves an element from the index it is at
indexOf - only returns first occurance of the list
size is the length of the list - number of elements
contains - if an element has such an element

eg: Here is an example of how you could add instances of a class to a generic Array List created for that class

```Java
  Room r1 = new StandardRoom(1, 189.75, 101, 1, 1);
            Customer c1 = new Customer("John", "Doe", LocalDate.of(1985, 5, 15));
            LocalDate chkin1 = LocalDate.of(2025, 1, 10);
            LocalDate chkout1 = LocalDate.of(2025, 1, 15);
            Booking b1 = new Booking(r1, c1, chkin1, chkout1);
            b1.displayBookingDetails();
            // Create additional valid bookings
            Room r5 = new StandardRoom(5, 180.00, 105, 1, 1);
            Customer c5 = new Customer("Alice", "Johnson", LocalDate.of(1995, 10, 30));
            LocalDate chkin5 = LocalDate.of(2025, 8, 20);
            LocalDate chkout5 = LocalDate.of(2025, 8, 25);
            Booking b5 = new Booking(r5, c5, chkin5, chkout5);
            b5.displayBookingDetails();

            Room r6 = new StandardRoom(6, 200.00, 106, 1, 1);
            Customer c6 = new Customer("Chris", "Evans", LocalDate.of(1985, 11, 13));
            LocalDate chkin6 = LocalDate.of(2025, 12, 1);
            LocalDate chkout6 = LocalDate.of(2025, 12, 5);
            Booking b6 = new Booking(r6, c6, chkin6, chkout6);
            b6.displayBookingDetails();
 ```

To add  instance of the booking we use the `add` and pass the object as n argument - use an iterator to add all objects

```Java
booking.add(b1)
booking.add(b5) 
booking.add(b6)  
```

## Limitations of a List - computational complexity

As seen above, there are limitations to the use case for a list. It is not the most efficient data structure to use.

- The challenges are apparent when there is a large data set in the list - like a huge number of hotel bookings over a busy season
- Evaluating the performance of an Array List data structure, the longer the list, the longer the execution time
- A direct ratio between time and effort to the size of the list
Eg:
- Adding or removing elements to an Array List means we have to shift all the elements of the list left
- To scan and sort the whole list has to be scanned in a linear search - in the worst case scenario the whole list
- It is not the most efficient for finding a specific element in the list
- booking.get(b1.[]) not always know what the key-value pairs are

- Depending on the use case it is good for a static display of elements in a preorderd structure

## Map Interface versus List uses hash Maps and checksums to access resources

Map is the interface that morphs Booking into a Map interface.

- An alternative to searching and sorting is to use the Map interface in Java when the data list is large.
The Map Interface, uses a key-value pair we can use a Map utility in Java rather than a List
- This pinpoints the resource we want to access by the key and is precise and quick
- The challenge is that Maps are unordered lists that use checksums and hashmaps implementing the maps
Map is a reference type that is neither stored on the heap or stack but in meta
- This is not the only way a tree map can also be used to check root-branch of the key-value
  Tree maps are used to sort alphabetically
- Map interfaces in Java are stored on the heap with a design contract of data being stored in key-value pairs (K/ V - key value)
- A Map closely couples a key and value pair, the key is unique but the variable is not
- Search and sort is efficient with with a k-v the data is scanned and only the matching v returned based on the key
- Get and remove are used by looking at the key and then returning the value
- Hash maps implement the key-value searching and calcuating checksums it is not through a numeric index as in an array

__Initialising the Map interface__

Maps use the Global constructors to initialise the Map interface.
The global wrapper class of `Integer`, `String` and `Object`can be used as the keys with the values.
The wrapper is a reference - The wrapper of the Global constructors is that they are stored in an address not on the stack or the heap but in Meta.

- Object used as a wrapper then we are comparing 2 objects by hash maps. Used mainly for comparisons - comparators/ comparables
- When comparing 2 objects hash of the object equal to the hash of the other object or not equal or greater/ less than
- Methods are - equal/ hascode

eg: of initialisation, The value is the Booking Map - it morphs the object into a Map interface.
`Map<Integer, Booking> bookings = new HashMap<>();`

It works like an int,  but with extra functionality.

The methods availble for a Map and the design contract are:-

- put instead of add (key value) - adds to the end of the list if nothing is specified, it overwrites what you have if you specify the index in the overloaded method
- remove & get (key) - removes and retrieves an element from the index it is at
- size is the length of the list - number of elements in the k-v set
- containsKey(key) - search for specific key
- values() - returns a Collection view

- How to add elements to a Map interface

Key of the new student is 12345 that is assigned to the student
eg: `bookings.put(12345, new Booking("Elisabeth", "Smith", checkindate, checkoutdate, bookingId));`
The student number is used as the key for the map.

`System.out.println(bookings.size())` - prints all the elements in the Map

Iterations on the Map

```Java
for (Booking booking : bookings.values()) // iterates over the map values
{
System.out.println(s.getBookingId()); // calls getter for bookingId on each value
}
}
```

## Algorithm data structures - evaluate performance of data structures

- Linear search executed in linear time
- Best fit
- Worst fit
- Buddy system
- Shift and sort


   // Static map to track all room bookings by room number
    private static final Map<Integer, Set<OverlapCheck>> roomBookings = new HashMap<>();
Change this to a map?

// My notes for ref - delete in clean up
// Here a list is created using the booking class as a generic type
// Several bookings can be created and stored in the list of Booking type
// the diamond notation for array is used in the reassignment 
// private static List<Booking> bookings = new ArrayList<>();
// this does not work if there are many bookings so the interface of Map needs to be used
// Booking class is imported and morphed by Map or List

// Source in planning: https://www.geeksforgeeks.org/difference-between-list-set-and-map-in-java/