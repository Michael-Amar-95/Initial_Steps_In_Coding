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

***Factorial Calculation***
- Function `factorial_fuc(number)` computes the factorial of a given non-negative integer.
- Handles edge case for `0!` and validates input.

***Finding Minimum in a Vector***
- Filters numeric values from a mixed vector.
- Function `find_min_value(numeric_vec)` returns the smallest number.

***Blood Pressure Analysis***
- Vectors `names` and `Blood_Pres` (blood pressure values).
- Function `deviates_more_than_10(names, Blood_Pres)` returns names whose values deviate more than ±10% from the average.
- Performs input validation: length, numeric values, uniqueness, positivity.

***Prime Number Checks***
- Function `is_a_prime_num(val)` checks if a number is prime.
- Function `all_prime_numbers(num)` returns all primes up to a given number.
- Handles input validation for numeric and integer values.


