### dataset=titanic
# You've watched the movie Titanic by James Cameron (1997) again and
# ....after a good portion of sobbing you decide to investigate whether you'd have a chance of surviving this disaster.

### INSTRUCTIONS

# 1 - Have a look at the str() of the titanic dataset, which has been loaded into your workspace. 
#     Looks like the data is pretty tidy!
# 2 - Plot the distribution of sexes within the classes of the ship.
# ....Use ggplot() with the data layer set to titanic.
# ....Map Pclass onto the x axis, Sex onto fill and draw a dodged bar plot using geom_bar(), i.e. 
#.....set the geom position to "dodge".
# 3 - These bar plots won't help you estimate your chances of survival. 
#.    Copy the previous bar plot, but this time add a facet_grid() layer: . ~ Survived.
# 4 - We've defined a position object for you.
# 5 - Include Age, the final variable.

# Take plot 3 and add a mapping of Age onto the y aesthetic.
# Change geom_bar() to geom_point() and set its attributes size = 3, alpha = 0.5 and position = posn.jd.
# Make sure that Sex is mapped onto color instead of fill to correctly color the scatter plots. 

### R
> # titanic is avaliable in your workspace
> # 1 - Check the structure of titanic
> str(titanic)
'data.frame':	714 obs. of  4 variables:
 $ Survived: int  0 1 1 1 0 0 0 1 1 1 ...
 $ Pclass  : int  3 1 3 1 3 1 3 3 2 3 ...
 $ Sex     : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 1 1 1 ...
 $ Age     : num  22 38 26 35 35 54 2 27 14 4 ...
> 
> # 2 - Use ggplot() for the first instruction
> ggplot(titanic, aes(x = Pclass, fill = Sex)) +
    geom_bar(position ="dodge")
> 
> # 3 - Plot 2, add facet_grid() layer
> ggplot(titanic, aes(x = Pclass, fill = Sex)) +
    geom_bar(position ="dodge")+  facet_grid(.~Survived)
> 
> # 4 - Define an object for position jitterdodge, to use below
> posn.jd <- position_jitterdodge(0.5, 0, 0.6)
> 
> # 5 - Plot 3, but use the position object from instruction 4
> ggplot(titanic, aes(x = Pclass, y=Age,col = Sex)) +
    geom_point(position =posn.jd,alpha=0.5,size=3)+  facet_grid(.~Survived)
> 
