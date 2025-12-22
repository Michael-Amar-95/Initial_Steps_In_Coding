#include <stdio.h>
#include <string.h>

/*
 * Function: longestUniqueSubstring
 * --------------------------------
 *  Returns the length of the longest substring in 's'
 *  that contains no repeating characters.
 *
 *  It uses a sliding-window technique:
 *    - 'start' marks the beginning of the current window.
 *    - 'lastIndex' keeps track of the last seen position
 *       of each ASCII character.
 *
 *  The algorithm runs in O(n) time.
 */
int longestUniqueSubstring(const char *s) {
    int lastIndex[256];

    // Initialize all character indices to -1 (meaning unseen)
    for (int i = 0; i < 256; i++)
        lastIndex[i] = -1;

    int maxLen = 0;   // Longest substring found
    int start = 0;    // Start index of the current window

    // Iterate through all characters in the string
    for (int i = 0; s[i] != '\0'; i++) {
        unsigned char c = s[i];

        // If the character was seen inside the current window,
        // move the window start to the right
        if (lastIndex[c] >= start) {
            start = lastIndex[c] + 1;
        }

        // Update the last occurrence of the character
        lastIndex[c] = i;

        // Compute current window length
        int currentLen = i - start + 1;
        if (currentLen > maxLen) {
            maxLen = currentLen;
        }
    }

    return maxLen;
}

/*
 * main:
 * -----
 * Reads a string from the user and prints
 * the length of the longest substring without repeating characters.
 */
int main() {
    char input[256];

    printf("Enter a string: ");
    scanf("%255s", input); // Safe input (prevents overflow)

    int result = longestUniqueSubstring(input);
    printf("Longest substring without repeating characters: %d\n", result);

    return 0;
}
