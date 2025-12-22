/**
 * public contain the main code.
 */
public class AveragePrimes {
    /**
     * this function get num from the user and all the prime numbers between 2 and
     * the num. The function print the average.
     *
     * @param args get a num from user
     */

    public static void main(String[] args) {

        int n = Integer.parseInt(args[0]);
        //Scanner in = new Scanner(System.in);  // Create a Scanner object
        double sum = 0; //sum the prime numbers between 2 and n
        int numOfPrime = 0; //count the number of prime
        double avg;
        if (n <= 1) {
            System.out.println("Invalid value");
        } else {
            for (int i = 2; i <= n; i++) {
                int counter = 0;
                for (int j = 2; j <= i; j++) {
                    if (i % j == 0) {
                        counter++;
                    }
                }
                if (counter == 1) {
                    sum += i;
                    numOfPrime++;
                }
            }
            avg = (sum / numOfPrime);
            System.out.println(avg);
        }
    }

}


