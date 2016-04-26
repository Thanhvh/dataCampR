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
# abs(): calculate the absolute value.
# sum(): calculate the sum of all the values in a data structure.
# mean(): calculate the arithmetic mean.
# round(): Round the values to 0 decimal places by default. 
# seq(): Generate sequences, by specifying the from, to and by arguments.
# rep(): Replicate elements of vectors and lists.
# sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
# rev(): Reverse the elements in a data structures for which reversal is defined.
# str(): Display the structure of any R object.
# append(): Merge vectors or lists.
# is.*(): Check for the class of an R object.
# as.*(): Convert an R object from one class to another.
# unlist(): Flatten (possibly embedded) lists to produce a vector.

# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
round(sum(abs(errors)), digits = 0)
# 29

# The linkedin and facebook vectors have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)

# Sort social_vec
sort(social_vec, decreasing = TRUE)
# [1] 17 17 16 16 14 14 13 13  9  8  7  5  5  2

# Create first sequence: seq1
seq1 <- seq(1,500,3)

# Create second sequence: seq2
seq2 <- seq(1200,900,-7)

# Calculate total sum of the sequences
sum(seq1,seq2)
# [1] 87029

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org", 
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu",emails)
# [1]  TRUE  TRUE FALSE  TRUE  TRUE FALSE

# Use grep() to match for "edu", save result to hits
hits <- grep("edu", emails)
# [1] 1 2 4 5

# Subset emails using hits
emails[hits]
# [1] "john.doe@ivyleague.edu"   "education@world.gov"     
# [3] "invalid.edu"              "quant@bigdatacollege.edu"

# @, because a valid email must contain an at-sign.
# .*, which matches any character (.) zero or more times (*). 
# Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
# \\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.

# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$",emails)
# [1]  TRUE FALSE FALSE FALSE  TRUE FALSE

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$",emails)

# Subset emails using hits
emails[hits]
# [1] "john.doe@ivyleague.edu"   "quant@bigdatacollege.edu"

# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$","@datacamp.edu",emails)
# [1] "john.doe@datacamp.edu"    "education@world.gov"
# [3] "dalai.lama@peace.org"     "invalid.edu"
# [5] "quant@datacamp.edu"       "cookie.monster@sesame.tv"

# .*: A usual suspect! It can be read as "any character that is matched zero or more times".
# \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
# [0-9]+: Match the numbers 0 to 9, at least once (+).
# ([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. 
# The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.

awards <- c("Won 1 Oscar.",
  "Won 1 Oscar. Another 9 wins & 24 nominations.",
  "1 win and 2 nominations.",
  "2 wins & 3 nominations.",
  "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
  "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

# [1] "Won 1 Oscar." "24"           "2"            "3"            "2"           
# [6] "1"  

# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)
# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2, format = "%Y-%m-%d")
date3 <- as.Date(str3, format = "%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
# [1] "Thursday"
format(date2, "%d")
# [1] "15"
format(date3, "%b %Y")
# [1] "Jan 2006"

# %H: hours as a decimal number (00-23)
# %M: minutes as a decimal number
# %S: seconds as a decimal number
# %T: shorthand notation for the typical format %H:%M:%S

# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2, format = "%Y-%m-%d %T")

# Convert times to formatted strings
format(time1, format = "%M")
# [1] "01"
format(time2, format = "%I:%M %p" )
# [1] "02:23 PM"

# day1, day2, day3, day4 and day5 are already available in the workspace

# Difference between last and first pizza day
day5-day1
# Time difference of 11 days

# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
# Time differences in days
# [1]  -5  11 -13  18

# Average period between two consecutive pizza days
mean(day_diff)
# Time difference of 2.75 days

# login and logout are already defined in the workspace
# Calculate the difference between login and logout: time_online
time_online <- logout - login

# Inspect the variable time_online
time_online
# Time differences in secs
# [1] 2305.11818   34.18472  837.18182 2397.90153 1851.30411

# Calculate the total time online
sum(time_online)
# Time difference of 7425.69 secs

# Calculate the average time online
mean(time_online)
# Time difference of 1485.138 secs

# Convert astro to vector of Date objects: astro_dates
#        spring        summer          fall        winter 
# "20-Mar-2015" "25-Jun-2015" "23-Sep-2015" "22-Dec-2015" 
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
# [1] "2015-03-20" "2015-06-25" "2015-09-23" "2015-12-22"

# Convert meteo to vector of Date objects: meteo_dates
    #        spring            summer              fall            winter 
    # "March 1, 15"      "June 1, 15" "September 1, 15"  "December 1, 15" 
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
# [1] "2015-03-01" "2015-06-01" "2015-09-01" "2015-12-01"

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates-meteo_dates))
# Time difference of 24 days