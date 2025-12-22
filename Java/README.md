# Utility Scripts Collection

A collection of small scripts written during early learning stages, covering basic programming, file processing, and bioinformatics workflows.

## Scripts Overview

### 1. AveragePrimes (Java)

A Java program that calculates the average of all prime numbers between 2 and a user-defined number.

**What it does:**
- Receives an integer `n` as a command-line argument
- Identifies all prime numbers in the range `2` to `n`
- Calculates and prints their average
- Prints an error message if the input value is invalid (`n ≤ 1`)

**Purpose:**
- Practice basic Java control structures, loops, and command-line arguments

**Usage:**
```bash
javac AveragePrimes.java
java AveragePrimes 100
```
---

### 2. CharCount (Java)
A Java program that reorders a list of words based on the appearance of a specific character.

**What it does:**
- Receives multiple words as command-line arguments
- The last argument must be a single character
- Validates the input (minimum arguments and valid character)
- Reorders the words so that:
  - Words containing the given character appear first
  - Remaining words appear afterward
- Preserves the original order within each group

**Input:**
- One or more words
- A single character as the last argument

**Output:**
- Reordered list of words printed line by line
- Prints `Invalid input` if validation fails

**Purpose:**
- Practice string manipulation, arrays, input validation, and algorithmic thinking in Java

---

### 3. Fermat (Java)
A Java program that searches for integer solutions to the equation:

aⁿ + bⁿ = cⁿ

within a given range.

**What it does:**
- Receives two command-line arguments:
  - `n` – the exponent
  - `range` – the upper bound for values of `a`, `b`, and `c`
- Validates that both inputs are positive numbers
- Checks all integer combinations in the range
- Prints all valid triplets `(a, b, c)`
- Prints `no` if no solutions are found

**Purpose:**
- Practice nested loops, mathematical computation, and input validation
- Explore properties related to Fermat-type equations

---

### 4. HelloWorld (Java)

A simple Java program that demonstrates the basic structure of a Java application.

**What it does:**
- Prints the message `Hi` to the console five times
- Illustrates the use of a `main` method and a basic `for` loop

**Purpose:**
- Introductory example for learning Java syntax and program structure

---

### 5. Str (Java)

A Java program that searches a sequence of words for matches with a query string.

**What it does:**
- Receives two command-line arguments:
  1. `query` – the word to search for
  2. `sequence` – words separated by underscores
- Validates input (exactly two arguments required)
- Splits the sequence into words
- Prints two groups:
  - Words that start with the query (case-sensitive)
  - Words that contain the query but do not start with it (case-sensitive)

**Input:**
- Query word
- Underscore-separated sequence of words

**Output:**
- Reordered list of matching words, printed line by line
- Prints `Invalid input` if arguments are incorrect

**Purpose:**
- Practice string manipulation, array handling, and input validation in Java

---

### 6. SumDiv (Java)

A Java program that prints numbers divisible by two given integers and calculates their sum.

**What it does:**
- Receives three positive integers as command-line arguments:
  1. `a` – upper limit of the range (1 to a)
  2. `b` – first divisor
  3. `c` – second divisor
- Validates input (exactly three positive numbers required)
- Iterates from 1 to `a`
- Prints each number divisible by `b` or `c`
- Calculates and prints the total sum of these numbers

**Input:**
- Three positive integers: `a b c`

**Output:**
- Numbers divisible by `b` or `c` (printed line by line)
- Sum of these numbers

---

### 7. TriangleCheck (Java)
A Java program that checks if three numbers can form a triangle and whether it is a right-angled triangle.

**What it does:**
- Receives three positive numbers as command-line arguments
- Validates input (exactly three positive numbers required)
- Checks if the numbers satisfy the triangle inequality theorem
  - Prints `not triangle` if they do not
  - Prints `triangle!` if they do
- Checks if the triangle is right-angled using the Pythagorean theorem
  - Prints `right angled!` if applicable

**Input:**
- Three positive numbers representing the sides of a triangle

**Output:**
- `Invalid input` if arguments are missing or non-positive
- `not triangle` if sides cannot form a triangle
- `triangle!` and optionally `right angled!` if valid

---

