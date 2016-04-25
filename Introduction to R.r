# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette

# Define a new variable based on a selection
poker_wednesday <- poker_vector["Wednesday"]

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2, 3, 4)]

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Calculate the average of the elements in poker_start
mean(poker_start)

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow=TRUE, nrow=3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office,byrow=TRUE,nrow=3)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
all_wars_matrix

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
  
# Print out total_revenue_vector
total_revenue_vector

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,"non-US"]
  
# Average non-US revenue
mean(non_us_all)
  
# Select the non-US revenue for first two movies
non_us_some <- non_us_all[1:2]
non_us_some

# Average non-US revenue for first two movies
mean(non_us_some)

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

# Male
male <- factor_survey_vector[1] 

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female

# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane") 

# Convert speed_vector to ordered factor vector
factor_speed_vector <-  factor(speed_vector, ordered=TRUE, levels= c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector) 

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <-factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

# da2
# [1] slow
# Levels: slow < fast < insane
# da5
# [1] insane
# Levels: slow < fast < insane

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <-data.frame(name, type, diameter, rotation, rings)

# Print out diameter of of Mercury (row 1, column 3)
planets_df[planets_df$name=="Mercury", "diameter"]

# Print out data for Mars (entire fourth row)
planets_df[planets_df$name=="Mars",]

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# Select the rings variable from planets_df
rings_vector <- planets_df[,"rings"]

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

# Select planets with diameter < 1
subset(planets_df,diameter<1)
#      name               type diameter rotation rings
# 1 Mercury Terrestrial planet    0.382    58.64 FALSE
# 2   Venus Terrestrial planet    0.949  -243.02 FALSE
# 4    Mars Terrestrial planet    0.532     1.03 FALSE

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]
#      name               type diameter rotation rings
# 1 Mercury Terrestrial planet    0.382    58.64 FALSE
# 4    Mars Terrestrial planet    0.532     1.03 FALSE
# 2   Venus Terrestrial planet    0.949  -243.02 FALSE
# 3   Earth Terrestrial planet    1.000     1.00 FALSE
# 8 Neptune          Gas giant    3.883     0.67  TRUE
# 7  Uranus          Gas giant    4.007    -0.72  TRUE
# 6  Saturn          Gas giant    9.449     0.43  TRUE
# 5 Jupiter          Gas giant   11.209     0.41  TRUE

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

# Print out my_list
my_list
# $vec
# [1]  1  2  3  4  5  6  7  8  9 10

# $mat
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

# $df
#                   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
# Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
# Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
# Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
# Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
# Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4   

shining_list <- list(moviename = mov, actors = act, reviews = rev)
# $moviename
# [1] "The Shining"

# $actors
# [1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
# [5] "Barry Nelson"    

# $reviews
#   scores sources                                              comments
# 1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
# 2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
# 3    5.0   IMDb3                 A masterpiece of psychological horror

# Print the second element of the vector representing the actors
shining_list$actors[2]
