---
title: 'Module 5: Working with RMarkdown'
description:
  'In this module you will create, edit and run reproducible R code documents using RMarkdown.
  '
prev: /module4
next: /module6
type: chapter
id: 5
---

<exercise id="0" title="Learning Outcomes" type="slides">

<slides source="chapter5_00_learning_outcomes">
</slides>

</exercise>

<exercise id="1" title="Introduction to RStudio" type="slides">

<slides source="chapter5_01_introduction_to_Rstudio">
</slides>

</exercise>

<exercise id="2" title="Creating an Rmd file" type="slides">

<slides source="chapter5_02_creating_an_Rmd_file">
</slides>

</exercise>

<exercise id="3" title="Creating a Presentation" type="slides">

<slides source="chapter5_03_creating_a_presentation">

</slides>

</exercise>

<exercise id="4" title="My First Presentation Task">

1. Go to [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/throughput-ec/ec-binder/main?urlpath=rstudio)

2. Open a new Rmd file.

3. Copy and paste the following text

````markdown
---
title: "My First Deck of Slides"
author: "My Name"
date: "12/12/2021"
output: ioslides_presentation
---

# Title Slide

---
## Slide with Bullets

- Bullet 1
- Bullet 2
- Bullet 3

---
No Header Slide

---
## Slide with R Output

This is some code

```{r code demo, echo = TRUE}
x <- 5
y <- 10
(x <- x + y)
``` 
````



4. Click on the Preview / Knit button.

**Remember:** Do not leave a white space between the `---` and the next line


</exercise>

<exercise id="5" title="Creating an R Project" type="slides">

<slides source="chapter5_04_R_project">
</slides>

</exercise>

<exercise id="6" title="First Steps in R">

For a simple introduction, we are going to use the Gapminder dataset.

We will apply our knowledge of tidyverse functions. 

## About the Dataset

[Gapminder Foundation](https://www.gapminder.org/) is a non-profit organization in Stockholm, Sweden, that promotes sustainable global development and achievement of the United Nations Millennium Development Goals by increased use and understanding of statistics and other information about social, economic and environmental development at local, national and global levels.

## Let's learn some functions in R!

**glimpse()**  
The `gapminder` dataframe has been previously loaded for you. You just need to call it.
Let’s take a quick look at it to learn about its structure. 

We can do this using the `glimpse()` command, which will display the structure and the first few rows of our data frame.

<codeblock id="05_01">


</codeblock>


**select**  
The first function we’ll be using is `select()`. 
This function let’s us pick columns from our dataframe, based on name (e.g. year) or index (e.g. 3).

<codeblock id="05_02">

</codeblock>

Observe that the new dataframe contains only a subset of the columns from the original dataframe. 


**head()**  
As we saw from our `glimpse()` observations, the `gapminder` dataframe has 1,704 rows...

What if we would like to see some of the first few rows, just to have an idea of what the dataframe looks like? We can do that with `head()`.

<codeblock id="05_03">

</codeblock>

**Pipe: %>%**  

The pipe symbol `%>%` “pipes” an object INTO a function. We could `pipe` for example, the gapminder data into the `select()` function

We could rewrite code the following way:

<codeblock id="05_04">

</codeblock>


## Challenge 1

Reorder the code below to create a code that uses `select()` and `%>%`  to choose the columns continent, GDP per capita, life expectancy, and year from the gapminder data. 

Save it to a new variable named `result`.
Display the results using `glimpse()`.

<codeblock id="05_05">

</codeblock>


**filter()**  
Now that we can select columns, how do we choose rows? `filter()` allows us to choose rows from our dataframe using logical criteria. 

For example, using the `gapminder` dataframe, we could filter rows in which country is "USA". 

This can also be applied to numerical values, such as the year being equal to 1977, or life expectancy greater than 80.

**REMEMBER** In R, an equality is done using a double equals sign `==`.

<codeblock id="05_06">

</codeblock>

We can also filter several arguments at a time.

Let's try it!

<codeblock id="05_07">

</codeblock>


## Challenge 2

Use `filter()` to choose data for all Asian countries, from the year 1975 onwards.

Assign them to a variable called `gapminder_asia`


<codeblock id="05_08">

`>=` is used for the greater than or equal to symbol.

</codeblock>


**mutate()**  
Now that we can filter rows and columns, let's say we would like to start making some summaries of our data.
Let’s say we now want to calculate the total GDP, which is done by mutiplying the GDP per capita by the population. 
`mutate()` will perform this calculation on each row in the data frame, one row at a time (row-wise).

<codeblock id="05_09">

</codeblock>

**Combining Functions**  
Pipes `%>%` can be used to send an object such as a data frame into a function, such as select(), or filter(). 

However, their real power is that they can also be used to send the output of one function into another function. This allows us to chain together multiple commmands, without the need for intermediate variables.

<codeblock id="05_10">

</codeblock>


</exercise>

<exercise id="7" title="Popular Data Wrangling Libraries Exercises with RStudio">

Go to <a href="https://mybinder.org/v2/gh/sedv8808/R_Wrangling/main?urlpath=rstudio" target="_blank"> Binder </a> and complete the exercises.


</exercise>
<exercise id="8" title="Summary and Conclusions" type="slides">

<slides source="chapter5_05_summary_and_conclusions">
</slides>

</exercise>

