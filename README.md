# Family-Formation-and-Education
Course Project - ECP4510 Economics of Education

This project analyzes the labsup.csv dataset to analyze the surveryed labor supply information for 30,000+ mothers. To find the tradeoff between education, family size, and mom's working income. 

## Setup
To run the code and analysis, first I setup summarytools package for summary statistics. Set the working directory to where the csv file is stored. After this I read the csv file into RStudio. Implemented adjustments and conversions. This includes an inflation adjustment, converting the wage variable to annual earnings, and calculate the logarithm of earnings. 

## Analysis
1. Data Exploration:
    Calculated the frequency of moms who worked. Then describes the distribution of years of education and of moms' wages. 
2. Working Moms: 
    Created a subset of only working moms data. Generated scatter plots to visualize the relationships between eduation and earnings, and education and age at first childbirth. Then calculated the correlation coefficients. 
3. Family Size:
    Described the distribution of family size among working moms. Plotted the distribution of family size. Calculated the frequency of each family size.
4. Age at First Childbirth:
    Plotted the distribution of age at first childbirth. Calculated the frequency of each age at first childbirth. 
5. Regression Models:
    Created four regressions models for future predictions. For example, predict log earnings based on education and work status. 
    
## Conclusion
The data set shows how there are significant labor market returns to additional years of education. This can be supported by noticing the regression estimate for 1 is about 6% which can be used relatively as a standard when talking about the return to an additional year of education since this value was reported from the previous problem set with a different dataset. This emphasizes how investing into education is vital in earning more wages and getting the best returns from the labor market as shown in the scatterplot, highlighting how more years of education shows much higher earnings for moms. Typically the opportunity cost of schooling regarding family size and the age a mom starts her family is high. This is largely since the time that mothers spend toward their children and taking care of the family takes away from time that can be spent towards education. This can be seen with the scatterplot showing the density of working moms as there is a significant decrease in the number of working moms for each additional kid being raised. This shows that the resources and time spent towards children has a high opportunity cost as education is not pursued.
When looking at the family size regression, it conveys the relationship between the years of education and the number of children that a woman has. As it can be seen from the coefficients from model 1-3. The coefficient for model 1 is a positive value indicating that there is a positive correlation between the two variables. The coefficients for models 2 and 3 are both negative showing the negative correlation as more control variables are added. However, the magnitudes for all three models are quite weak as they are very close to 0. This suggests that the relationship between years of education and the control variables added in models 2 and 3 have an inverse relationship with one another, but the correlation is not strong.

