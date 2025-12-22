/**
 * The type Str.
 * The program should print two groups of words:
 * The words in the sequence that start with the query (case sensitive)
 * All words in the sequence that include the query (case sensitive)
 */
public class Str {


    /**
     * The entry point of application.
     *
     * @param args the input arguments
     */
    public static void main(String[] args) {
        String query;
        String sequence;
        if (args.length != 2) {
            System.out.println("Invalid input");
        } else {
            query = args[0];
            //System.out.println(query);
            sequence = args[1];
            //System.out.println(sequence);
            String[] words = sequence.split("_");
            sequenceThatStart(query, words);
            sequenceThatContain(query, words);
        }
    }


    /**
     * Find Sequence that start with query.
     *
     * @param query the query
     * @param words the words in the sequence.
     */
    public static void sequenceThatStart(String query, String[] words) {
        for (int i = 0; i < words.length; ++i) {
            if (checkPrefix(query, words[i])) {
                System.out.println(words[i]);
            }
        }
    }

    /**
     * Check prepix of words.
     *
     * @param query the query.
     * @param word  the words in the sequence.
     * @return if there is a match between the prefix and
     * the word return true.
     */
    public static boolean checkPrefix(String query, String word) {
        for (int i = 0; i < query.length(); ++i) {
            if (query.length() > word.length()) {
                return false;
            }
            if (query.charAt(i) != word.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    /**
     * Find the words that contain the query.
     *
     * @param query the query.
     * @param words the words in the sequence.
     */
    public static void sequenceThatContain(String query, String[] words) {
        for (int i = 0; i < words.length; ++i) {
            if (words[i].contains(query) && !checkPrefix(query, words[i])) {
                System.out.println(words[i]);
            }
        }
    }


}
