#
#
#
#
#
# Chapter 1 Data.table novice
# DT[i,j,by]
# Take DT, subset rows using i, then calculate j grouped by by
# in SQL WHERE = i, SELECT = J, BY = GROUP BY
# The data.table package is preloaded

# Create my_first_data_table
my_first_data_table <- data.table(x = c("a", "b", "c", "d", "e"), 
                                  y = c(1, 2, 3, 4, 5))  
  
# Create a data.table using recycling
DT <- data.table(a = c(1L, 2L), b = LETTERS[1:4])

# Print the third row to the console
DT[3,]

# Print the second and third row to the console without using commas
DT[2:3]

# DT and the data.table package are pre-loaded
# Print the second to last row of DT using .N
DT[3:.N]

# Print the column names of DT
colnames(DT)

# Print the number or rows and columns of DT
dim(DT)

# Select row 2 twice and row 3, returning a data.table with three rows where row 2 is a duplicate of row 1.
rbind(DT[2,],DT[2:3,])

# DT, DT[,.[B, C]]
# DT[, .(Total = sum(A), Mean = mean(C))]
# DT[, plot(A, C)]
# DT[, {print(A)
# 		hist(C)
# 		Null	}]

# DT and the data.table package are pre-loaded
# Subset rows 1 and 3, and columns B and C
DT[c(1,3),.(B,C)]

# Assign to ans the correct value
ans <- DT[,.(B, val = A*C)]
#    B val
# 1: a   6
# 2: b  14
# 3: c  24
# 4: d  36
# 5: e  50
  
# Fill in the blanks such that ans2 equals target
target <- data.table(B = c("a", "b", "c", "d", "e", "a", "b", "c", "d", "e"), val = as.integer(c(6:10, 1:5)))
ans2 <- DT[, .(B, val = c(C,A))]
#     B val
#  1: a   6
#  2: b   7
#  3: c   8
#  4: d   9
#  5: e  10
#  6: a   1
#  7: b   2
#  8: c   3
#  9: d   4
# 10: e   5

# iris is already available in your workspace
# Convert iris to a data.table: DT
DT <- data.table(iris)

# For each Species, print the mean Sepal.Length
DT[,.(mean(Sepal.Length)), by = Species]

# Print mean Sepal.Length, grouping by first letter of Species
DT[,.(mean(Sepal.Length)), by = substr(Species,1,1)]

# data.table version of iris: DT
DT <- as.data.table(iris)

# Group the specimens by Sepal area (to the nearest 10 cm2) and count how many occur in each group.
DT[, .(.N), by = 10 * round(Sepal.Length * Sepal.Width / 10)]
#    round   N
# 1:    20 117
# 2:    10  29
# 3:    30   4

# Now name the output columns `Area` and `Count`
DT[, .(Count = .N), by = .(Area = 10 * round(Sepal.Length * Sepal.Width / 10))]
#    Area Count
# 1:   20   117
# 2:   10    29
# 3:   30     4

# Create the data.table DT
set.seed(1L)
DT <- data.table(A = rep(letters[2:1], each = 4L), 
                 B = rep(1:4, each = 2L), 
                 C = sample(8))
#    A B C
# 1: b 1 3
# 2: b 1 8
# 3: b 2 4
# 4: b 2 5
# 5: a 3 1
# 6: a 3 7
# 7: a 4 2
# 8: a 4 6

# Create the new data.table, DT2
DT2 <- DT[,.(C = cumsum(C)), by = .(A, B)]
#    A B  C
# 1: b 1  3
# 2: b 1 11
# 3: b 2  4
# 4: b 2  9
# 5: a 3  1
# 6: a 3  8
# 7: a 4  2
# 8: a 4  8

# Select from DT2 the last two values from C while you group by A
DT2[,.(C = tail(C,2)), by = .(A)]
#    A C
# 1: b 4
# 2: b 9
# 3: a 2
# 4: a 8

# The data.table package has already been loaded
# Build DT
set.seed(1L)
DT <- data.table(A = rep(letters[2:1], each = 4L), 
                 B = rep(1:4, each = 2L), 
                 C = sample(8)) 

# In the previous section, you calculated DT2 by taking the cumulative sum of C while grouping by A,B. Next, you selected from DT2 the last two values of C while grouping by A alone. Do this again, but this time use the concept of chaining instead. Simply print out the result of the chaining.
# Perform operation using chaining
DT[,.(C = cumsum(C)), by = .(A, B)][,.(C = tail(C,2)), by = .(A)]
#    A C
# 1: b 4
# 2: b 9
# 3: a 2
# 4: a 8

# The data.table DT is loaded in your workspace

# Perform chained operations on DT
DT[, .(Sepal.Length = median(Sepal.Length),
 Sepal.Width = median(Sepal.Width),
 Petal.Length = median(Petal.Length),
 Petal.Width = median(Petal.Width)),
 by = Species][order(Species, decreasing = TRUE)]
#       Species Sepal.Length Sepal.Width Petal.Length Petal.Width
# 1:  virginica          6.5         3.0         5.55         2.0
# 2: versicolor          5.9         2.8         4.35         1.3
# 3:     setosa          5.0         3.4         1.50         0.2

# Print out the pre-loaded data.table DT
DT

# Mean of columns
DT[,lapply(.SD, mean), by = x]
#    x        y        z
# 1: 2 6.500000 7.500000
# 2: 1 7.666667 8.666667

# Median of columns
DT[,lapply(.SD, median), by = x]
#    x y z
# 1: 2 7 8
# 2: 1 7 8































