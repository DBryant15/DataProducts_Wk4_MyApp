Tree Growth Presention
========================================================
author: Derek Bryant
date: 6/13/2018
autosize: true



Introduction
========================================================

This app was developed for Coursera Week 4 Project.

This presentation will:
- 1. Explain the basic method of processing.
- 2. Describe the functioning of the application. 

Slide With Code
========================================================

Data used for this application is from default dataset called Loblolly. This dataset provides the heights of trees taken over time. 

SQL was used to provide a method of slicing the dataset according to year. Example:


```r
treesGrowing_a <- datasets::Loblolly

treeHieghtAtYear_a <- sqldf::sqldf("
SELECT Seed, height 
FROM treesGrowing_a
WHERE age = 25
")
```

Slide With Plot
========================================================

The application uses a statement similar to this one. The input from the slider is used to display the height of the trees at various years. 

Thank you
========================================================

Thank you for your time and attention!



