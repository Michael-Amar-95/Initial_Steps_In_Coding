/**
 * This class check if the numbers can represent a triangle.
 * <p>
 * class contain the main.
 *
 * @return triangle\right triangle\not triangle\invalid number/
 */

public class TriangleCheck {
    /**
     * This function check if the numbers can represent a triangle.
     *
     * @param a are arguments witch come from user.
     * @param b are arguments witch come from user.
     * @param c are arguments witch come from user.
     */

    static void triangleCheck(double a, double b, double c) {
        if (c > a + b || b > a + c || a > b + c) {
            System.out.println("not triangle");
        } else {
            System.out.println("triangle!");
            if (isRightTriangleCheck(a, b, c)) {
                System.out.println("right angled!");
            }
        }
    }

    /**
     * This function check if the these three numbers represent the
     * lengths of edges of a right triangle.
     *
     * @param a length of edge of a triangle.
     * @param b length of edge of a triangle.
     * @param c length of edge of a triangle.
     * @return if the edges can represent a right triangle the function return true,
     * o.w it return false.
     */

    static boolean isRightTriangleCheck(double a, double b, double c) {
        double epsilon = Math.pow(10, -14);
        if (Math.abs((a * a) - (b * b + c * c)) <= epsilon || Math.abs((b * b) - (a * a + c * c)) <= epsilon
                || Math.abs((c * c) - (a * a + b * b)) <= epsilon) {
            return true;
        }

        return false;

    }

    /**
     * Main function.
     * <p>
     * Check if the value can represent an edges.
     *
     * @param args get 3 num from user.
     */

    public static void main(String[] args) {

        if (args.length != 3) {
            System.out.println("Invalid input");
        } else {
            double a = Double.parseDouble(args[0]);
            double b = Double.parseDouble(args[1]);
            double c = Double.parseDouble(args[2]);
            if (a <= 0 || b <= 0 || c <= 0) {
                System.out.println("Invalid input");
            } else {
                triangleCheck(a, b, c);
            }
        }
    }
}

