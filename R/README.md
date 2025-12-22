# R Learning Exercises

This repository contains R code snippets I wrote while learning programming in R.  

## airquality_primefactor_movie_analysis.R

### Air Quality Analysis
- Dataset: `airquality` (NYC, May–September 1973)
- Handles missing values, categorizes wind speed, calculates monthly averages
- Visualizes wind speed distribution with `ggplot2`

### Prime Factorization
- Functions: `prime_factorization()`, `unique_prime_factors()`, `common_prime_factors()`
- Computes prime factors and common divisors
- Demonstrates number theory and function creation in R

### Movie Data Analysis
- Dataset: `movie_statistic_dataset2.tsv`
- Finds top 10 highest-rated movies
- Analyzes directors, performs PCA, computes rating-gross correlations
- Visualizes data using bar plots and PCA scatterplots


## basic_r_exercises.R


### Factorial Calculation
- Function `factorial_fuc(number)` computes the factorial of a given non-negative integer.
- Handles edge case for `0!` and validates input.

### Finding Minimum in a Vector
- Filters numeric values from a mixed vector.
- Function `find_min_value(numeric_vec)` returns the smallest number.

### Blood Pressure Analysis
- Vectors `names` and `Blood_Pres` (blood pressure values).
- Function `deviates_more_than_10(names, Blood_Pres)` returns names whose values deviate more than ±10% from the average.
- Performs input validation: length, numeric values, uniqueness, positivity.

### Prime Number Checks
- Function `is_a_prime_num(val)` checks if a number is prime.
- Function `all_prime_numbers(num)` returns all primes up to a given number.
- Handles input validation for numeric and integer values.


## big_bang_analysis.R

### Vector Manipulation
- **cumulative_sum(vec):** Returns the cumulative sum of a numeric vector.
- **count_occurrences(vec, element):** Counts how many times an element appears in a vector.
- **rotate_vector(vec, n):** Rotates a numeric vector to the right by `n` positions (circular rotation).

### Data Frame Manipulation (Iris Dataset)
- Adds `Sepal.Area` column as product of `Sepal.Length` and `Sepal.Width`.
- Adds `Long_Petal` column indicating whether `Petal.Length > 5`.
- Computes counts of long-petal flowers per species.
- Computes average `Sepal.Area` per species.

### The Big Bang Theory Analysis
- Reads `The_Big_Bang_Theory.csv` with episode-level data.
- **Directors Analysis:** Percent stacked bar plot of directors per season; identifies dominant directors.
- **Top Director Viewership:** Computes total U.S. viewers for top director of each season; plots changes over seasons.
- **Overall Show Viewership:** Dot plot with LOESS smoothed line for total viewers per season; interprets trends over years.

## palindrome_mtcars_airquality_analysis.R

### Question 1: Palindrome Checker
- **is_palindrome(text):** Checks whether a given text is a palindrome.
- Ignores spaces, punctuation, and capitalization.
- Demonstrates string manipulation and logical checks.

### Question 2: MTCars Dataset Analysis
- Loads the built-in `mtcars` dataset with 32 cars and 11 variables.
- **2.a:** Scatter plot of `cyl` vs `mpg` faceted by `gear`.
- **2.b:** Calculate average `mpg` for each cylinder count.
- **2.c:** Bar plot showing average `mpg` by number of cylinders.
- **2.d:** Add `Weight_Per_Horsepower` column, find cars with lowest and highest ratio.
- **2.e:** Bar plot of `Weight_Per_Horsepower` per car manufacturer.

### Question 3: Air Quality Dataset Analysis
- Loads the built-in `airquality` dataset (measurements in NYC).
- **3.a:** Maximum daily temperature for each month (May–September).
- **3.b:** Correlation coefficient between `Temp` and `Solar.R`.
- **3.c:** `ozone_summary(month, threshold)` function to check if average Ozone exceeds a threshold.


## tree_analysis.R

### Question 1: Trees Volume
- Calculates the volume of trees given vectors of `lengths`, `widths`, and `heights`.
- `Trees_Volume <- lengths * widths * heights`

### Question 2: Average Tree Volume
- Calculates the average volume of all trees using `mean(Trees_Volume)`.

### Question 3: Short Trees
- Creates a vector of tree heights less than 2.5 meters.

### Question 4: Medium Trees
- Creates a vector of tree heights between 5 and 9 meters.

### Question 5: Trees Taller than LeBron James
- Identifies trees taller than 2.03 meters.
- Counts the number of such trees and prints a message.

### Question 6: Numbers from 1 to 60
- Creates a vector `sixty_numbers` containing numbers from 1 to 60.
- Filters numbers divisible by both 2 and 3.

### Question 7: Transform Numbers and Filter
- Multiplies each number in `sixty_numbers` by 3 and adds 3.
- Filters numbers not divisible by 5.
- Prints the count of values not divisible by 5.






