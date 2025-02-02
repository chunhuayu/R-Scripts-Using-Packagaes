### Column classes

# Next to column names, you can also specify the column types or column classes of the resulting data frame. 
# You can do this by setting the colClasses argument to a vector of strings representing classes:

read.delim("my_file.txt", 
           colClasses = c("character",
                          "numeric",
                          "logical"))
# This approach can be useful if you have some columns that should be factors and others that should be characters. 
# You don't have to bother with stringsAsFactors anymore; just state for each column what the class should be.

# If a column is set to "NULL" in the colClasses vector, this column will be skipped and will not be loaded into the data frame.

### Instructions

# The read.delim() call from before is already included and creates the hotdogs data frame. 
# Go ahead and display the structure of hotdogs.
# Edit the second read.delim() call. Assign the correct vector to the colClasses argument. 
# NA should be replaced with a character vector: c("factor", "NULL", "numeric").
# Display the structure of hotdogs2 and look for the difference.

### R
> # Previous call to import hotdogs.txt
> hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))
> 
> # Display structure of hotdogs
> str(hotdogs)
'data.frame':	54 obs. of  3 variables:
 $ type    : Factor w/ 3 levels "Beef","Meat",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ calories: int  186 181 176 149 184 190 158 139 175 148 ...
 $ sodium  : int  495 477 425 322 482 587 370 322 479 375 ...
> 
> # Edit the colClasses argument to import the data correctly: hotdogs2
> hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                         col.names = c("type", "calories", "sodium"),
                         colClasses = c("factor","NULL","numeric"))
> 
> 
> # Display structure of hotdogs2
> str(hotdogs2)
'data.frame':	54 obs. of  2 variables:
 $ type  : Factor w/ 3 levels "Beef","Meat",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ sodium: num  495 477 425 322 482 587 370 322 479 375 ...
> 
