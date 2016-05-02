#
#
#
#
#
# Chapter 1
# Apply gather() to bmi and save the result as bmi_long
bmi_long <- gather(bmi, year, bmi_val, -Country)
# 'data.frame':	199 obs. of  30 variables:
#  $ Country: chr  "Afghanistan" "Albania" "Algeria" "Andorra" ...
#  $ Y1980  : num  21.5 25.2 22.3 25.7 20.9 ...
#  $ Y1981  : num  21.5 25.2 22.3 25.7 20.9 ...

# View the first 20 rows of the result
head(bmi_long,20)
# 'data.frame':	5771 obs. of  3 variables:
#  $ Country: chr  "Afghanistan" "Albania" "Algeria" "Andorra" ...
#  $ year   : chr  "Y1980" "Y1980" "Y1980" "Y1980" ...
#  $ bmi_val: num  21.5 25.2 22.3 25.7 20.9 ...

# Apply spread() to bmi_long
bmi_wide <- spread(bmi_long, year, bmi_val)

# View the head of bmi_wide
head(bmi_wide)
# 'data.frame':	199 obs. of  30 variables:
#  $ Country: chr  "Afghanistan" "Albania" "Algeria" "Andorra" ...
#  $ Y1980  : num  21.5 25.2 22.3 25.7 20.9 ...
#  $ Y1981  : num  21.5 25.2 22.3 25.7 20.9 ...

# gather() - Gather Columns into key-value pairs
# spread() - Spread key-value pairs into columns
# separate() - Separate one column into multiple
# unite() - Unite multiple columns into one

# Apply separate() to bmi_cc
bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")
# 'data.frame':	5771 obs. of  3 variables:
#  $ Country_ISO: chr  "Afghanistan/AF" "Albania/AL" "Algeria/DZ" "Andorra/AD" ...
#  $ year       : chr  "Y1980" "Y1980" "Y1980" "Y1980" ...
#  $ bmi_val    : num  21.5 25.2 22.3 25.7 20.9 ...

# Print the head of the result
head(bmi_cc_clean)
# 'data.frame':	5771 obs. of  4 variables:
#  $ Country: chr  "Afghanistan" "Albania" "Algeria" "Andorra" ...
#  $ ISO    : chr  "AF" "AL" "DZ" "AD" ...
#  $ year   : chr  "Y1980" "Y1980" "Y1980" "Y1980" ...
#  $ bmi_val: num  21.5 25.2 22.3 25.7 20.9 ...

# Apply unite() to bmi_cc_clean
bmi_cc <- unite(bmi_cc_clean, Country_ISO, Country, ISO, sep = "-")

# View the head of the result
head(bmi_cc)
# 'data.frame':	5771 obs. of  3 variables:
#  $ Country_ISO: chr  "Afghanistan-AF" "Albania-AL" "Algeria-DZ" "Andorra-AD" ...
#  $ year       : chr  "Y1980" "Y1980" "Y1980" "Y1980" ...
#  $ bmi_val    : num  21.5 25.2 22.3 25.7 20.9 ...

## tidyr and dplyr are already loaded for you
# View the head of census
head(census)
# 'data.frame':	24 obs. of  13 variables:
#  $ YEAR: int  1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 ...
#  $ JAN : int  146913 157525 167504 182423 189167 202414 209684 224020 243483 252736 ...
#  $ FEB : int  147270 156292 169652 179472 192269 204273 209532 226240 247133 252730 ...
#  $ MAR : int  146831 154774 172775 180996 193993 204965 210792 227407 249847 250346 ...

# Gather the month columns
census2 <- gather(census, month, amount, -YEAR)
# 'data.frame':	288 obs. of  3 variables:
#  $ YEAR  : int  1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 ...
#  $ month : chr  "JAN" "JAN" "JAN" "JAN" ...
#  $ amount: int  146913 157525 167504 182423 189167 202414 209684 224020 243483 252736 ...


# Arrange rows by YEAR using dplyr's arrange
census2 <- arrange(census2, YEAR)
# 'data.frame':	288 obs. of  3 variables:
#  $ YEAR  : int  1992 1992 1992 1992 1992 1992 1992 1992 1992 1992 ...
#  $ month : chr  "JAN" "FEB" "MAR" "APR" ...
#  $ amount: int  146913 147270 146831 148082 149015 149821 150809 151064 152595 153577 ...


# View first 20 rows of census2
head(census2,20)
#    YEAR month amount
# 1  1992   JAN 146913
# 2  1992   FEB 147270
# 3  1992   MAR 146831
# 4  1992   APR 148082
# 5  1992   MAY 149015

## tidyr is already loaded for you

# View first 50 rows of census_long
head(census_long, 50)
# 'data.frame':	864 obs. of  4 variables:
#  $ YEAR  : int  1992 1992 1992 1992 1992 1992 1992 1992 1992 1992 ...
#  $ month : chr  "JAN" "FEB" "MAR" "APR" ...
#  $ type  : Factor w/ 3 levels "HIGH","LOW","MED": 3 3 3 3 3 3 3 3 3 3 ...
#  $ amount: num  146913 147270 146831 148082 149015 ...

# Spread the type column
census_long2 <- spread(census_long, type, amount)

# View first 20 rows of census_long2
head(census_long2,20)
# 'data.frame':	288 obs. of  5 variables:
#  $ YEAR : int  1992 1992 1992 1992 1992 1992 1992 1992 1992 1992 ...
#  $ month: chr  "APR" "AUG" "DEC" "FEB" ...
#  $ HIGH : num  157624 152281 162142 150315 148181 ...
#  $ LOW  : num  146174 149369 146702 139098 138283 ...
#  $ MED  : num  148082 151064 155504 147270 146913 ...

## tidyr is already loaded for you

# View the head of census_long3
head(census_long3)
# 'data.frame':	288 obs. of  4 variables:
#  $ yr_month: chr  "1992_APR" "1992_AUG" "1992_DEC" "1992_FEB" ...
#  $ HIGH    : num  157624 152281 162142 150315 148181 ...
#  $ LOW     : num  146174 149369 146702 139098 138283 ...
#  $ MED     : int  148082 151064 155504 147270 146913 150809 149821 146831 149015 153605 ...


# Separate the yr_month column into two
census_long4 <- separate(census_long3, yr_month, c( "year", "month"), sep = "_")

# View the first 6 rows of the result
head(census_long4)
# 'data.frame':	288 obs. of  5 variables:
#  $ year : chr  "1992" "1992" "1992" "1992" ...
#  $ month: chr  "APR" "AUG" "DEC" "FEB" ...
#  $ HIGH : num  157624 152281 162142 150315 148181 ...
#  $ LOW  : num  146174 149369 146702 139098 138283 ...
#  $ MED  : int  148082 151064 155504 147270 146913 150809 149821 146831 149015 153605 ...

#
#
#
#
#
# Chapter 3 Preparing data for analysis
# Type of variables in R
# character: "treatment", "123"
# numeric: 23.44, 120, NaN, Inf
# integer: 4L, 1123L
# factor: factor("Hellop"), factor(8)
# Preview students with str()
str(students)

# Coerce Grades to character
students$Grades <- as.character(students$Grades)

# Coerce Medu to factor
students$Medu <- as.factor(students$Medu)

# Coerce Fedu to factor
students$Fedu <- as.factor(students$Fedu)
    
# Look at students once more with str()
str(students)

# Preview students2 with str()
str(students2)

# Load the lubridate package
library(lubridate)

# Parse as date
dmy("17 Sep 2015")
# [1] "2015-09-17 UTC"

# Parse as date and time (with no seconds!)
mdy_hm("July 15, 2012 12:56")
# [1] "2012-07-15 12:56:00 UTC"

# Coerce dob to a date (with no time)
students2$dob <- ymd(students2$dob)

# Coerce nurse_visit to a date and time
students2$nurse_visit <- ymd_hms(students2$nurse_visit)
    
# Look at students2 once more with str()
str(students2)

# str_trim() - Trim leading and trailing white space
# str_pad() - Pad with additional characters
# str_detect() - Detect a pattern
# str_replace() - Find and replace a pattern
# tolower() - Make all lowercase
# toupper() - Make all uppercase

# Load the stringr package
library(stringr)

# Trim all leading and trailing whitespace
str_trim(c("   Filip ", "Nick  ", " Jonathan"))
# [1] "Filip"    "Nick"     "Jonathan"

# Pad these strings with leading zeros
str_pad(c("23485W", "8823453Q", "994Z"), width = 9, side = "left", pad = "0")
# [1] "00023485W" "08823453Q" "00000994Z"

# Print state abbreviations
states

# Make states all uppercase and save result to states_upper
states_upper <- toupper(states)

# Make states_upper all lowercase again
tolower(states_upper)

### deal with missing data ###
## stringr has been loaded for you
# Look at the head of students2
head(students2)

# Detect all dates of birth (dob) in 1997
str_detect(students2$dob,"1997")

# In the sex column, replace "F" with "Female"...
students2$sex <- str_replace(students2$sex,"F", "Female")

# ...And "M" with "Male"
students2$sex <- str_replace(students2$sex,"M", "Male")

# View the head of students2
head(students2)

# Call is.na() on the full social_df to spot all NAs
is.na(social_df)

# Use the any() function to ask whether there are any NAs in the data
any(is.na(social_df))

# View a summary() of the dataset
summary(social_df)

# Call table() on the status column
table(social_df$status)

## The stringr package is preloaded

# Use str_replace() to replace all missing strings in status with NA
social_df$status <- str_replace(social_df$status, "^$", NA)

# Print social_df to the console
print(social_df)

# Use complete.cases() to see which rows have no missing values
complete.cases(social_df)

# Use na.omit() to remove all rows with any missing values
na.omit(social_df)

# Look at a summary() of students3
summary(students3)

# View a histogram of the age variable
hist(students3$age)

# View a histogram of the absences variable
hist(students3$absences)

# View a histogram of absences, but force zeros to be bucketed to the right of zero
hist(students3$absences, right = FALSE)

#
#
#
#
# Chapter 4 
# class() - Class of data object
# dim() - Dimensions of data
# names() - Column names
# str() - Preview of data with helpful details
# glimpse() - Better version of str() from dplyr
# summary() - Summary of data

# Verify that weather is a data.frame
class(weather)

# Check the dimensions
dim(weather)

# View the column names
names(weather)

# View the structure of the data
str(weather)

# Load dplyr package
library(dplyr)

# Look at the structure using dplyr's glimpse()
glimpse(weather)

# View a summary of the data
summary(weather)

# View first 6 rows
head(weather, 6)

# View first 15 rows
head(weather, 15)

# View the last 6 rows
tail(weather, 6)

# View the last 10 rows
tail(weather, 10)

# Load the tidyr package
library(tidyr)
# str(weather)
# 'data.frame':	286 obs. of  35 variables:
#  $ X      : int  1 2 3 4 5 6 7 8 9 10 ...
#  $ year   : int  2014 2014 2014 2014 2014 2014 2014 2014 2014 2014 ...
#  $ month  : int  12 12 12 12 12 12 12 12 12 12 ...
#  $ measure: chr  "Max.TemperatureF" "Mean.TemperatureF" "Min.TemperatureF" "Max.Dew.PointF" ...
#  $ X1     : chr  "64" "52" "39" "46" ...
#  $ X2     : chr  "42" "38" "33" "40" ...
#  $ X3     : chr  "51" "44" "37" "49" ...
#  $ X4     : chr  "43" "37" "30" "24" ...

# Gather the columns
weather2 <- gather(weather, day, value, X1:X31, na.rm = TRUE)

# View the head
head(weather2)
#   X year month           measure day value
# 1 1 2014    12  Max.TemperatureF  X1    64
# 2 2 2014    12 Mean.TemperatureF  X1    52
# 3 3 2014    12  Min.TemperatureF  X1    39
# 4 4 2014    12    Max.Dew.PointF  X1    46
# 5 5 2014    12    MeanDew.PointF  X1    40
# 6 6 2014    12     Min.DewpointF  X1    26

## The tidyr package is already loaded
#  str(weather2)
# 'data.frame':	8046 obs. of  6 variables:
#  $ X      : int  1 2 3 4 5 6 7 8 9 10 ...
#  $ year   : int  2014 2014 2014 2014 2014 2014 2014 2014 2014 2014 ...
#  $ month  : int  12 12 12 12 12 12 12 12 12 12 ...
#  $ measure: chr  "Max.TemperatureF" "Mean.TemperatureF" "Min.TemperatureF" "Max.Dew.PointF" ...
#  $ day    : Factor w/ 31 levels "X1","X2","X3",..: 1 1 1 1 1 1 1 1 1 1 ...
#  $ value  : chr  "64" "52" "39" "46" ...

# First remove column of row names
weather2 <- weather2[, -1]
# 'data.frame':	8046 obs. of  5 variables:
#  $ year   : int  2014 2014 2014 2014 2014 2014 2014 2014 2014 2014 ...
#  $ month  : int  12 12 12 12 12 12 12 12 12 12 ...
#  $ measure: chr  "Max.TemperatureF" "Mean.TemperatureF" "Min.TemperatureF" "Max.Dew.PointF" ...
#  $ day    : Factor w/ 31 levels "X1","X2","X3",..: 1 1 1 1 1 1 1 1 1 1 ...
#  $ value  : chr  "64" "52" "39" "46" ...

# Spread the data
weather3 <- spread(weather2,measure,value)

# View the head
head(weather3)
# 'data.frame':	366 obs. of  25 variables:
#  $ year                     : int  2014 2014 2014 2014 2014 2014 2014 2014 2014 2014 ...
#  $ month                    : int  12 12 12 12 12 12 12 12 12 12 ...
#  $ day                      : Factor w/ 31 levels "X1","X2","X3",..: 1 2 3 4 5 6 7 8 9 10 ...
#  $ CloudCover               : chr  "6" "7" "8" "3" ...
#  $ Events                   : chr  "Rain" "Rain-Snow" "Rain" "" ...
#  $ Max.Dew.PointF           : chr  "46" "40" "49" "24" ...
#  $ Max.Gust.SpeedMPH        : chr  "29" "29" "38" "33" ...
#  $ Max.Humidity             : chr  "74" "92" "100" "69" ...

## tidyr and dplyr are already loaded

# Load the stringr and lubridate packages
library(stringr)
library(lubridate)

# Remove X's from day column
weather3$day <- str_replace(weather3$day,"X","")

# Unite the year, month, and day columns
weather4 <- unite(weather3, date, year, month, day, sep = "-")

# Convert date column to proper date format using lubridates's ymd()
weather4$date <- ymd(weather4$date)

# Rearrange columns using dplyr's select()
weather5 <- select(weather4, date, Events, CloudCover:WindDirDegrees)

# View the head
head(weather5)

# View the structure of weather5
str(weather5)

# Examine the first 20 rows of weather5. Are most of the characters numeric?
head(weather5,20)

# See what happens if we try to convert PrecipitationIn to numeric
as.numeric(weather5$PrecipitationIn)
# Warning message: NAs introduced by coercion

## The dplyr and stringr packages are already loaded

# Replace T with 0 (T = trace)
weather5$PrecipitationIn <- str_replace(weather5$PrecipitationIn,"T",0)

# Convert characters to numerics
weather6 <- mutate_each(weather5, funs(as.numeric), CloudCover:WindDirDegrees)

# Look at result
str(weather6)













