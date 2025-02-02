### Greater and less than
# Apart from equality operators, Filip also introduced the less than and greater than operators: < and >. 
# You can also add an equal sign to express less than or equal to or greater than or equal to, respectively. 
# Have a look at the following R expressions, that all evaluate to FALSE:

(1 + 2) > 4
"dog" < "Cats"
TRUE <= FALSE

# Remember that for string comparison, R determines the greater than relationship based on alphabetical order.
# Also, keep in mind that TRUE is treated as 1 for arithmetic, and FALSE is treated as 0. Therefore, FALSE < TRUE is TRUE.

### INSTRUCTIONS
# Write R expressions to check whether:

# -6 * 5 + 2 is greater than or equal to -10 + 1.
# "raining" is less than or equal to "raining dogs".
# TRUE is greater than FALSE.

### R
> # Comparison of numerics
> -6*5+2 >= -10+1
[1] FALSE
> 
> # Comparison of character strings
> "raining" <= "raining dogs"
[1] TRUE
> 
> # Comparison of logicals
> TRUE > FALSE
[1] TRUE
> 

### COMMENTS
# Make sure to have a look at the console output to see if R returns the results you expected.
