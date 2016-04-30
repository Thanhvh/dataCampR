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















