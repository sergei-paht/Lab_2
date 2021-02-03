// 10 variant
import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        System.out.println("Enter a number");
        double a=in.nextDouble();
        double s=Math.sin((Math.PI/2)+ 3 * a);
        double s1= 1 - Math.sin((3 * a) - Math.PI);
        double result = s / s1;
        String okrygl = String.format("%.3f",result);
        System.out.println("Z =" + okrygl);
        in.close();
    }
}
