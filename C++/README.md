## Scripts Overview

### 1. Calculator
A simple program that performs basic arithmetic operations on two integers.

**Description** <br>
Prompts the user to enter two integers and displays results for addition, subtraction, multiplication, division, modulo, or all operations. Prevents division/modulo by zero.

**Input** <br>
Two integers entered by the user.

**Output** <br>
Results of the selected operations, e.g: <br>

Enter two numbers: 8 4 <br>

8 + 4 = 12 <br>
8 - 4 = 4 <br>
8 * 4 = 32 <br>
8 / 4 = 2 <br>
8 % 4 = 0 <br>

---

### 2. Cinema Revenue Calculator
A program to calculate a theater's earnings, profit/loss, and potential lost revenue.

**Description** <br>
The program prompts the user to enter:
- Number of tickets sold
- Price per ticket

It calculates:
1. Total money earned
2. Profit or loss (based on a fixed cost)
3. Lost potential earnings due to unsold seats

**Input** <br>
Two integers:
- Number of tickets sold
- Price per ticket

**Output**<br>
Example output: <br>
Enter number of tickets sold: 80 <br>
Enter ticket price: 25 <br>
The theater earned: 2000 NIS <br>
Profit: 0 NIS <br>
Lost potential earnings: 1000 NIS <br>


---

### 3.Digit_count_6
A program that counts how many times the digit "6" appears in a positive integer.

**Description**<br>
The program prompts the user to enter a positive integer. It then calculates and outputs the number of times the digit "6" occurs in that number.

**Input**<br>
- A single positive integer

**Output**<br>
Example: <br>
Please enter a positive number: <br>
666123 <br>
666123 contains the number six 3 time(s). <br>

If a non-positive number is entered, the program repeatedly prompts until a valid input is provided.

---

### 4. FamilyStruct_example
A program to create and display a family structure, including parents and children.

**Description**<br>
The program allows the user to input information for a family:

- Father and mother details (first name and ID)
- Family name
- Number of children
- Details for each child (first name and ID)

It stores this information using `struct`s for `Person` and `Family`, and prints the full family details.

**Input**<br>
- Father’s first name and ID
- Mother’s first name and ID
- Family name
- Number of children
- Each child’s first name and ID

**Output**
- Full details of the family including parents and all children

---

### 5. Find_substring_occurrences
A program that finds substrings of a DNA string that appear exactly N times.

**Description**<br>
The program prompts the user to enter a DNA string, a substring length (k), and a number of occurrences (N). It ignores any characters other than DNA bases (A, C, G, T). It then searches for a substring of length k that appears exactly N times and prints it. If no such substring exists, it informs the user. Only the first substring meeting the criteria is printed. Overlapping occurrences are counted.

**Input**<br>
- A DNA string (any characters are accepted, non-ACGT characters are ignored)<br>
- An integer `k` representing the substring length<br>
- An integer `N` representing the number of occurrences to find<br>

**Output**<br>
- The first k-length substring that occurs exactly N times<br>
- Or a message stating that no such substring exists<br>

**Example Usage**<br>
Please enter string:<br>
ACGTTACGTA <br>
Please enter size of substring: <br>
3 <br>
Please enter # of occurrences: <br>
2 <br>
The 3-mer ACG appears 2 times. <br>

---

### 6. Number_sequence_table
A program that prints number sequences from 1 up to user-provided integers.

**Description**<br>
The program prompts the user to enter 5 positive integers. For each number, it prints a sequence from 1 up to that number. If the user enters a non-positive number, the program repeatedly asks for a valid positive integer. The sequences are displayed in a table-like format with numbers aligned for readability.<br>

**Input**<br>
- 5 positive integers entered by the user<br>

**Output**<br>
- Five sequences of numbers from 1 to the entered numbers, each printed on a separate line<br>

**Example Usage**<br>
Please enter first number:<br>
5<br>
Please enter second number:<br>
3<br>
Please enter third number:<br>
7<br>
Please enter fourth number:<br>
4<br>
Please enter fifth number:<br>
6<br>
1 2 3 4 5<br>
1 2 3<br>
1 2 3 4 5 6 7<br>
1 2 3 4<br>
1 2 3 4 5 6<br>

---

### 7. Phone_number_formatter
A program that formats a numeric phone number into a readable form.

**Description**<br>
The program prompts the user to enter a phone number as an integer. It separates the area code from the local number and formats the output as `0<area-code>-<local-number>`. This helps display phone numbers in a standard human-readable format.<br>

**Input**<br>
- One integer representing the full phone number<br>

**Output**<br>
- Formatted phone number<br>

**Example Usage**<br>
Input:<br>
502345678<br>
Output: 050-2345678<br>

---

### 8. Print_your_age
A program that reads the user's age and outputs a message regarding alcohol purchase eligibility.

**Description**<br>
The program prompts the user to enter their age as an integer. It then prints the age and a message:<br>
- If the user is older than 18, they are permitted to purchase alcohol.<br>
- If the user is 18 or younger (but positive), they are too young to purchase alcohol.<br>
- If the input is invalid (non-positive), an error message is displayed.<br>

**Input**<br>
- One integer representing the user's age<br>

**Output**<br>
- The entered age and an appropriate message<br>

**Example Usage**<br>
Enter age:<br>
20<br>
Your age is:<br>
20<br>
You are permitted to purchase alcohol!<br>

---

### 9. Roman_numeral_converter
A program that converts integers into their Roman numeral representation.

**Description**<br>
The program repeatedly prompts the user to enter an integer between 1 and 100. For each valid input:<br>
- Numbers from 1 to 9 are converted using unit digits (I, II, III, IV, V, VI, VII, VIII, IX).<br>
- Numbers from 10 to 99 are converted using tens and unit digits (X, XX, XXX, XL, L, LX, LXX, LXXX, XC) combined with unit digits.<br>
- The number 100 is directly converted to `C`.<br>
- Input validation ensures that numbers greater than 100 are rejected.<br>
- The program stops when a non-positive number is entered.<br>

**Input**<br>
- One integer at a time (1–100)<br>

**Output**<br>
- The corresponding Roman numeral for each entered integer<br>

**Example Usage**<br>
Enter a number to convert to roman numeral:<br>
9<br>
IX<br>
Enter a number to convert to roman numeral:<br>
42<br>
XLII<br>
Enter a number to convert to roman numeral:<br>
100<br>
C<br>

---

### 10. Star_triangle
A program that prints a full triangle of stars based on an odd integer input.

**Description**<br>
The program prompts the user to enter an odd integer greater than 1 (the triangle base size).<br>
- The program checks that the input is odd and greater than 1.<br>
- It prints a centered triangle with the number of stars in the base equal to the entered number.<br>
- Invalid input (even numbers or numbers ≤ 1) will trigger repeated prompts until a valid input is provided.<br>

**Input**<br>
- One odd integer greater than 1 (base size of the triangle)<br>

**Output**<br>
- A full star triangle, e.g. for input 5:<br>

**Example Usage**<br>
Please enter number for base of triangle (odd only!) :<br>
5<br>
*<br>
***<br>
*****<br>

---

### 11. String_compression
A program to compress and decompress strings using a simple run-length encoding technique.

**Description**<br>
The program offers a menu with three options:<br>
1. Compress a string<br>
2. Decompress a string<br>
3. Exit<br>
- Compression replaces sequences of identical characters with the character followed by the number of occurrences.<br>
- Only alphabetic characters are allowed. If the input contains numbers, an error is shown.<br>
- Decompression reverses the compression to restore the original string.<br>

**Input**<br>
- For compression: a string containing only letters (upper or lowercase)<br>
- For decompression: a string in the compressed format (e.g., "A5B3C2")<br>

**Output**<br>
- For compression: the compressed string, e.g., "AAAAABBB" → "A5B3"<br>
- For decompression: the original string restored from the compressed version<br>

**Example Usage**<br>
Menu <br>
(1) Compress String <br>
(2) Decompress String <br>
(3) Exit

Input String: <br>
AAAAABBBGGG <br>
Compressed String: A5B3G3 

Menu <br>
(1) Compress String <br>
(2) Decompress String <br>
(3) Exit

Input String: <br>
A5B3G3 <br>
Uncompressed String: AAAAA BBB GGG

---

### 12. Three-Digit Reverser
A program to reverse the digits of a three-digit number.

**Description**<br>
The program prompts the user to enter a number with exactly three digits.<br>
It then reverses the digits to create a new three-digit number and displays it.<br>
The program assumes valid input (three digits) and performs the necessary calculations to reverse the digits.<br>

**Input**<br>
- A three-digit integer entered by the user.<br>

**Output**<br>
- The reversed three-digit number.<br>

**Example Usage**<br>
Input: <br>
123 <br>
Output: 321

---

