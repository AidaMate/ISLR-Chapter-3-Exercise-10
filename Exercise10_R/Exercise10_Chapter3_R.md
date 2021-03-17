# Exercise 10 Chapter 3 <br>
<h1>Author: Aida Matevosyan <br></h1>
<h1>R Markdown <br></h1>

<h2>10. This question should be answered using the Carseats data set.</h2>


```R
Carseats = ISLR::Carseats
library(dplyr)

```

# (a) Fit a multiple regression model to predict Sales using Price, Urban, and US.



```R
glimpse(Carseats)
```

    Observations: 400
    Variables: 11
    $ Sales       <dbl> 9.50, 11.22, 10.06, 7.40, 4.15, 10.81, 6.63, 11.85, 6.5...
    $ CompPrice   <dbl> 138, 111, 113, 117, 141, 124, 115, 136, 132, 132, 121, ...
    $ Income      <dbl> 73, 48, 35, 100, 64, 113, 105, 81, 110, 113, 78, 94, 35...
    $ Advertising <dbl> 11, 16, 10, 4, 3, 13, 0, 15, 0, 0, 9, 4, 2, 11, 11, 5, ...
    $ Population  <dbl> 276, 260, 269, 466, 340, 501, 45, 425, 108, 131, 150, 5...
    $ Price       <dbl> 120, 83, 80, 97, 128, 72, 108, 120, 124, 124, 100, 94, ...
    $ ShelveLoc   <fct> Bad, Good, Medium, Medium, Bad, Bad, Medium, Good, Medi...
    $ Age         <dbl> 42, 65, 59, 55, 38, 78, 71, 67, 76, 76, 26, 50, 62, 53,...
    $ Education   <dbl> 17, 10, 12, 14, 13, 16, 15, 10, 10, 17, 10, 13, 18, 18,...
    $ Urban       <fct> Yes, Yes, Yes, Yes, Yes, No, Yes, Yes, No, No, No, Yes,...
    $ US          <fct> Yes, Yes, Yes, Yes, No, Yes, No, Yes, No, Yes, Yes, Yes...
    

# (b) Provide an interpretation of each coefficient in the model. Be careful—some of the variables in the model are qualitative!

# (c) On the basis of your response to the previous question, fit a smaller model that only uses the predictors for which there is evidence of association with the outcome.


```R
lm_sales <- lm(Sales ~ Price + Urban + US, data = Carseats)
summary(lm_sales)
```


    
    Call:
    lm(formula = Sales ~ Price + Urban + US, data = Carseats)
    
    Residuals:
        Min      1Q  Median      3Q     Max 
    -6.9206 -1.6220 -0.0564  1.5786  7.0581 
    
    Coefficients:
                 Estimate Std. Error t value Pr(>|t|)    
    (Intercept) 13.043469   0.651012  20.036  < 2e-16 ***
    Price       -0.054459   0.005242 -10.389  < 2e-16 ***
    UrbanYes    -0.021916   0.271650  -0.081    0.936    
    USYes        1.200573   0.259042   4.635 4.86e-06 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    
    Residual standard error: 2.472 on 396 degrees of freedom
    Multiple R-squared:  0.2393,	Adjusted R-squared:  0.2335 
    F-statistic: 41.52 on 3 and 396 DF,  p-value: < 2.2e-16
    


<h3> Sales^ = 13.043469 - 0.054459 * Price - 0.021916 * UrbanYes + 1.200573 * USYes </h3>

Where the binary variables: <br>
UrbanYes = 1 if the store is in an urban location or 0 if not <br>
USYes = 1 if the store is in the US or 0 if not

# (d) For which of the predictors can you reject the null hypothesis H0:βj=0

According to (b), we can reject the null hypothesis for the Price and US predictors

# (e) On the basis of your response to the previous question, fit a smaller model that only uses the predictors for which there is evidence of association with the outcome.


```R
lm_sales2 <- lm(Sales ~ Price + US, data = Carseats)

summary(lm_sales2)
```


    
    Call:
    lm(formula = Sales ~ Price + US, data = Carseats)
    
    Residuals:
        Min      1Q  Median      3Q     Max 
    -6.9269 -1.6286 -0.0574  1.5766  7.0515 
    
    Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
    (Intercept) 13.03079    0.63098  20.652  < 2e-16 ***
    Price       -0.05448    0.00523 -10.416  < 2e-16 ***
    USYes        1.19964    0.25846   4.641 4.71e-06 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    
    Residual standard error: 2.469 on 397 degrees of freedom
    Multiple R-squared:  0.2393,	Adjusted R-squared:  0.2354 
    F-statistic: 62.43 on 2 and 397 DF,  p-value: < 2.2e-16
    


# (f) How well do the models in (a) and (e) fit the data?


```R

```
