---
type: slides
---

<div><h1><img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module1/00_ec_slide1.png?raw=true" alt="EC Theme" width=25% align="left"/> Lesson 4<br>Dockerfiles</h1></div>

---

## What is a Dockerfile?

- Dockerfiles are a set of instructions on how to add things to a base image. 

- They build custom images up in a series of layers. 

---
## Writing a Dockerfile

1. In a new file called Dockerfile, put the following:

```
FROM rocker/verse:latest
```
This tells Docker to start with the rocker/verse base image. 
The `FROM` command must always be the first thing in your Dockerfile.

2. Add a layer on top of our verse. Install `gapminder`.
```
RUN R -e "install.packages('gapminder', repos = 'http://cran.us.r-project.org')"
```

`RUN` commands in your Dockerfile execute shell commands to build up your image,

3. Save the Dockerfile.

---

## Writing a Dockerfile

4. Return to the Docker terminal.

5. Build the image by doing:
```
docker build -t my-r-image .
```

`-t my-r-image` names the image (use only lower case)
`.` says all the resources we need to build the image are in our current directory. 

6. List your images via:
```
docker images
```
7. You should see `my-r-image` in the list. 


---

## Launch your new image 

- Simply do the commands that you already know:
```
docker run --rm -p 8787:8787 my-r-image
```

Then in the RStudio terminal in the browser, try gapminder again:

```
library('gapminder')
gapminder

```

`gapminder` is pre-installed and ready to go in your new docker image.

---

## Adding Data

- You may also want some some static files inside our Docker image - such as data.
- Add a line in the Dockerfile:
```
ADD data/gapminder-FiveYearData.csv /home/rstudio/
```
Rebuild your Docker image:
```
docker build -t my-r-image .
```
And launch it again:
```
docker run --rm -p 8787:8787 my-r-image
```
Go back to RStudio in the browser, and `gapminder-FiveYearData.csv` will be, present in the files visible to RStudio.

---

# Let's practice what we learned!
