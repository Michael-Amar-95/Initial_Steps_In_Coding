N <- 5

# Function that receives a number N and returns it’s Factorial 
factorial_fuc <- function(number){
  result <- 1 # initial the factorial number
  for (variable in 1:N) {
    result = result*variable
  }
  return(result) # return the factorial of the number
}

# Check condition
if (is.numeric(N) && N == floor(N) && N >= 0) {
  if (N == 0) {
    print(1) # The factorial of 0 is 1
  } else {
    print(factorial_fuc(N))
  }
} else {
  print("Input should be a non-negative integer.")
}


# Initial vector of numeric numbers
numeric_vec <- c(15,5,47,8,8,84,-21,"moshe",-5,0,1,-1)

# This function find the min value in vector
find_min_value <- function(numeric_vec){
  # Take the first value in the vector as default value
  min_val <- numeric_vec[1]
  
  # For loop which run over the values
  for (variable in numeric_vec) {
    temp_val <- variable
    # check which num is smaller
    if (min_val >= temp_val) {
      min_val <-  temp_val
    }
  }
  return (min_val)
}

# Function to check if an element can be coerced to numeric
is_numeric <- function(x) {
  !is.na(suppressWarnings(as.numeric(x)))
}

# Filter only numeric values
valid_numeric_vec <- numeric_vec[sapply(numeric_vec, is_numeric)]

# Convert to numeric
valid_numeric_vec <- as.numeric(valid_numeric_vec)

if (length(valid_numeric_vec) == 0) {
  print("The vector is empty after filtering non-numeric values.")
} else {
  print(find_min_value(valid_numeric_vec))}

# names vector
names <- c('Denzel Washington', 'Tom Hanks', 'Robert De Niro', 'Al Pacino', 'Robin Williams', 'Charlie Chaplin', 'Leonardo DiCaprio', 'Harrison Ford'
           , 'Clark Gable', 'Ingrid Bergman', 'Cate Blanchett', 'Audrey Hepburn')
# blood vector
Blood_Pres <- c(100, 99.2, 105.5, 110.1, 98.9, 100.9, 98.1, 103.3, 106, 95.6, 87.8, 85)

# The function create and return a new vector which contains all
# names which their corresponded blood pressure value deviates more than 10%
# from the blood pressure average
deviates_more_than_10 <- function(names,Blood_Pres){
  
  # average blood pressure
  avg_blood_pre <- mean(Blood_Pres)
  # calculate 10% more than average
  average_110 <- avg_blood_pre * 110 / 100
  # calculate 10% less than average
  average_90 <- avg_blood_pre * 90 / 100

  # Create an empty vector which store the desired names
  names_pass_the_condition <- c()

  # Search for the names which pass the condition
  for (variable in 1:length(names)) {
    if (average_90 >= Blood_Pres[variable] | Blood_Pres[variable] >= average_110) {
      names_pass_the_condition <-  append(names_pass_the_condition, names[variable])
    }
  }
  return(names_pass_the_condition)
}

# Check if both vectors have the same length
if (length(names) != length(Blood_Pres)) {
  print("The names and Blood_Pres vectors must be of the same length.")
} else if (!all(sapply(Blood_Pres, is.numeric))) {
  # Check if Blood_Pres contains only numeric values
  print("The Blood_Pres vector must contain only numeric values.")
} else if (any(Blood_Pres <= 0)) {
  # Check if Blood_Pres contains only positive values
  print("The Blood_Pres vector must contain only positive values.")
} else if (length(unique(names)) != length(names)) {
  # Check if names contain unique elements
  print("The names vector must contain unique elements.")
} else {
  # All checks passed, call the function
  print(deviates_more_than_10(names, Blood_Pres))
}

val <- 7

# This function check whether the value is prime number or not.
# The function returns True for prime and False o.w.
is_a_prime_num <- function(val){
  # check if val number equal or less than 1 = not prime number
  if (val <= 1) {
    return(FALSE)
  }
  # 2 is a prime number
  if (val == 2) {
    return(TRUE)
  }
  # check if it divide by more than 2 number
  for (i in 2:(val-1)) {
    if (val %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

# Check if val can be converted to numeric
val_numeric <- suppressWarnings(as.numeric(val))

if (is.na(val_numeric)) {
  cat(val, "is not a valid numeric input. Val needs to be an integer and therefore the answer is: FALSE\n")
} else {
  # Check if val is an integer
  if (val_numeric != floor(val_numeric)) {
    cat(val_numeric, "is not an integer. Val needs to be an integer and therefore the answer is: FALSE\n")
  } else {
    cat(val_numeric, "is a prime number:", is_a_prime_num(val_numeric), "\n")
  }
}

num <- 100

# A function that receives a number, and returns all prime numbers up to it(including).
all_prime_numbers <- function(num){
  # a vector which will contain all the primes up to "num" variable
  save_pri_numbers <- c()
  for (variable in 1:num) {
    # using the function from Q4
    if (is_a_prime_num(variable)) {
      save_pri_numbers = append(save_pri_numbers,variable)
    }
  }
  return(save_pri_numbers)
}

# Check if num_numeric can be converted to numeric
num_numeric <- suppressWarnings(as.numeric(num))

if (is.na(num_numeric)) {
  cat(num, "is not a valid numeric input, Num needs to be an integer.\n")
} else {
  # Check if num_numeric is an integer
  if (num_numeric != floor(num_numeric)) {
    cat(num_numeric, "is not an integer. Num needs to be an integer.\n")
  } else {
    if (num_numeric <= 1) {
      cat(num_numeric ,"is less than 1 and there are no prime number under 2.")
    } else {
    print(all_prime_numbers(num_numeric))  }
  }
}
