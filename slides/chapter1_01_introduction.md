---
type: slides
---

# Lesson 0: Intro to Jupyter

---

# What is Jupyter?

Notebooks are a great tool for exploration and for documenting your workflow.
Notebooks allow you to write:
- Code
- Plots
- Formatted text
- Latex text for equations

and much more in a single document!

---

For this workshop, we will be using R via [Jupyter](https://jupyter.org/index.html)

- R is the programming language that runs computations

- Jupyter is an integrated development environment (IDE) that provides an interface by adding convenient features and tools

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png" alt="jupyter logo" align="left" width="25%" >

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/R_logo.svg/1920px-R_logo.svg.png" alt="R logo" width="25%" align="center">

---

You can think of Jupyter Notebooks as the dashboard of a car.

You don’t drive a car by interacting with the engine but rather by interacting with the car’s dashboard.

In the same way, rather than interacting with R directly, we will be using the Jupyter's interface.

Jupyter will allow us to:
- Run R code interactively
- Use other languages such as Python, Julia, or Matlab!

---
This is what a Jupyter Notebook looks like:

![screenshot JN]('./static/01_jupyter_notebook.png')

---

- Notebooks are great for exploration and for documenting your workflow
- There are many options for sharing notebooks in human readable format:
  - Share online with [nbviewer.jupyter.org](http://nbviewer.jupyter.org/)
  - Github renders automatically any notebooks that you push.
  - You can convert to HTML, PDF, etc. with [nbconvert](https://nbconvert.readthedocs.io/en/latest/)

---
### Organizing Projects

It's good practice to keep all the files for a project in one folder, and use sub-folders to keep things organized.

- Let's create a new folder for this workshop and call it `python-beginner`
- Within this folder, let's create two sub-folders:
  - `data`
  - `figures`
---
### Create a New Notebook

- Navigate to your `python-beginner` folder
- Create a new untitled notebook
  - Note the .ipynb extension (comes from "interactive Python notebook", the previous name before it was changed to Jupyter to reflect multi-language support)
  - Rename the notebook to "workshop.ipynb"
- Notebooks auto-save periodically, or you can manually save
- You can open a previously saved notebook by clicking on it in Files Sidebar
---

## Working with Notebooks

A notebook consists of a series of "cells":
- **Code cells**: execute snippets of code and display the output
- **Markdown cells**: formatted text, equations, images, and more

By default, a new cell is always a code cell.

---

## Code Cells

To run a code cell, click in it and press `Shift-Enter` or press the Run button on the toolbar

This is an example of a Code Cell

```r
# Print something
print("Hello world", quote = FALSE)
```

```out
Hello world
```

---

## Markdown Cells

In Markdown cells, you can write plain text or add formatting and other elements with [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). These include headers, **bold text**, *italic text*, hyperlinks, equations $A=\pi r^2$, inline code `print('Hello world!')`, bulleted lists, and more.


This is a markdown cell:
```
Hello~!
```
---


- To create a Markdown cell, select an empty cell and change the cell type from "Code" to "Markdown" in the dropdown menu on the toolbar
- To run a Markdown cell, press `Shift-Enter` or the Run button on the toolbar
- To edit a Markdown cell, you need to double-click inside it

---

## Other Notebook Basics

- Organizating cells &mdash; insert, delete, cut/copy/paste, move up/down, split, merge
- Running all cells or selected cell(s)
- Restarting and interrupting the kernel
- Caveat: Notebooks are nonlinear and running cells out of order can sometimes lead to unexpected results
  - It's good practice to periodically restart the kernel and run all cells, making sure that everything works as expected when you run the whole notebook from top to bottom
- Closing vs. shutting down a notebook &mdash; kernel process in background
- Re-opening a notebook after shutdown
  - All the code output is maintained from the previous kernel session
- Clear output of all cells or selected cell(s)

---

### Interactivity vs. Automation

For a great example of how an interactive workflow in Jupyter notebook can progress into automation with libraries/scripts, check out Jake VanderPlas' blog post [Reproducible Data Analysis in Jupyter](https://jakevdp.github.io/blog/2017/03/03/reproducible-data-analysis-in-jupyter/).

---

## Python Data Science Ecosystem

The Python libraries for data science are developed and maintained by external "3rd party" development teams
- Python core + 3rd party libraries = **ecosystem** 
- To install and manage 3rd party libraries, you need to use a package manager such as `conda` (which comes with Anaconda/Miniconda)

---

# Let's practice!
