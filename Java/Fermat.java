/**
 * The type Fermat.
 * print all a,b,c for which the Pythagorean equation a^n + b^n = c^n.
 */
public class Fermat {

    /**
     * The entry point of application.
     *
     * @param args the input arguments
     */
    public static void main(String[] args) {
        if (args.length != 2) {
            System.out.println("Invalid input");
        } else {
            double n = Double.parseDouble(args[0]);
            double range = Double.parseDouble(args[1]);
            if (isPositiveNum(n, range)) {
                pythagoreanEquation(n, range);
            } else {
                System.out.println("Invalid input");
            }
        }
    }

    /**
     * Check if the nums are positive.
     *
     * @param n     the power num.
     * @param range the range
     * @return true if the nums are positive.
     */
    public static boolean isPositiveNum(double n, double range) {
        return (n > 0 && range > 0);
    }

    /**
     * This method do the calculation.
     *
     * @param n     the n
     * @param range the range
     */
    public static void pythagoreanEquation(double n, double range) {
        int flag = 0;
        for (int i = 1; i < range; ++i) {
            for (int j = i; j < range; ++j) {
                for (int k = j; k < range; ++k) {
                    if ((Math.pow(i, n) + Math.pow(j, n)) == Math.pow(k, n)) {
                        System.out.println(i + "," + j + "," + k);
                        flag = 1;
                    }
                }
            }
        }
        if (flag == 0) {
            System.out.println("no");
        }
    }
}

