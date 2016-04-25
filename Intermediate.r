# Chapter 1 Conditional Flow
# Comparison of logicals
TRUE == FALSE
# FALSE

# Comparison of numerics
-6*14 != 17-101
# FALSE

# Comparison of character strings
"useR" == "user"
# FALSE

# Compare a logical with a numeric
TRUE == 1
# TRUE

# Comparison of numerics
-6*5+2 >= -10+1
# FALSE

# Comparison of character strings
"raining" <= "raining dogs"
# TRUE

# Comparison of logicals
TRUE > FALSE
# TRUE

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15
# TRUE FALSE FALSE FALSE FALSE  TRUE FALSE

# Quiet days
linkedin <= 5
# FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE

# LinkedIn more popular than Facebook
linkedin > facebook
# FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13
#       [,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]
# [1,] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
# [2,] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE

# When is views less than or equal to 14?
views <= 14
#       [,1] [,2] [,3]  [,4] [,5]  [,6] [,7]
# [1,] FALSE TRUE TRUE  TRUE TRUE FALSE TRUE
# [2,] FALSE TRUE TRUE FALSE TRUE  TRUE TRUE

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10
# TRUE

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20
# FALSE

# The social data (linkedin, facebook, views) has been created for you
ls()

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10
# FALSE FALSE  TRUE FALSE FALSE FALSE FALSE

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12
# TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14
#       [,1]  [,2]  [,3]  [,4]  [,5]  [,6] [,7]
# [1,] FALSE FALSE  TRUE FALSE FALSE FALSE TRUE
# [2,] FALSE FALSE FALSE FALSE FALSE  TRUE TRUE

# li_df is pre-loaded in your workspace
ls()
str(li_df)

# Select the second column, named day2, from li_df: second
second <- li_df$day2
# [1]  3 23 18 18 25 20  4  3 22 12 27 13 17 27  6 35 17  6  1 12 15 17 12  8  7
# [26] 25 15 32 29  1 22 11  5 17 12 26 13 10 37 33 19 29  8 22 10 19 27 18 15 28

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)
# 16

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is True
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li > 15 & fb > 15) {
    sms <- c(sum(li) * 2 + sum(fb) * 2)
} else if (li < 10 & fb < 10) {
    sms <- c(sum(li) / 2 + sum(fb) / 2)
} else {
    sms <- c(sum(li) + sum(fb))
}

# Print the resulting sms to the console
sms

#
#
#
#
#
# Chapter 2 Loop
# Initialize the speed variable
speed <- 64

# Code the while loop
while ( speed > 30) {
  print("Slow down!")
  speed = speed -7
}

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48 ) {
    print("Slow down big time!")
    speed = speed - 11
  } else {
    print("Slow down!")
    speed = speed - 6
  }
}

# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ((3 * i %% 8) == 0) {
    break
  }
  i <- i + 1
}

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for ( i in linkedin){
    print(i)
}

# Loop version 2
for (i in 1:length(linkedin)) {
    print(linkedin[i])
}

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (i in nyc) {
    print(i)
}

# Loop version 2
for (i in 1:length(nyc)) {
    print(nyc[[i]])
}

# The tic-tac-toe matrix ttt has already been defined for you
     [,1] [,2] [,3]
[1,] "O"  NA   "X" 
[2,] NA   "O"  "O" 
[3,] "X"  NA   "X"

# define the double for loop
for (x in 1:nrow(ttt)){
    for (y in 1:ncol(ttt)){
        print(paste("On row ", x, " and column ", y, " the board contains ", ttt[x,y]))
    }
}

for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16){
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}

# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r"){
    rcount <- rcount + 1
  } else if (char == "u") {
    break
  }
}

# Print out rcount
print(rcount)

#
#
#
#
#
# Chapter 3 Functions
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- sum(mean(linkedin + facebook))
# 22.28571

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- sum(mean(linkedin + facebook,trim = 0.2))
# 22.6

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
print(mean(linkedin))
# NA

# Advanced average of linkedin
print(mean(linkedin, na.rm = TRUE ))
# 12.33333

# Calculate the mean absolute deviation
print(mean(abs(linkedin - facebook),na.rm = TRUE))
# 4.8

# Create a function pow_two()
pow_two <- function(x) {
    x**2
}

# Use the function 
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x, y) {
    abs(x) + abs(y)
}

# Use the function
sum_abs(-2, 3)

# Define the function hello()
hello <- function() {
    print("Hi there!")
    return(TRUE)
}

# Call the function hello()
hello()

# Define the function my_filter()
my_filter <- function(x) {
    if (x > 0) {
        return(x)
    } else {
        return(NULL)
    }
}

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  
  # Add if construct
  if (print_info == TRUE) {
    print(paste(x, "to the power two equals", y))
  }
  
  return(y)
}

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin)
# [1] "You're popular!"
# [1] 16  9 13  5  2 17 14
interpret(facebook)
# [1] "You're popular!"
# [1] 17  7  5 16  8 13 14

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  
  for (v in views) {
    count <- count + interpret(v)
  }
  
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
# [1] "You're popular!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] "You're popular!"
# [1] "Try to be more visible!"
# [1] 33
interpret_all(facebook)
# [1] "You're popular!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] "You're popular!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] "Try to be more visible!"
# [1] 33

# The mtcars vectors have already been prepared for you
wt <- mtcars$wt
hp <- mtcars$hp

# Request the currently attached packages
search()

# Load the ggplot2 package

library(ggplot2)

# Retry the qplot() function
qplot(wt)
qplot(hp)

# Check out the currently attached packages again
search()

#
#
#
#
#
# Chapter 4 The Apply Family
# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")
# List of 4
#  $ : chr [1:2] "GAUSS" "1777"
#  $ : chr [1:2] "BAYES" "1702"
#  $ : chr [1:2] "PASCAL" "1623"
#  $ : chr [1:2] "PEARSON" "1857"

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)
# List of 4
#  $ : chr [1:2] "gauss" "1777"
#  $ : chr [1:2] "bayes" "1702"
#  $ : chr [1:2] "pascal" "1623"
#  $ : chr [1:2] "pearson" "1857"

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low,select_first)
# [[1]]
# [1] "gauss"

# [[2]]
# [1] "bayes"

# [[3]]
# [1] "pascal"

# [[4]]
# [1] "pearson"

# Write function select_second()
select_second <- function(x) {
  x[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low,select_second)
# [[1]]
# [1] "1777"

# [[2]]
# [1] "1702"

# [[3]]
# [1] "1623"

# [[4]]
# [1] "1857"

# Transform: use anonymous function inside lapply
names <- lapply(split_low, function(x) {x[1]})

# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) {x[2]})

# Generic select function
select_el <- function(x, index) {
  x[index]
}

# Use lapply() twice on split_low: names and years
names <- lapply(split_low, select_el, index = 1)
years <- lapply(split_low, select_el, index = 2)

# Use lapply() to find each day's minimum temperature
lapply(temp,min)

# Use sapply() to find each day's minimum temperature
sapply(temp,min)

# Use lapply() to find each day's maximum temperature
lapply(temp,max)

# Use sapply() to find each day's maximum temperature
sapply(temp,max)

# temp is already defined in the workspace

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)
# 4.0 9.0 2.5 2.5 5.5 3.0 5.0

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)
# [[1]]
# [1] 4

# [[2]]
# [1] 9

# [[3]]
# [1] 2.5

# [[4]]
# [1] 2.5

# [[5]]
# [1] 5.5

# [[6]]
# [1] 3

# [[7]]
# [1] 5

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)
#     [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# min   -1    5   -3   -2    2   -3    1
# max    9   13    8    7    9    9    9

# Apply extremes() over temp with lapply()
lapply(temp, extremes)
# [[1]]
# min max 
#  -1   9 

# [[2]]
# min max 
#   5  13 

# [[3]]
# min max 
#  -3   8 

# [[4]]
# min max 
#  -2   7 

# [[5]]
# min max 
#   2   9 

# [[6]]
# min max 
#  -3   9 

# [[7]]
# min max 
#   1   9 

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
# [[1]]
# [1] -1

# [[2]]
# numeric(0)

# [[3]]
# [1] -1 -3

# [[4]]
# [1] -2

# [[5]]
# numeric(0)

# [[6]]
# [1] -3

# [[7]]
# numeric(0)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
# [[1]]
# [1] -1

# [[2]]
# numeric(0)

# [[3]]
# [1] -1 -3

# [[4]]
# [1] -2

# [[5]]
# numeric(0)

# [[6]]
# [1] -3

# [[7]]
# numeric(0)

# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)
# TRUE

# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using lapply()
xl <- lapply(temp, print_info)
# The average temperature is 4.8 
# The average temperature is 9 
# The average temperature is 2.2 
# The average temperature is 2.4 
# The average temperature is 5.4 
# The average temperature is 4.6 
# The average temperature is 4.6 
# [[1]]
# NULL

# [[2]]
# NULL

# [[3]]
# NULL

# [[4]]
# NULL

# [[5]]
# NULL

# [[6]]
# NULL

# [[7]]
# NULL
# Apply print_info() over temp using sapply()
xs <- sapply(temp, print_info)
# The average temperature is 4.8 
# The average temperature is 9 
# The average temperature is 2.2 
# The average temperature is 2.4 
# The average temperature is 5.4 
# The average temperature is 4.6 
# The average temperature is 4.6 
# [[1]]
# NULL

# [[2]]
# NULL

# [[3]]
# NULL

# [[4]]
# NULL

# [[5]]
# NULL

# [[6]]
# NULL

# [[7]]
# NULL

# Great! Notice here that, quite surprisingly, 
# sapply() does not simplify the list of NULL's.
# That's because the 'vector-version' of a list of 
# NULL's would simply be a NULL, which is no longer 
# a vector with the same length as the input. 

# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# min  -1.0    5 -3.0 -2.0  2.0 -3.0  1.0
# mean  4.8    9  2.2  2.4  5.4  4.6  4.6
# max   9.0   13  8.0  7.0  9.0  9.0  9.0

# Convert to vapply() expression
sapply(temp, max)
vapply(temp, max, numeric(1))
# [1]  9 13  8  7  9  9  9

# Convert to vapply() expression
sapply(temp, function(x, y) { mean(x) > y }, y = 5)
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))
# [1] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE

# work_todos and fun_todos have already been defined
work_todos <- c("Schedule call with team", 
                "Fix error in Recommendation System", 
                "Respond to Marc from IT")
fun_todos <- c("Sleep", "Make arrangements for summer trip")

# Create a list: todos
todos <- list(work_todos, fun_todos)

# Sort the vectors inside todos alphabetically
sapply(todos, sort)
# [[1]]
# [1] "Fix error in Recommendation System" "Respond to Marc from IT"           
# [3] "Schedule call with team"           

# [[2]]
# [1] "Make arrangements for summer trip" "Sleep"

#
#
#
#
#
# Chapter 5 Utilities