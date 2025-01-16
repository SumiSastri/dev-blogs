__Lesson 12 notes__

<!-- Lists and manipulating lists

- show and sort
- add
- delete
- update

Name logger is like shape drawer ?
(application to project) -->

- Java Utils are a collection of Wrapper classes which are constructors for specific features

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

<!-- ## Algorithm data structures - evaluate performance of data structures

Refer to memory management

- Linear search executed in linear time
- Best fit
- Worst fit
- Buddy system
- Shift and sort

   // Static map to track all room bookings by room number
    private static final `Map<Integer, Set<OverlapCheck>> roomBookings = new HashMap<>();`
Change this to a map?

// My notes for ref - delete in clean up
// Here a list is created using the booking class as a generic type
// Several bookings can be created and stored in the list of Booking type
// the diamond notation for array is used in the reassignment 
// `private static List<Booking> bookings = new ArrayList<>();`
// this does not work if there are many bookings so the interface of Map needs to be used
// Booking class is imported and morphed by Map or List

// Source in planning: https://www.geeksforgeeks.org/difference-between-list-set-and-map-in-java/
 -->

__The Scanner Object - handling i/o in Java__

Standard streams and files

RAM memory has 3 separate blocks of memory standard input/ standard output and standard error 
Shell and CLI - helps you redirect file streams

On shell `>` redirection symbol redirect to out1 - redirects it it from the screen to a file
The pipes `||` is also a redirect symbol in bash

The streams move into processes and these processes are given jobs and job numbers to run the program data 
This could be any program from word to Java programming language

Bash - cal in the bin directory eg: $`cal 05 2025` is a GUI program that displays the calendar by month and year

The information is stored in RAM in a buffer not on the hard drive unless specifically redirected to a file path

In the bin or binary files directory, there are several of these simple programs that you can access and run from your computer terminal

- Program data is allocated in memory - the stack and heap where primitive and reference types are stored
- They are stored in bits and bytes

On start of the Java programming language the language and syntax communicates with the environment sharing data.
The key interface points are the keyboard and the display of hardware (computers), to see text the programming language
is coded in standard character encoding - UTF 8 a modern version of ASCII.

ASCII - 1 byte and 8 bits, UTF 8 allows us to represent an exended list of characters with diacriticals and symbols to represent the inputs of non-Roman language alphabets.

The JVM uses an abastraction of a string to provide communication between files/ networks/ computers/ hardware. It is provided by the hardware via standard streams.

Standard streams - input/ out and error streams - Java communicates to the hardware via the keyboard (standard input) and the display (monitors) provides standard output.

Printing to these streams happens via the standard i/o and errors.

JVM provides a wrapper utility - Scanner to access the i/o

If you want to get input from the keyboard you use the Scanner utility which comes with its own methods.

```Java
System.in()
System.out()
System.err()
```

Are the methods for encoding and decoding data into UTF-8 or whatever the devices defacult encoding is
The Scanner ensures that data is read from or written to these hardware i/o streams and interpreted correctly by the hardware

It is a public static object of the PrintStream class
Public attribute - exception to the rule of encapsulation because we need it to access the i/o

The method encodes the String object into bytes using the device's default encoding (which could be UTF-8 for text)

Std in reads raw bytes from the keyboard into the System class and decodes it from UTF-8  parsing this as text data
It can then call

```Java
nextLine()
nextInt()
nextDouble()
```

Javac is the CLI that complies code and translates it into byte code,

Redirecting Standard input with the greater symbol >stdout the  2> is to standard error

Streams and network abstraction
Program data is stored on the stack or head, abstracts access to the network, accesses the network and exchanges data via the std input/st output and std error streams
Instead of seeing the data on the o/s we can abstract the data and send it to a storage site
We do this through the process of composition

From print stream we send the information to the fileoutput stream object

The FileOutputStream util or PrintWriter util

Checked exceptions - write a try-catch or the program will not compile it is a system error which may impact the i/o and the compiling of the program

finally block - close the writer - flush the buffer and release resources

Reading from files

Buffered reader - storing in the memory buffer or register buffer - accessing disc is further away from RAM - so access is milliseconds/ vs RAM nanoseconds

