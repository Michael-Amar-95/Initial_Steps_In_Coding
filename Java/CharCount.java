/**
 * Class CharCount.
 * <p>
 * The function receives a number of words (strings separated by a space) and one char as the last arguments.
 * The program print two groups of words: first the words in which the char appears, and then the rest of the words.
 * Each group of words should be printed in the order that they were recieved.
 */

public class CharCount {

    /**
     * Check the input.
     * <p>
     * The function check if there are more then two input and if
     * the last input is a char, if the condition happens the function return
     * true. O.w false.
     *
     * @param args the user's input.
     * @return true\false.
     */

    static boolean isValidInput(String[] args) {
        String str = args[args.length - 1];
        char[] lastChar = str.toCharArray();
        if (args.length < 3) {
            return false;
        } else if (lastChar.length != 1) {
            return false;
        } else if (lastChar[0] == '*' || lastChar[0] == '^' || lastChar[0] == '"') {
            return false;
        }
        return true;
    }

    /**
     * the function switch the places of the string.
     *
     * @param args user's input.
     */

    static void switchPlaces(String[] args) {
        String str = args[args.length - 1]; //str get the char
        char[] lastChar = str.toCharArray();
        int[] array = new int[args.length];
        indexOfPlaces(args, lastChar, array); //this array represent the desirable order of string
        String[] temp = new String[args.length];
        for (int i = 0; i < args.length; i++) {
            temp[i] = String.valueOf(args[i]); //temp string get the value of args
        }
        for (int i = 0; i < args.length; i++) {
            args[i] = String.valueOf(temp[array[i]]); //switch places of words by desirable order
        }
    }

    /**
     * Order the index.
     * <p>
     * Longer description. If there were any, it would be here.
     * <p>
     * And even more explanations to follow in consecutive
     * paragraphs separated by HTML paragraph breaks.
     *
     * @param args     user's input.
     * @param array    help to order the index.
     * @param lastChar the last char in the string.
     */

    static void indexOfPlaces(String[] args, char[] lastChar, int[] array) {
        int index = 0; // point index in array
        for (int i = 0; i < args.length - 1; i++) {
            String str = args[i];     //get word by order
            char[] word = str.toCharArray();
            for (int n = 0; n < word.length; n++) {   //check if the word contain the char
                if (word[n] == lastChar[0]) {         //if it contain i put the index in array
                    array[index] = i;
                    index++;
                    break;
                }
            }
        }
        int sizeOfNewArr = index;  //how much words contain the char
        for (int i = 0; i < args.length; i++) {  //chech if the index exist in new array
            int flag = 0;
            for (int n = 0; n < sizeOfNewArr; n++) {
                if (array[n] == i) {
                    flag++;
                    break;
                }
            }
            if (flag == 0) { //if index do not exist in array, i put it.
                array[index] = i;
                index++;
            }
        }
    }


    /**
     * Main function.
     * This function get input from user.
     *
     * @param args user's input.
     */

    public static void main(String[] args) {
        if (isValidInput(args)) {
            switchPlaces(args);
            for (int i = 0; i < args.length - 1; i++) {
                System.out.println(args[i]);
            }
        } else {
            System.out.println("Invalid input");
        }
    }
}

