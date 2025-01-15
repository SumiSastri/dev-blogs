
package errorhandling;

public class ErrorHandling {

    public static void main(String[] args) {
        
        
        
        
    }
    
}


public class Program {
public static void main(String[] args) {
BankAccount acc1 = new BankAccount("AB123", 100.0);
BankAccount acc2 = new BankAccount("CD456", 0.0);
boolean depositResult = acc1.deposit(200.8);
if (depositResult == true) {
System.out.println("Money successfully added on account " + acc1.getNumber());
} else {
System.out.println("Deposit failed on account " + acc1.getNumber());
}
if (acc2.deposit(130.5) == true) {
System.out.println("Money successfully added on account " + acc2.getNumber());
} else {
System.out.println("Deposit failed on account " + acc2.getNumber());
}
double withdrawAmount = -200.35;
if (acc1.withdraw(withdrawAmount)) {
System.out.println("Successful withdrawal! Balance on " + acc1.getNumber() + ": " +
acc1.getBalance());
} else {
System.out.println("Withdrawal failed on " + acc1.getNumber());
}
if (acc2.withdraw(1000.50)) {
System.out.println("Successful withdrawal! Balance on " + acc2.getNumber() + ": " +
acc2.getBalance());
} else {
System.out.println("Withdrawal failed on " + acc2.getNumber());
}
}
}
