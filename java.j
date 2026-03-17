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
