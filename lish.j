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
#17th program 
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        String str, rev = "";
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter string: ");
        str = sc.nextLine();

        for(int i = str.length()-1; i >= 0; i--)
            rev += str.charAt(i);

        System.out.println("Reversed: " + rev);
    }
}
#18th program
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        String str;
        int v = 0, c = 0;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter string: ");
        str = sc.nextLine();

        for(int i = 0; i < str.length(); i++) {
            char ch = Character.toLowerCase(str.charAt(i));

            if(ch >= 'a' && ch <= 'z') {
                if("aeiou".indexOf(ch) != -1)
                    v++;
                else
                    c++;
            }
        }

        System.out.println("Vowels: " + v);
        System.out.println("Consonants: " + c);
    }
}
#19th program
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        int arr[] = new int[5];
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter elements:");
        for(int i=0;i<5;i++)
            arr[i] = sc.nextInt();

        for(int i=0;i<5;i++) {
            for(int j=0;j<4;j++) {
                if(arr[j] > arr[j+1]) {
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }

        System.out.println("Sorted array:");
        for(int i=0;i<5;i++)
            System.out.print(arr[i] + " ");
    }
}
#20th program
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        int num, i, flag = 1;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number: ");
        num = sc.nextInt();

        for(i=2;i<=num/2;i++) {
            if(num % i == 0) {
                flag = 0;
                break;
            }
        }

        if(flag == 1)
            System.out.println("Prime");
        else
            System.out.println("Not Prime");
    }
}
#21st prograam
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        int arr[] = new int[5], sum = 0;
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter elements:");
        for(int i=0;i<5;i++) {
            arr[i] = sc.nextInt();
            sum += arr[i];
        }

        System.out.println("Sum: " + sum);
    }
}
#22nd program
import java.util.*;

class Duplicate {
    public static void main(String[] args) {
        int arr[] = {1,2,3,2,4,1};

        for(int i = 0; i < arr.length; i++) {
            for(int j = i+1; j < arr.length; j++) {
                if(arr[i] == arr[j])
                    System.out.println(arr[i]);
            }
        }
    }
}
#23rd program
import java.util.Scanner;

class CountDigits {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        int count = 0;

        while(num != 0) {
            num /= 10;
            count++;
        }

        System.out.println("Digits: " + count);
    }
}
#24th program
class Smallest {
    public static void main(String[] args) {
        int arr[] = {5,2,8,1,9};
        int min = arr[0];

        for(int i = 1; i < arr.length; i++) {
            if(arr[i] < min)
                min = arr[i];
        }

        System.out.println("Smallest: " + min);
    }
}
#25th program
import java.util.Scanner;

class Automorphic {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();

        int square = num * num;

        if(String.valueOf(square).endsWith(String.valueOf(num)))
            System.out.println("Automorphic");
        else
            System.out.println("Not Automorphic");
    }
}
#26th program
class BubbleSort {
    public static void main(String[] args) {
        int arr[] = {5,3,8,1,2};

        for(int i = 0; i < arr.length-1; i++) {
            for(int j = 0; j < arr.length-i-1; j++) {
                if(arr[j] > arr[j+1]) {
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
#27th program
import java.util.Scanner;

public class NeonNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number: ");
        int num = sc.nextInt();

        int square = num * num;
        int sum = 0;

        while (square > 0) {
            sum += square % 10;
            square /= 10;
        }

        if (sum == num)
            System.out.println("Neon Number");
        else
            System.out.println("Not a Neon Number");
    }
}

        for(int num : arr)
            System.out.print(num + " ");
    }
}
#27th program
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.next();

        String rev = new StringBuilder(str).reverse().toString();

        if(str.equals(rev))
            System.out.println("Palindrome");
        else
            System.out.println("Not Palindrome");
    }
}
#28th program
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float f = sc.nextFloat();

        float c = (5f/9f) * (f - 32);
        System.out.println("Celsius: " + c);
    }
}
#29th program
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[10];
        int count = 0;

        for(int i=0;i<10;i++)
            arr[i] = sc.nextInt();

        for(int i=0;i<10;i++) {
            if(arr[i] == 2)
                count++;
        }

        System.out.println("2 appears " + count + " times");
    }
}
#30th program
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.next();
        char ch = sc.next().charAt(0);

        String result = str.replace(String.valueOf(ch), "");
        System.out.println(result);
    }
}
#31st program
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String[] words = sc.nextLine().split(" ");
        int k = sc.nextInt();

        for(String word : words) {
            if(word.length() > k)
                System.out.println(word);
        }
    }
}
#32nd program
import java.util.Scanner;

public class GSTCalculation {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter original amount: ");
        double amount = sc.nextDouble();

        System.out.print("Enter GST rate (%): ");
        double gstRate = sc.nextDouble();

        double gst = (amount * gstRate) / 100;
        double total = amount + gst;

        System.out.println("GST Amount: " + gst);
        System.out.println("Total Amount: " + total);
    }
}
#33rd program
import java.util.Scanner;

public class LeapYear {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a year: ");
        int year = sc.nextInt();

        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
            System.out.println("Leap Year");
        else
            System.out.println("Not a Leap Year");
    }
}
#34th program 
public class HollowDiamond {
    public static void main(String[] args) {
        int n = 5;

        // Upper part
        for (int i = 1; i <= n; i++) {
            for (int j = i; j < n; j++) System.out.print(" ");

            for (int j = 1; j <= (2*i - 1); j++) {
                if (j == 1 || j == (2*i - 1))
                    System.out.print("*");
                else
                    System.out.print(" ");
            }
            System.out.println();
        }

        // Lower part
        for (int i = n-1; i >= 1; i--) {
            for (int j = n; j > i; j--) System.out.print(" ");

            for (int j = 1; j <= (2*i - 1); j++) {
                if (j == 1 || j == (2*i - 1))
                    System.out.print("*");
                else
                    System.out.print(" ");
            }
            System.out.println();
        }
    }
}
#35th program
public class PascalTriangle {
    public static void main(String[] args) {
        int n = 5;

        for (int i = 0; i < n; i++) {
            int num = 1;

            for (int j = 0; j < n - i; j++)
                System.out.print(" ");

            for (int j = 0; j <= i; j++) {
                System.out.print(num + " ");
                num = num * (i - j) / (j + 1);
            }
            System.out.println();
        }
    }
}
#36th program
public class SpiralMatrix {
    public static void main(String[] args) {
        int[][] matrix = {
            {1,2,3,4},
            {5,6,7,8},
            {9,10,11,12},
            {13,14,15,16}
        };

        int top = 0, bottom = matrix.length - 1;
        int left = 0, right = matrix[0].length - 1;

        while (top <= bottom && left <= right) {

            for (int i = left; i <= right; i++)
                System.out.print(matrix[top][i] + " ");
            top++;

            for (int i = top; i <= bottom; i++)
                System.out.print(matrix[i][right] + " ");
            right--;

            for (int i = right; i >= left; i--)
                System.out.print(matrix[bottom][i] + " ");
            bottom--;

            for (int i = bottom; i >= top; i--)
                System.out.print(matrix[i][left] + " ");
            left++;
        }
    }
}
#37th program
import java.util.Arrays;

public class AnagramCheck {
    public static void main(String[] args) {
        String s1 = "listen";
        String s2 = "silent";

        char[] a = s1.toCharArray();
        char[] b = s2.toCharArray();

        Arrays.sort(a);
        Arrays.sort(b);

        if (Arrays.equals(a, b))
            System.out.println("Anagram");
        else
            System.out.println("Not Anagram");
    }
}
#38th program
public class FibonacciRecursion {

    static int fib(int n) {
        if (n <= 1)
            return n;
        return fib(n-1) + fib(n-2);
    }

    public static void main(String[] args) {
        int n = 8;

        for (int i = 0; i < n; i++)
            System.out.print(fib(i) + " ");
    }
}
#39th program
public class Main {
    public static void main(String[] args) {
        int arr[] = {10, 20, 4, 45, 99};

        int largest = arr[0], second = -1;

        for(int i = 1; i < arr.length; i++) {
            if(arr[i] > largest) {
                second = largest;
                largest = arr[i];
            } else if(arr[i] > second && arr[i] != largest) {
                second = arr[i];
            }
        }

        System.out.println("Second Largest: " + second);
    }
}
#40th program
public class Main {
    public static void main(String[] args) {
        int arr[] = {1, 2, 3, 4, 5};

        int last = arr[arr.length - 1];

        for(int i = arr.length - 1; i > 0; i--) {
            arr[i] = arr[i - 1];
        }

        arr[0] = last;

        for(int num : arr)
            System.out.print(num + " ");
    }
}
#41st program
public class Main {
    public static void main(String[] args) {
        int arr[] = {0, 1, 0, 3, 12};
        int count = 0;

        for(int i = 0; i < arr.length; i++) {
            if(arr[i] != 0) {
                arr[count++] = arr[i];
            }
        }

        while(count < arr.length) {
            arr[count++] = 0;
        }

        for(int num : arr)
            System.out.print(num + " ");
    }
}
#42nd program
public class Main {
    public static void main(String[] args) {
        int arr[] = {1, 2, 3, 2, 4, 1};

        for(int i = 0; i < arr.length; i++) {
            for(int j = i + 1; j < arr.length; j++) {
                if(arr[i] == arr[j]) {
                    System.out.println("Duplicate: " + arr[i]);
                    break;
                }
            }
        }
    }
}
#43rd program
public class Main {
    public static void main(String[] args) {
        int arr1[] = {1, 2, 3, 4};
        int arr2[] = {3, 4, 5, 6};

        for(int i = 0; i < arr1.length; i++) {
            for(int j = 0; j < arr2.length; j++) {
                if(arr1[i] == arr2[j]) {
                    System.out.print(arr1[i] + " ");
                }
            }
        }
    }
}
#44th program
class MyThread extends Thread {
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println("Thread running: " + i);
        }
    }
}

public class ThreadDemo {
    public static void main(String[] args) {
        MyThread t = new MyThread();
        t.start();
    }
}
#45th program
class InvalidAgeException extends Exception {
    InvalidAgeException(String msg) {
        super(msg);
    }
}

public class CustomExceptionDemo {
    static void checkAge(int age) throws InvalidAgeException {
        if (age < 18)
            throw new InvalidAgeException("Not eligible");
        else
            System.out.println("Eligible");
    }

    public static void main(String[] args) {
        try {
            checkAge(16);
        } catch (InvalidAgeException e) {
            System.out.println(e.getMessage());
        }
    }
}
