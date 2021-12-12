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

<exercise id="2" title="First Steps">

Type the R code below and try running it.

<codeblock id="05_01">

1. Assign to `x` the value of 5.
2. Print `x`

Use `<-` to a assign a value to a variable.
Use `print` to print the variable.

</codeblock>


Rewrite the following code and see what happens.

```
boxplot(mtcars$mpg, grouping(mtcars$cyl))
```
<codeblock id="05_02">

Now, go to the RStudio Binder and run the above code in the Console panel.
What happened there? Annotate your observations!

</codeblock>

</exercise>

<exercise id="3" title="Creating an Rmd file" type="slides">

<slides source="chapter5_02_creating_an_Rmd_file">
</slides>

</exercise>

<exercise id="4" title="Creating a Presentation" type="slides">

<slides source="chapter5_03_creating_a_presentation.md">
</slides>

</exercise>

<exercise id="5" title="Creating an R Project" type="slides">

<slides source="chapter5_04_R_project">
</slides>

</exercise>


<exercise id="6" title="Summary and Conclusions" type="slides">

<slides source="chapter5_05_summary_and_conclusions">
</slides>

</exercise>