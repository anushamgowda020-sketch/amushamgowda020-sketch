# first program
class Hello
{
    public static void main(String[] args)
{
        System.out.println("Hello World");
    }
}
# second program
class Add {
    public static void main(String[] args)
{
        int a = 5, b = 3;
        System.out.println("Sum = " + (a + b));
    }
}
#third program 
class EvenOdd
{
    public static void main(String[] args) 
{
        int n = 4;
        if(n % 2 == 0)
            System.out.println("Even");
        else
            System.out.println("Odd");
    }
}
# fourth program 
class Largest 
{
    public static void main(String[] args)
{
        int a = 10, b = 20;
        if(a > b)
            System.out.println("a is largest");
        else
            System.out.println("b is largest");
    }
}
#fifth program
class Table
{
    public static void main(String[] args)
{
        int i, num = 5;
        for(i = 1; i <= 10; i++) 
        {
            System.out.println(num + " x " + i + " = " + (num * i));
        }
    }
}
#sixth program 
class Numbers
{
    public static void main(String[] args)
{
        for(int i = 1; i <= 10; i++) 
        {
            System.out.print(i + " ");
        }
    }
}
#seventh program 
import java.util.Scanner;

public class PalindromeNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        int original = num, reverse = 0;

        while(num != 0) {
            int digit = num % 10;
            reverse = reverse * 10 + digit;
            num /= 10;
        }

        if(original == reverse)
            System.out.println("Palindrome number");
        else
            System.out.println("Not a palindrome");
    }
}
#eighth program
import java.util.Scanner;

public class VowelCount {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str = sc.nextLine().toLowerCase();

        int vowels = 0, consonants = 0;

        for(int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);

            if(Character.isLetter(ch)) {
                if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u')
                    vowels++;
                else
                    consonants++;
            }
        }

        System.out.println("Vowels: " + vowels);
        System.out.println("Consonants: " + consonants);
    }
}
#ninth program
import java.util.Scanner;

public class MatrixMultiplication {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int a[][] = new int[10][10];
        int b[][] = new int[10][10];
        int result[][] = new int[10][10];

        int r1, c1, r2, c2;

        System.out.print("Enter rows and cols of matrix A: ");
        r1 = sc.nextInt();
        c1 = sc.nextInt();

        System.out.print("Enter rows and cols of matrix B: ");
        r2 = sc.nextInt();
        c2 = sc.nextInt();

        if(c1 != r2) {
            System.out.println("Multiplication not possible");
            return;
        }

        System.out.println("Enter Matrix A:");
        for(int i=0;i<r1;i++)
            for(int j=0;j<c1;j++)
                a[i][j] = sc.nextInt();

        System.out.println("Enter Matrix B:");
        for(int i=0;i<r2;i++)
            for(int j=0;j<c2;j++)
                b[i][j] = sc.nextInt();

        for(int i=0;i<r1;i++) {
            for(int j=0;j<c2;j++) {
                result[i][j] = 0;
                for(int k=0;k<c1;k++) {
                    result[i][j] += a[i][k] * b[k][j];
                }
            }
        }

        System.out.println("Result Matrix:");
        for(int i=0;i<r1;i++) {
            for(int j=0;j<c2;j++)
                System.out.print(result[i][j] + " ");
            System.out.println();
        }
    }
}
#tenth program
class Student {
    int id;
    String name;
    double marks;

    void setData(int i, String n, double m) {
        id = i;
        name = n;
        marks = m;
    }

    void display() {
        System.out.println("ID: " + id);
        System.out.println("Name: " + name);
        System.out.println("Marks: " + marks);
    }
}

public class Main {
    public static void main(String[] args) {
        Student s1 = new Student();
        s1.setData(1, "Lish", 88.5);

        Student s2 = new Student();
        s2.setData(2, "Kushal", 92.0);

        s1.display();
        s2.display();
    }
}
#eleventh program
import java.util.Scanner;

class BankAccount {
    double balance = 0;

    void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited: " + amount);
    }

    void withdraw(double amount) {
        if(amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawn: " + amount);
        } else {
            System.out.println("Insufficient balance");
        }
    }

    void displayBalance() {
        System.out.println("Current Balance: " + balance);
    }
}

public class BankApp {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BankAccount acc = new BankAccount();

        int choice;

        do {
            System.out.println("\n1. Deposit\n2. Withdraw\n3. Balance\n4. Exit");
            System.out.print("Enter choice: ");
            choice = sc.nextInt();

            switch(choice) {
                case 1:
                    System.out.print("Enter amount: ");
                    acc.deposit(sc.nextDouble());
                    break;
                case 2:
                    System.out.print("Enter amount: ");
                    acc.withdraw(sc.nextDouble());
                    break;
                case 3:
                    acc.displayBalance();
                    break;
            }
        } while(choice != 4);
    }
}
#12th program
import java.util.Scanner;

class Prime {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        boolean isPrime = true;

        for(int i = 2; i <= n/2; i++) {
            if(n % i == 0) {
                isPrime = false;
                break;
            }
        }

        System.out.println(isPrime ? "Prime" : "Not Prime");
    }
}
#13th program 
import java.util.Scanner;

class Fact {
    static int fact(int n) {
        if(n == 0) return 1;
        return n * fact(n - 1);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        System.out.println(fact(n));
    }
}
#14th program 
import java.util.Scanner;

class ReverseStr {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s = sc.nextLine();

        String rev = new StringBuilder(s).reverse().toString();
        System.out.println(rev);
    }
}
#15th program 
import java.util.Scanner;

class Largest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr[] = new int[n];

        for(int i=0;i<n;i++)
            arr[i] = sc.nextInt();

        int max = arr[0];
        for(int i=1;i<n;i++) {
            if(arr[i] > max)
                max = arr[i];
        }

        System.out.println("Largest: " + max);
    }
}
#16th program 
import java.util.Scanner;

class CountDigits {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int count = 0;

        while(n != 0) {
            n /= 10;
            count++;
        }

        System.out.println("Digits: " + count);
    }
}
