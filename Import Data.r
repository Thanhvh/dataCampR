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

# The readxl package is already loaded

# Read the first sheet of latitude.xlsx: latitude_1
latitude_1 <- read_excel("latitude.xlsx", sheet=1)

# Read the second sheet of latitude.xlsx: latitude_2
latitude_2 <- read_excel("latitude.xlsx", sheet=2)

# Put latitude_1 and latitude_2 in a list: lat_list
lat_list <- list(latitude_1, latitude_2)

# Display the structure of lat_list
str(lat_list)
# List of 2
#  $ :Classes 'tbl_df', 'tbl' and 'data.frame':	246 obs. of  2 variables:
#   ..$ country      : chr [1:246] "Afghanistan" "Akrotiri and Dhekelia" "Albania" "Algeria" ...
#   ..$ latitude_1700: num [1:246] 34.6 34.6 41.3 36.7 -14.3 ...
#  $ :Classes 'tbl_df', 'tbl' and 'data.frame':	246 obs. of  2 variables:
#   ..$ country      : chr [1:246] "Afghanistan" "Akrotiri and Dhekelia" "Albania" "Algeria" ...
#   ..$ latitude_1900: num [1:246] 34.6 34.6 41.3 36.7 -14.3 ...

# The readxl package is already loaded

# Read all Excel sheets with lapply(): lat_list
lat_list <- lapply(excel_sheets("latitude.xlsx"), read_excel, path="latitude.xlsx")

# Display the structure of lat_list
str(lat_list)
# List of 2
#  $ :Classes 'tbl_df', 'tbl' and 'data.frame':	246 obs. of  2 variables:
#   ..$ country      : chr [1:246] "Afghanistan" "Akrotiri and Dhekelia" "Albania" "Algeria" ...
#   ..$ latitude_1700: num [1:246] 34.6 34.6 41.3 36.7 -14.3 ...
#  $ :Classes 'tbl_df', 'tbl' and 'data.frame':	246 obs. of  2 variables:
#   ..$ country      : chr [1:246] "Afghanistan" "Akrotiri and Dhekelia" "Albania" "Algeria" ...
#   ..$ latitude_1900: num [1:246] 34.6 34.6 41.3 36.7 -14.3 ...

# The readxl package is already loaded

# Import the the first Excel sheet of latitude_nonames.xlsx (R gives names): latitude_3
latitude_3 <- read_excel("latitude_nonames.xlsx", sheet=1, col_names = FALSE)
  
# Import the the first Excel sheet of latitude_nonames.xlsx (specify col_names): latitude_4
latitude_4 <- read_excel("latitude_nonames.xlsx", sheet=1, col_names = c("country", "latitude"))

# Print the summary of latitude_3
summary(latitude_3)
#      X0                  X1         
# Length:246         Min.   :-51.750  
# Class :character   1st Qu.:  2.557  
# Mode  :character   Median : 16.755  
#                    Mean   : 18.026  
#                    3rd Qu.: 39.051  
#                    Max.   : 78.000  
#                    NA's   :4        
# Print the summary of latitude_4
summary(latitude_4)
#   country             latitude      
# Length:246         Min.   :-51.750  
# Class :character   1st Qu.:  2.557  
# Mode  :character   Median : 16.755  
#                    Mean   : 18.026  
#                    3rd Qu.: 39.051  
#                    Max.   : 78.000  
#                    NA's   :4        

# The readxl package is already loaded

# Import the second sheet of latitude.xlsx, skipping the first 21 rows: latitude_sel
latitude_sel <- read_excel("latitude.xlsx", sheet = 2, skip = 21, col_names = FALSE)

# Print out the first observation from latitude_sel
head(latitude_sel,1)
# Source: local data frame [1 x 2]

#        X0     X1
#     (chr)  (dbl)
# 1 Belgium 50.837

# Load the gdata package 
library(gdata)

# Import the second sheet of urbanpop.xls: urban_pop
urban_pop <- read.xls("urbanpop.xls", sheet = "1967-1974")

# Print the first 11 observations using head()
head(urban_pop, 11)

# The gdata package is alreaded loaded

# Column names for urban_pop
columns <- c("country", paste0("year_", 1967:1974))

# Finish the read.xls call
urban_pop <- read.xls("urbanpop.xls", sheet = 2, 
                      skip = 50, header = FALSE, stringsAsFactors = FALSE,
                      col.names = columns)

# Print first 10 observation of urban_pop
head(urban_pop,10)
# 'data.frame':	224 obs. of  9 variables:
#  $ country  : chr  "Congo, Dem. Rep." "Congo, Rep." "Cook Is" "Costa Rica" ...
#  $ year_1967: num  5161472 450670 NA 621786 1243350 ...
#  $ year_1968: num  5475208 473335 NA 649916 1330719 ...
#  $ year_1969: num  5802069 497211 NA 678254 1424438 ...
#  $ year_1970: num  6140904 522407 NA 706799 1525425 ...
#  $ year_1971: num  6282834 549789 NA 733546 1638738 ...
#  $ year_1972: num  6425372 578640 NA 760431 1760508 ...

# Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)


# Extend the cbind() call to include urban_sheet3: urban
urban <- cbind(urban_sheet1, urban_sheet2[-1], urban_sheet3[-1])

# Remove all rows with NAs from urban: urban_clean
urban_clean <- na.omit(urban)

# Print out a summary of urban_clean
summary(urban_clean)
# 'data.frame':	197 obs. of  53 variables:
#  $ country: chr  "Afghanistan" "Albania" "Algeria" "Angola" ...
#  $ X1960  : int  769308 494443 3293999 521205 21699 15224096 957974 24996 8375329 4560057 ...
#  $ X1961  : num  814923 511803 3515148 548265 21635 ...
#  $ X1962  : num  858522 529439 3739963 579695 21664 ...
#  $ X1963  : num  903914 547377 3973289 612087 21741 ...
#  $ X1964  : num  951226 565572 4220987 645262 21830 ...
#  $ X1965  : num  1000582 583983 4488176 679109 21909 ...
#  $ X1966  : num  1058743 602512 4649105 717833 22003 ...

# install.packages("XLConnect")
# library(XLConnect)
# book <- loadWorkbook("test.xlsx")
# getSheets(book)
# "year_1990" "year_2000"
# library(readxl)
# excel_sheets("test.xlsx")
# readWorksheet(book, sheet="year_2000", 
#				startRow=3, endRow=4,
#				startCol=2, header=FALSE)
# writeWorksheet(book, date_to_add, sheet="year_2010")
# saveWorkbook(book, "cities_extended.xlsx")

# latitude.xlsx is available in your working directory

# Load the XLConnect package
library("XLConnect")

# Build connection to latitude.xlsx: my_book
my_book <- loadWorkbook("latitude.xlsx")

# Print out the class of my_book
class(my_book)
# [1] "workbook"
# attr(,"package")
# [1] "XLConnect"

# List the sheets in my_book
getSheets(my_book)
# [1] "1700" "1900"

# Import the second sheet in my_book
readWorksheet(my_book, sheet=2)
# 'data.frame':	246 obs. of  2 variables:
#  $ country      : chr  "Afghanistan" "Akrotiri and Dhekelia" "Albania" "Algeria" ...
#  $ latitude_1900: num  34.6 34.6 41.3 36.7 -14.3 ...



# latitude.xlsx is available in your working directory

# Build connection to latitude.xlsx
library(XLConnect)
my_book <- loadWorkbook("latitude.xlsx")

# Create data frame: summ
dims1 <- dim(readWorksheet(my_book, 1))
dims2 <- dim(readWorksheet(my_book, 2))
summ <- data.frame(sheets = getSheets(my_book), 
                   nrows = c(dims1[1], dims2[1]), 
                   ncols = c(dims1[2], dims2[2]))

# Add a worksheet to my_book, named "data_summary"
createSheet(my_book,"data_summary")

# Populate "data_summary" with summ
writeWorksheet(my_book, summ, "data_summary")
# function (object, data, sheet, startRow = 1, startCol = 1, header = TRUE, 
#     rownames = NULL) 
# NULL

# Save workbook as latitude_with_summ.xlsx
saveWorkbook(my_book,"latitude_with_summ.xlsx")
# function (object, file) 
# NULL

#
#
#
#
# Chapter 3 Importing data from other sources

# Load the haven package
library(haven)

# Import sales.sas7bdat: sales
sales <- read_sas("sales.sas7bdat")

# Display the structure of sales
str(sales)
# Classes 'tbl_df', 'tbl' and 'data.frame':	431 obs. of  4 variables:
#  $ purchase: num  0 0 1 1 0 0 0 0 0 0 ...
#  $ age     : num  41 47 41 39 32 32 33 45 43 40 ...
#  $ gender  : chr  "Female" "Female" "Female" "Female" ...
#  $ income  : chr  "Low" "Low" "Low" "Low" ...

# haven is already loaded

# Import the data from the URL: sugar
sugar <- read_dta("http://assets.datacamp.com/course/importing_data_into_r/trade.dta")
  
# Structure of sugar
str(sugar)
# Classes 'tbl_df', 'tbl' and 'data.frame':	10 obs. of  5 variables:
#  $ Date    :Class 'labelled'  atomic [1:10] 10 9 8 7 6 5 4 3 2 1
#   .. ..- attr(*, "label")= chr "Date"
#   .. ..- attr(*, "labels")= Named int [1:10] 1 2 3 4 5 6 7 8 9 10
#   .. .. ..- attr(*, "names")= chr [1:10] "2004-12-31" "2005-12-31" "2006-12-31" "2007-12-31" ...
#  $ Import  : atomic  37664782 16316512 11082246 35677943 9879878 1539992 28021 2652 7067402 1033672
#   ..- attr(*, "label")= chr "Import"
#  $ Weight_I: atomic  54029106 21584365 14526089 55034932 14806865 1749318 54567 3821 23722957 1964980
#   ..- attr(*, "label")= chr "Weight_I"
#  $ Export  : atomic  54505513 102700010 37935000 48515008 71486545 12311696 16489813 29273920 46497438 27131638
#   ..- attr(*, "label")= chr "Export"
#  $ Weight_E: atomic  93350013 158000010 88000000 112000005 131800000 18500014 39599944 102072480 147583380 78268792
#   ..- attr(*, "label")= chr "Weight_E"

# Convert values in Date column to dates
sugar$Date <- as.Date(as_factor(sugar$Date))

# Structure of sugar again
str(sugar)
# Classes 'tbl_df', 'tbl' and 'data.frame':	10 obs. of  5 variables:
#  $ Date    : Date, format: "2013-12-31" "2012-12-31" ...
#  $ Import  : atomic  37664782 16316512 11082246 35677943 9879878 1539992 28021 2652 7067402 1033672
#   ..- attr(*, "label")= chr "Import"
#  $ Weight_I: atomic  54029106 21584365 14526089 55034932 14806865 1749318 54567 3821 23722957 1964980
#   ..- attr(*, "label")= chr "Weight_I"
#  $ Export  : atomic  54505513 102700010 37935000 48515008 71486545 12311696 16489813 29273920 46497438 27131638
#   ..- attr(*, "label")= chr "Export"
#  $ Weight_E: atomic  93350013 158000010 88000000 112000005 131800000 18500014 39599944 102072480 147583380 78268792
#   ..- attr(*, "label")= chr "Weight_E"

# haven is already loaded

# Import person.sav: traits
traits <- read_sav("person.sav")

# Summarize traits
summary(traits)

# Print out a subset
subset(traits, Extroversion > 40 & Agreeableness > 40, SELECT=Neurotic:Conscientiousness )
# Source: local data frame [8 x 4]

#   Neurotic Extroversion Agreeableness Conscientiousness
#      (dbl)        (dbl)         (dbl)             (dbl)
# 1       38           43            49                29
# 2       20           42            46                31
# 3       18           42            49                31
# 4       42           43            44                29
# 5       30           42            51                24
# 6       18           42            50                25
# 7       27           45            55                23
# 8       18           43            57                34

# haven is already loaded

# Import SPSS data from the URL: work
work <- read_sav("http://assets.datacamp.com/course/importing_data_into_r/employee.sav")
  
# Display summary of work$GENDER
summary(work$GENDER)
# Length     Class      Mode 
#    474  labelled character 

# Convert work$GENDER to a factor 
work$GENDER <- as_factor(work$GENDER)


# Display summary of work$GENDER again
summary(work$GENDER)
# Female   Male 
#    216    258 

# Load the foreign package
library(foreign)

# Import florida.dta and name the resulting data frame florida
florida <- read.dta("florida.dta")

# Check tail() of florida
tail(florida)

# Load the foreign package
library(foreign)

# Import florida.dta and name the resulting data frame florida
florida <- read.dta("florida.dta")

# Check tail() of florida
tail(florida)

# foreign is already loaded

# Specify the file path using file.path(): path
path <- file.path("worldbank","edequality.dta")

# Create and print structure of edu_equal_1
edu_equal_1 <- read.dta(path)
str(edu_equal_1)


# Create and print structure of edu_equal_2
edu_equal_2 <- read.dta(path, convert.factors = FALSE)
str(edu_equal_2)

# Create and print structure of edu_equal_3
edu_equal_3 <- read.dta(path, convert.underscore = TRUE)
str(edu_equal_3)
  
#
#
#
#
# Chapter 4 Importing data from relational databses

# Load the DBI package
library(DBI)

# Connect to the MySQL database: con
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "tweater", 
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com", 
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Build a vector of table names: tables
tables <- dbListTables(con)

# Display structure of tables
str(tables)
# chr [1:4] "comments" "employees" "tweats" "users"

# Print users
print(users)
#   id      name     login
# 1  1 elisabeth  elismith
# 2  2      mike     mikey
# 3  3      thea   teatime
# 4  4    thomas tomatotom
# 5  5    oliver olivander
# 6  6      kate  katebenn
# 7  7    anjali    lianja

# Import and print the tweats table from tweater: tweats
tweats <- dbReadTable(con,"tweats")
print(tweats)
#   id user_id
# 1 75       3
# 2 88       4
# 3 77       6
# 4 87       5
# 5 49       1
# 6 24       7
#                                                                  post
# 1                                       break egg. bake egg. eat egg.
# 2                           wash strawberries. add ice. blend. enjoy.
# 3                       2 slices of bread. add cheese. grill. heaven.
# 4               open and crush avocado. add shrimps. perfect starter.
# 5 nachos. add tomato sauce, minced meat and cheese. oven for 10 mins.
# 6                              just eat an apple. simply and healthy.
#         date
# 1 2015-09-05
# 2 2015-09-14
# 3 2015-09-21
# 4 2015-09-22
# 5 2015-09-22
# 6 2015-09-24

# Import and print the comments table from tweater: comments
comments <- dbReadTable(con,"comments")
print(comments)
#      id tweat_id user_id            message
# 1  1022       87       7              nice!
# 2  1000       77       7             great!
# 3  1011       49       5            love it
# 4  1012       87       1   awesome! thanks!
# 5  1010       88       6              yuck!
# 6  1026       77       4      not my thing!
# 7  1004       49       1  this is fabulous!
# 8  1030       75       6           so easy!
# 9  1025       88       2             oh yes
# 10 1007       49       3           serious?
# 11 1020       77       1 couldn't be better
# 12 1014       77       1       saved my day

# Import post column of tweats where date is higher than "2015-09-21": latest
latest <- dbGetQuery(con, "SELECT post FROM tweats WHERE date > '2015-09-21'")
#                                                                  post
# 1               open and crush avocado. add shrimps. perfect starter.
# 2 nachos. add tomato sauce, minced meat and cheese. oven for 10 mins.
# 3                              just eat an apple. simply and healthy.

# Import tweat_id column of comments where user_id is 1: elisabeth
elisabeth <- dbGetQuery(con, "SELECT tweat_id FROM comments WHERE user_id = 1")
#   tweat_id
# 1       87
# 2       49
# 3       77
# 4       77

# Create data frame specific
specific <- dbGetQuery(con, "SELECT message FROM comments WHERE user_id > 4 and tweat_id = 77")
#   message
# 1  great!

# Create data frame short
short <- dbGetQuery(con, "SELECT id, name FROM users WHERE char_length(name) < 5")
#   id name
# 1  2 mike
# 2  3 thea
# 3  6 kate

dbGetQuery(con,"SELECT post, message FROM tweats INNER JOIN comments on tweats.id = tweat_id WHERE tweat_id = 77")
#                                            post            message
# 1 2 slices of bread. add cheese. grill. heaven.             great!
# 2 2 slices of bread. add cheese. grill. heaven.      not my thing!
# 3 2 slices of bread. add cheese. grill. heaven. couldn't be better
# 4 2 slices of bread. add cheese. grill. heaven.       saved my day

# Send query to the database
res <- dbSendQuery(con, "SELECT * FROM comments WHERE user_id > 4")

# Use dbFetch() twice
dbFetch(res, n=2)
#     id tweat_id user_id message
# 1 1022       87       7   nice!
# 2 1000       77       7  great!

dbFetch(res)
#     id tweat_id user_id  message
# 1 1011       49       5  love it
# 2 1010       88       6    yuck!
# 3 1030       75       6 so easy!

# Clear res
dbClearResult(res)
# [1] TRUE

# Create the data frame  long_tweats
long_tweats <- dbGetQuery(con, "SELECT post, date FROM tweats WHERE char_length(post) > 40")
#                                                                  post
# 1                           wash strawberries. add ice. blend. enjoy.
# 2                       2 slices of bread. add cheese. grill. heaven.
# 3               open and crush avocado. add shrimps. perfect starter.
# 4 nachos. add tomato sauce, minced meat and cheese. oven for 10 mins.
#         date
# 1 2015-09-14
# 2 2015-09-21
# 3 2015-09-22
# 4 2015-09-22

# Disconnect from the database
dbDisconnect(con)
# [1] TRUE

#
#
#
#
# Chapter 5 Importing data from web

# Load the readr package
library(readr)

# Import the csv file: pools
url_csv <- "http://s3.amazonaws.com/assets.datacamp.com/course/importing_data_into_r/swimming_pools.csv"
pools <- read_csv(url_csv)

# Import the txt file: potatoes
url_delim <- "http://s3.amazonaws.com/assets.datacamp.com/course/importing_data_into_r/potatoes.txt"
potatoes <- read_tsv(url_delim)

# Import the file using read.csv(): pools1
pools1 <- read.csv(url_csv)

# Load the readr package
library(readr)

# Import the file using read_csv(): pools2
pools2 <- read_csv(url_csv)

# Print the structure of pools1 and pools2
str(pools1)
# 'data.frame':	20 obs. of  4 variables:
#  $ Name     : Factor w/ 20 levels "Acacia Ridge Leisure Centre",..: 1 2 3 4 5 6 19 7 8 9 ...
#  $ Address  : Factor w/ 20 levels "1 Fairlead Crescent, Manly",..: 5 20 18 10 9 11 6 15 12 17 ...
#  $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
#  $ Longitude: num  153 153 153 153 153 ...

str(pools2)
# Classes 'tbl_df', 'tbl' and 'data.frame':	20 obs. of  4 variables:
#  $ Name     : chr  "Acacia Ridge Leisure Centre" "Bellbowrie Pool" "Carole Park" "Centenary Pool (inner City)" ...
#  $ Address  : chr  "1391 Beaudesert Road, Acacia Ridge" "Sugarwood Street, Bellbowrie" "Cnr Boundary Road and Waterford Road Wacol" "400 Gregory Terrace, Spring Hill" ...
#  $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
#  $ Longitude: num  153 153 153 153 153 ...





























