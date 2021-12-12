---
type: slides
---

<div><h1><img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module1/00_ec_slide1.png?raw=true" alt="EC Theme" width=25% align="left"/> Lesson 1<br>Introduction to RStudio</h1></div>

---

# What is RStudio?

RStudio is an IDE (integrated development environment) mainly used for R.

It includes tools for:
- linting
- code completion
- debugging.

You can also work with Rmd files which enable a notebook-like functionality:

---

## Opening RStudio

If you open *RStudio* you will encounter the following screen:

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/00_rstudio.png?raw=true" alt="Binder" width=45% align="center">

---

## Running Rscripts in RStudio

- Launch this [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/throughput-ec/ec-binder/main?urlpath=rstudio) in a new tab and follow these steps:

- Creating a new R script: 
  * From the menu clcik on: 
      File -> New File -> R Script

- Write a simple R code the document that shows up in the editor:
```r
4 + 5
```

- Run your code clicking on the "Source" button (upper right-hand side) to run the entire document.
- To run a single line, type Ctrl+Enter (Command+Return) to run the current line or highlighted code

--

## Code output

When running R code in the console output ends up in one of to places, depending on the type of output:

* Textual output: printed to the console.

* Graphical output: displayed in the Files/Help/Plots panel *usually* at the bottom right of the Window.

--

**Give it a try!** See how graphical output is displayed in RStudio by typing the code below in your editor and then running it.
```
boxplot(mtcars$mpg, grouping(mtcars$cyl))
```

---

## Gettin help in RStudio

If you want to know more about what a function or package does, its a similar command to getting help in Jupyter, either:

```
?function_name
```

or

```
help(function_name)
```

Help then arrives in the panel in the bottom right-hand pane of your IDE.

--

**Give it a try!** Try getting the help for the function named `mean`.


---

## Where am I? (or the files pane)

Different from Jupyter, when you open RStudio you open a `.R` or `.Rmd` file the RStudio, the current working directory is **not** neccesarily the project working directory, or the directory of the file you opened.


![](https://media.giphy.com/media/oKQW9bVVyalGg/giphy.gif)

---

## Where am I? (or the files pane)

**EVERY SESSION** you need to tell RStudio where you are working. Especially if you are loading other files outside of your `.R` or `.Rmd` file.

So, where are you when you open RStudio? You can find out one of two ways:

1. type `getwd()` in the console

2. In the files pane, click the cog/More button and then click "Go To Working Directory"

--

**Give it a try!** Figure out what your RStudio's current working directory is using both methods.

---

## Where should I be?

To make your life easier, set your working directory to the root directory of the Git repository you are working in!

![](https://media.giphy.com/media/3o7aCTPPm4OHfRLSH6/giphy.gif)

---

## Setting the working directory

You can set the working directory using the following 3 ways:

1. type `setwd("PATH")` in the console

2. In the files pane, navigate the file structure to where you want the working directory to be. Then click the cog/More button and then click "Set As Working Directory"

3. In the Session menu, click Set Working Directory and then Choose Directory. Navigate the opened file brower to choose the directory. 

--

**Give it a try!** Use each method to set the working direcytory to a different place. Each time, verify it worked each time by typing `getwd()` in the console.

---

## Setting the working directory is important!

If you are working in RStudio and then you start looking like this - you probably forgot to set the working directory.

![](https://media.giphy.com/media/CPskAi4C6WLHa/giphy.gif)

---

# Let's Practice!
