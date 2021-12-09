---
type: slides
---

---
type: slides
---
  
# Setting Up the Binder

---

# Step 1

- Create a **public** GitHub repository.
- You can name your GitHub repository as you like.
- Initialize your repository with a README!
- Clone the repository to your local machine.

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/11_github.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# Step 2

- Inside your Github repository folder:
    - Create an Rmd file.
    - Open a new code Rmd file and write:
    '''

    ```{r setup, include=FALSE}
    knitr::opts_chunk$set(echo = TRUE)
    library(leaflet)
    leaflet(options = leafletOptions(minZoom = 0, maxZoom = 18))
    ```

    ## My Leaflet Map

    **TASK:** Find UBC in a Leaflet map.

    ```{r}
    map1 <- leaflet() %>%
                addProviderTiles(providers$Stamen.TerrainBackground) %>%
                addTiles() %>%
                addCircleMarkers(lng =-123.241999032 , lat = 49.267665596,
                popup = paste0("UBC"),
                clusterOptions = markerClusterOptions(),
                options = markerOptions(riseOnHover = TRUE))
    map1
    ```
    '''
    
    - Save the Rmd file. 

---

# Step 3 

— You will need two files in your repository:
1. `runtime.txt` Specify the R version by date. The easiest day, write today's date (e.g. r-2021-12-07). 

    ```
    r-2021-12-07
    ```

2. `install.R` A list of `install.packages('package_name')` commands, one per line.
    For our example
    ```
    install.packages('leaflet')
    ```
    
You can find a template for both files in the next section.

---

# Step 4 

- Push all your repository changes back to GitHub.
- Your repository should look now like this:

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/05_github.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# Step 5

- Go to my binder.
- Type the URL of your repo into the "GitHub repo or URL" box. It should look like this:
```
https://github.com/your-username/my-first-R-binder
```

- Where it says Git ref type in main or the branch that you woud like to use.
- Where it says path to notebook type in the Rmd file name. 

- As you type, the webpage generates a link in the "Copy the URL below..." box. It should look like this:
```
https://mybinder.org/v2/gh/your-username/my-R-python-binder/main/my_file.Rmd
```

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/06_binder.png?raw=true" alt="Binder from Git" width=45% align="center">


---

# Step 5b

- Once this is done simply hit the launch button. 
- My Binder will create your binder repo in a few minutes.
- Be patient. The first time it might take some while to build.

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/07_binder.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# Step 6

- Copy the generated link, open a new browser tab and visit that URL.

- You will see a "spinner" as Binder launches the repository.

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/08_binder.png?raw=true" alt="Binder from Git" width=45% align="center">


---

# Step 7

- Navigate your Rmd file.

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/09_binder.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# Step 8

- Once built, you can share the link to this with anybody you want to run your project on their machine.

- Save your LaunchBinder Badge and share it!

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/10_binder.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# Let's practice!