/**
 * The type Sum div.
 * receives 3 positive Integers a,b,c as arguments and prints
 * out the numbers between 1 and a (including a itself)
 * that is divisible by b or c. and the sum of all these numbers.
 */
public class SumDiv {
    /**
     * The entry point of application.
     *
     * @param args the input arguments
     */
    public static void main(String[] args) {
        if (args.length != 3) {
            System.out.println("Invalid input");
        } else {
            double range = Double.parseDouble(args[0]);
            double b = Double.parseDouble(args[1]);
            double c = Double.parseDouble(args[2]);
            if (isPositiveNum(range, b, c)) {
                sumDivCheck(range, b, c);
            } else {
                System.out.println("Invalid input");
            }
        }
    }

    /**
     * Check if the input is is positive.
     *
     * @param range the range.
     * @param b     the b.
     * @param c     the c.
     * @return true if nums are positive.
     */
    public static boolean isPositiveNum(double range, double b, double c) {
        return (range > 0 && b > 0 && c > 0);
    }

    /**
     * Sum and print the num that div by b or c.
     *
     * @param range the a
     * @param b     the b
     * @param c     the c
     */
    public static void sumDivCheck(double range, double b, double c) {
        int sum = 0;
        int i = 1;
        while (i <= range) {
            if (i % c == 0 || i % b == 0) {
                sum += i;
                System.out.println(i);
            }
            ++i;
        }
        System.out.println(sum);
    }

}
