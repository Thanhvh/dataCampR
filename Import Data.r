#
#
#
#
# Chapter 1 Importing data from flat files
# Import swimming_pools.csv: pools
pools <- read.csv("swimming_pools.csv")

# Print the structure of pools
str(pools)

# Import hotdogs.txt: hotdogs
hotdogs <- read.delim("hotdogs.txt", header = FALSE)
# function (file, header = TRUE, sep = "\t", quote = "\"", dec = ".", 
#     fill = TRUE, comment.char = "", ...) 
# NULL

# Summarize hotdogs
summary(hotdogs)
#       V1           V2              V3       
# Beef   :20   Min.   : 86.0   Min.   :144.0  
# Meat   :17   1st Qu.:132.0   1st Qu.:362.5  
# Poultry:17   Median :145.0   Median :405.0  
#              Mean   :145.4   Mean   :424.8  
#              3rd Qu.:172.8   3rd Qu.:503.5  
#              Max.   :195.0   Max.   :645.0 

# Path to the hotdogs.txt file: path
path <- file.path("data", "hotdogs.txt")

# Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, sep = "", col.names = c("type", "calories", "sodium"))

# Call head() on hotdogs
head(hotdogs)
#   type calories sodium
# 1 Beef      186    495
# 2 Beef      181    477
# 3 Beef      176    425
# 4 Beef      149    322
# 5 Beef      184    482
# 6 Beef      190    587

# Import swimming_pools.csv correctly: pools
pools <- read.csv("swimming_pools.csv",stringsAsFactors=FALSE)

# Check the structure of pools
str(pools)
# 'data.frame':	20 obs. of  4 variables:
#  $ Name     : chr  "Acacia Ridge Leisure Centre" "Bellbowrie Pool" "Carole Park" "Centenary Pool (inner City)" ...
#  $ Address  : chr  "1391 Beaudesert Road, Acacia Ridge" "Sugarwood Street, Bellbowrie" "Cnr Boundary Road and Waterford Road Wacol" "400 Gregory Terrace, Spring Hill" ...
#  $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
#  $ Longitude: num  153 153 153 153 153 ...

# Finish the read.delim() call
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))
# function (file, header = TRUE, sep = "\t", quote = "\"", dec = ".", 
#     fill = TRUE, comment.char = "", ...) 
# NULL

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

# Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]

# Print lily and tom
print(lily)
#       type calories sodium
# 50 Poultry       86    358
print(tom)
#    type calories sodium
# 15 Beef      190    645

# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Display structure of hotdogs
str(hotdogs)
# 'data.frame':	54 obs. of  3 variables:
 # $ type    : Factor w/ 3 levels "Beef","Meat",..: 1 1 1 1 1 1 1 1 1 1 ...
 # $ calories: int  186 181 176 149 184 190 158 139 175 148 ...
 # $ sodium  : int  495 477 425 322 482 587 370 322 479 375 ...

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor", "NULL", "numeric"))


# Display structure of hotdogs2
str(hotdogs2)
# 'data.frame':	54 obs. of  2 variables:
#  $ type  : Factor w/ 3 levels "Beef","Meat",..: 1 1 1 1 1 1 1 1 1 1 ...
#  $ sodium: num  495 477 425 322 482 587 370 322 479 375 ...

# read.table() 		| read_delim()
# header FALSE		| col_names(TRUE)
# stringsAsFactors	| col_types = "ccdd"
# colClasses		| c = character / d = double / i = integer / l = logical / _ = skip
#					| skip / n_max

# utils			| readr
# read.table() 	| read_delim()
# read.csv() 	| read_csv()
# read.delim() 	| read_tsv()

# data.table
# install.packages("data.table")
# library(data.table)
# fread

# Load the readr package
library(readr)

# Import potatoes.txt using read_delim(): potatoes
potatoes <- read_delim("potatoes.txt", "\t")
# function (file, delim, quote = "\"", escape_backslash = FALSE, 
#     escape_double = TRUE, na = c("", "NA"), col_names = TRUE, 
#     col_types = NULL, skip = 0, n_max = -1, progress = interactive()) 
# NULL

# Print out potatoes
potatoes
# Source: local data frame [160 x 8]

#     area  temp  size storage method texture flavor moistness
#    (int) (int) (int)   (int)  (int)   (dbl)  (dbl)     (dbl)
# 1      1     1     1       1      1     2.9    3.2       3.0
# 2      1     1     1       1      2     2.3    2.5       2.6
# 3      1     1     1       1      3     2.5    2.8       2.8
# 4      1     1     1       1      4     2.1    2.9       2.4

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv", col_names = properties)
# Source: local data frame [160 x 8]

#     area  temp  size storage method texture flavor moistness
#    (int) (int) (int)   (int)  (int)   (dbl)  (dbl)     (dbl)
# 1      1     1     1       1      1     2.9    3.2       3.0
# 2      1     1     1       1      2     2.3    2.5       2.6

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment <- read_tsv("potatoes.txt", skip = 7, n_max = 5, col_names = properties)
# Source: local data frame [5 x 8]

#    area  temp  size storage method texture flavor moistness
#   (int) (int) (int)   (int)  (int)   (dbl)  (dbl)     (dbl)
# 1     1     1     1       2      2     2.6    3.1       2.4
# 2     1     1     1       2      3     3.0    3.0       2.9
# 3     1     1     1       2      4     2.2    3.2       2.5
# 4     1     1     1       2      5     2.0    2.8       1.9
# 5     1     1     1       3      1     1.8    2.6       1.5

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv("potatoes.txt", col_types = "cccccccc")
# Source: local data frame [160 x 8]

#     area  temp  size storage method texture flavor moistness
#    (chr) (chr) (chr)   (chr)  (chr)   (chr)  (chr)     (chr)
# 1      1     1     1       1      1     2.9    3.2       3.0
# 2      1     1     1       1      2     2.3    2.5       2.6
# 3      1     1     1       1      3     2.5    2.8       2.8
# 4      1     1     1       1      4     2.1    2.9       2.4

# readr is already loaded

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

# Display the summary of hotdogs
summary(hotdogs)
 #     type              calories         sodium     
 # Length:54          Min.   : 86.0   Min.   :144.0  
 # Class :character   1st Qu.:132.0   1st Qu.:362.5  
 # Mode  :character   Median :145.0   Median :405.0  
 #                    Mean   :145.4   Mean   :424.8  
 #                    3rd Qu.:172.8   3rd Qu.:503.5  
 #                    Max.   :195.0   Max.   :645.0 

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt", 
                           col_names = c("type", "calories", "sodium"),
                           col_types = list(fac, int, int))

# Display the summary of hotdogs_factor
summary(hotdogs_factor)
 #      type       calories         sodium     
 # Beef   :20   Min.   : 86.0   Min.   :144.0  
 # Meat   :17   1st Qu.:132.0   1st Qu.:362.5  
 # Poultry:17   Median :145.0   Median :405.0  
 #              Mean   :145.4   Mean   :424.8  
 #              3rd Qu.:172.8   3rd Qu.:503.5  
 #              Max.   :195.0   Max.   :645.0 

# fread("path/to/file.txt", drop = 2:4)
# fread("path/to/file.txt", select = c(1, 5))
# fread("path/to/file.txt", drop = c("b", "c", "d")
# fread("path/to/file.txt", select = c("a", "e"))

# fread is already loaded

# Import columns 6 and 8 of potatoes.txt: potatoes
potatoes <- fread("potatoes.txt", select = c(6,8))

# Plot texture (x) and moistness (y) of potatoes
plot(potatoes$texture, potatoes$moistness)

# readxl package
# excel_sheets() list different sheets
# read_excel() actually importat data into R
# read_excel("excel.xlsx", sheet=2)
# read_excel("excel.xlsx", sheet="Year_2000")
# function (path, sheet = 1, col_names = TRUE, col_types = NULL c("text","text") or c("text","blank"), 
#     na = "", skip = 0) 
# NULL




















