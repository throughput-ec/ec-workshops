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

---

# Step 2

- Inside your Github repository folder:
    - Create an R Markdown.
    - Open a new code cell and write:
    ```
    print("Hello world!)
    ```
    - Save the Rmd. It should look like this:

---

# Step 3 

— You will need two files in your repository:
    - `runtime.txt` Specify the R version by date. The easiest day, write today's date (e.g. r-2021-12-07). 
    - `install.R` A list of `install.packages('package_name')` commands, one per line.
    
You can find a template for both files in the next section.

---

# Step 4 

- Push all your repository changes back to GitHub.
- Your repository should look now like this:

---

# Step 5

- Go to my binder.
- Type the URL of your repo into the "GitHub repo or URL" box. It should look like this:
```
https://github.com/your-username/my-first-R-binder
```

- Where it says Git ref type in main or the branch that you woud like to use.

- As you type, the webpage generates a link in the "Copy the URL below..." box. It should look like this:
```
https://mybinder.org/v2/gh/your-username/my-first-R-binder/HEAD
```

- Once this is done simply hit the launch button. My Binder will construct your Rmd in a few minutes.

---

# Step 6

- Copy the generated link, open a new browser tab and visit that URL.

- You will see a "spinner" as Binder launches the repository.

- Navigate your Rmd file.

---

# Step 7

- Once built, you can share the link to this with anybody you want to run your project on their machine.
- Save your LaunchBinder Badge and share it!

---

# Let's practice!