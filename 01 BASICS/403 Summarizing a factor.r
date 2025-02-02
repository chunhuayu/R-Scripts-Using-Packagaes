### Summarizing a factor
# After finishing this course, one of your favorite functions in R will be summary(). 
# This will give you a quick overview of the contents of a variable:

> summary(my_var)

# Going back to our survey, you would like to know how many "Male" responses you have in your study, 
# and how many "Female" responses. The summary() function gives you the answer to this question.

### INSTRUCTIONS
# Ask a summary() of the survey_vector and factor_survey_vector. Interpret the results of both vectors. 
# Are they both equally useful in this case?

### R SCRIPT
> # Build factor_survey_vector with clean levels
> survey_vector <- c("M", "F", "F", "M", "M")
> factor_survey_vector <- factor(survey_vector)
> levels(factor_survey_vector) <- c("Female", "Male")
> factor_survey_vector
[1] Male   Female Female Male   Male  
Levels: Female Male
> 
> # Generate summary for survey_vector
> summary(survey_vector)
   Length     Class      Mode 
        5 character character
> 
> # Generate summary for factor_survey_vector
> summary(factor_survey_vector)
Female   Male 
     2      3
> 
