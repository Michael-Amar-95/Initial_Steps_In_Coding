########### EX1 ##########

##### Q1 ######
# Trees data
lengths <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9) 
widths <- c(1.3, 2.2, 1.5, 4.5, 3.1, 1, 1.8, 0.5, 2.0, 2.7) 
heights <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2) 

# Vector of trees value
Trees_Volume <- lengths * widths * heights
print(Trees_Volume)

##### Q2 ######
# The average of all trees 
Avg_Vol <- mean(Trees_Volume)
print(Avg_Vol)

##### Q3 ######
# Vector of the height of trees with height < 2.5  
short_trees <- heights[heights < 2.5]
print(short_trees)

##### Q4 ######
# Vector of the height of trees with heights > 5 and < 9 
med_trees <- heights[heights < 9 & heights > 5]
print(med_trees)

##### Q5 ######
# Trees in the data which are taller than Lebron Jame (We assume that the heights of the trees are measured in meters, and Lebron James is 2.3 meters tall.)
Lebron_James <-  2.03
tree_taller_than_LJ <- heights[heights > Lebron_James]
print(tree_taller_than_LJ)
cat(length(tree_taller_than_LJ), "trees are taller than Lebron James.",sep=" ")
# Since 9 trees (out of 10) are taller than LeBron James, we can conclude that LeBron James is tall, but not as tall as tree.
print("Since 9 trees (out of 10) are taller than LeBron James, we can conclude that LeBron James is tall, but not as tall as tree.")

##### Q6 ######
# vector, named 'sixty_numbers' that contains all numbers from 1 to 60, included.
sixty_numbers <- c(1:60)
print(sixty_numbers)

#Vector, named 'division', include all numbers from '60_numbers' vector which can be divided by 2 and 3 with no remainder.
division <- sixty_numbers[sixty_numbers %% 2 == 0 & sixty_numbers %% 3 == 0]
print(division)

##### Q7 ######
# Vector multiply each item in 'sixty_numbers' by 3 and add 3 to the result
vec1 <- sixty_numbers*3 + 3
print(vec1)

NOT_div_by_5 <- vec1[vec1 %% 5 != 0]
print(NOT_div_by_5)
cat(length(NOT_div_by_5), "values in vec1 aren`t divided by 5", sep = " ")