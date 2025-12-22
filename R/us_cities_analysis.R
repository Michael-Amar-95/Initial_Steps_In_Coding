library(dplyr)
library(scales)

##### Q1 ######

#Check if a specific file exists in the current directory
file_name <- "uscities.csv"
if (file.exists(file_name)) {
  print("The file exists.")
  # read the data
  data_uscities <- read.csv("uscities.csv")
  
  # sort the data according to population column
  data_uscities_ordered <- data_uscities[order(data_uscities$population, decreasing = TRUE), ]
  head(data_uscities_ordered, n=5)
  
} else {
  print("The file does not exist.")
  # Print all files in the current directory
  print(list.files())
  break
}

##### Q2 ######

nameOfCity <- "Vail"

# The function should return a text stating the state the city is from.
# If there is more than one matching state – return all of them. 
# If the city is not in the table, print ‘There is no data',
Match_State <- function(city_name){
  if (is.character(city_name)) {
    
    # Find the rows in the data frame that match the city name
    matches <- data_uscities[data_uscities$city == city_name, ]
    
    # Check if any matches were found
    if (nrow(matches) > 0) {
      # Get the unique states for the matching city
      unique_states <- unique(matches$state_name)
      
      # Create the output message
      if (length(unique_states) == 1) {
        message <- (paste(city_name, "is in", unique_states))
      } else {
        message <- (paste(city_name, "is in", paste(unique_states, collapse = ", ")))
      }
      
      return(list(message = message, unique_states = unique_states))
      
    } else {
      message <- ("There is no data.")
      return (list(message = message, unique_states = NULL))
    }
    
    # Check validation of input
  } else {
    message <-  ("The city name is not a string.")
    return(list(message = message, unique_states = NULL))
  }
}

# Access to message
print(Match_State(nameOfCity)$message)

## Access to unique states
#print(Match_State(nameOfCity)$unique_states)


# # Find all duplicated city names
# duplicated_cities <- data_uscities$city[duplicated(data_uscities$city)]
# 
# # Get the unique duplicated city names
# unique_duplicated_cities <- unique(duplicated_cities)
# 
# # Print the unique duplicated city names
# print(unique_duplicated_cities)


##### Q3 ######

# Add empty column named Area
data_uscities$Area <- NA

# Calculate Area and force NaN when density is zero (dividing by zero is not difined)
data_uscities$Area <- ifelse(data_uscities$density == 0, NaN, data_uscities$population / data_uscities$density)

# Filter the cities in Alaska
alaska_cities <- data_uscities[data_uscities$state_name == "Alaska", ]

# Filter out rows with NaN or NA values in the Area column
alaska_cities_without_NaN_value <- alaska_cities %>% 
  filter(!is.na(Area))

# Count the number of cities
num_cities_without_NaN_value <- nrow(alaska_cities_without_NaN_value)

# Calculate the percentage of cities in Alaska with an area less than 100 and without NaN value
alaska_area_small_than_100 <- alaska_cities %>% filter(Area < 100, na.rm = TRUE)

percentage_area_small_than_100 <- (nrow(alaska_area_small_than_100) / nrow(alaska_cities)) * 100

percentage_area_small_than_100_without_NaN <- (nrow(alaska_area_small_than_100) / num_cities_without_NaN_value) * 100

# I asked the following question in the forum regarding how to handle NaN values in the 'Area' column,
# but did not receive a response. Therefore, I decided to solve the problem considering both cases:
# whether to include or exclude cities with NaN values in the final count of total cities.

# print(paste0("Percentage of cities in Alaska with an area less than 100: ", percentage_area_small_than_100, "%"))
print(paste0("Percentage of cities in Alaska with an area less than 100 and total cities without NaN value: ", percentage_area_small_than_100_without_NaN, "%"))


##### Q4 ######

# Function to find the state with the highest population for a given city
get_highest_population_state <- function(city, unique_states) {
  max_population <- -Inf
  best_state <- NULL
  
  for (state in unique_states) {
    # Extract the population for the specific city and state
    state_population <- data_uscities[data_uscities$city == city & data_uscities$state_name == state, "population"]
    
    # If the population is greater than the current max_population, update max_population and best_state
    if (!is.na(state_population) && state_population > max_population) {
      max_population <- state_population
      best_state <- state
    }
  }
  return(list(best_state = best_state, max_population=max_population))
}

# Find the populated city between two city
Populated_City <- function(city1, city2) {
  # Get data for both cities
  city1_result <- Match_State(city1)
  city2_result <- Match_State(city2)
  
  # Extract messages and unique states
  city1_message <- city1_result$message
  city2_message <- city2_result$message
  city1_unique_states <- city1_result$unique_states
  city2_unique_states <- city2_result$unique_states
  
  # Check if one of the cities has no data or invalid input
  if (city1_message == "There is no data." || city2_message == "There is no data." ||
      city1_message == "The city name is not a string." || city2_message == "The city name is not a string.") {
    print("There is no data.")
    return(0)
  }
  
  city1_higher_population <- get_highest_population_state(city1,city1_unique_states)
  city2_higher_population <- get_highest_population_state(city2,city2_unique_states)
  
  # Compare populations and print the appropriate message
  if (city1_higher_population$max_population == city2_higher_population$max_population) {
    print(paste(city1, "is in", city1_higher_population$best_state, "and has a population of", city1_higher_population$max_population))
    print(paste(city2, "is in", city2_higher_population$best_state, "and has a population of", city2_higher_population$max_population))
    print("Both cities have the same population.")
  } else if (city1_higher_population$max_population > city2_higher_population$max_population) {
    print(paste(city1, "is in", city1_higher_population$best_state))
  } else {
    print(paste(city2, "is in", city2_higher_population$best_state))
  }
}

city_name_1 = "Vail"
city_name_2 = "Adair"

populated_city_results <- Populated_City(city_name_1,city_name_2)

##### Q5 ######

# Create a subset of the data frame with the desired columns
state_subset_according_to_col <- data_uscities %>%
  select(state_name, state_id, population, density)

grouped_summerize_state_subset <- state_subset_according_to_col %>% group_by(state_name, state_id) %>% 
  summarise(total_population = sum(population, na.rm = TRUE),
            total_density = sum(density, na.rm = TRUE),
            .groups = "drop"  # This removes the grouping after summarization)
)

# Sort the summarized data frame by total_density in descending order
sorted_state_subset <- grouped_summerize_state_subset[order(grouped_summerize_state_subset$total_density, decreasing = TRUE, na.last = FALSE), ]

# Format the total_density column to show all decimal places
formatted_state_subset <- sorted_state_subset %>%
  mutate(total_density = format(total_density, nsmall = 2))

# # Format columns with 2 decimal places and no commas or spaces
# sorted_state_subset_formatted <- sorted_state_subset %>%
#   mutate(
#     total_population = format(total_population, nsmall = 2, big.mark = "", scientific = FALSE),
#     total_density = format(total_density, nsmall = 2, big.mark = "", scientific = FALSE)
#   )

# # Print the first 20 rows
# print(head(sorted_state_subset, 20))

# Print the first 20 rows of the sorted data frame
print(head(formatted_state_subset, 20))

##### Q6 ######

# Assuming sorted_state_subset is the data frame with sorted data

# Create a new table with the names and population size of the 5 most populated states
top_5_states <- sorted_state_subset %>%
  arrange(desc(total_population)) %>%  # Ensure the data is sorted in descending order
  slice_head(n = 5) %>%                # Select the top 5 rows
  select(state_name, total_population) # Keep only the desired columns

# Print the resulting table
print(top_5_states)


##### Q7 ######

# Calculate the number of cities per state
city_count_per_state <- data_uscities %>%
  group_by(state_name) %>%
  summarise(number_of_cities = n())

# Identify the most populated city per state and its population
most_populated_city <- data_uscities %>%
  group_by(state_name) %>%
  filter(population == max(population, na.rm = TRUE)) %>%
  select(state_name, most_populated_city = city, most_populated_city_population = population)

# Calculate the total population per state
total_population_per_state <- data_uscities %>%
  group_by(state_name) %>%
  summarise(total_population = sum(population, na.rm = TRUE))

# Join the data
ex7 <- city_count_per_state %>%
  left_join(most_populated_city, by = "state_name") %>%
  left_join(total_population_per_state, by = "state_name") %>%
  mutate(most_populated_city_population_percentage = (most_populated_city_population / total_population) * 100) %>%
  select(state_name, number_of_cities, most_populated_city, most_populated_city_population, most_populated_city_population_percentage) %>%
  arrange(desc(most_populated_city_population_percentage))

# Print the first 15 rows
print(head(ex7, 15))


