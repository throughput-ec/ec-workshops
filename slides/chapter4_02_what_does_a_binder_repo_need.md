---
type: slides
---

# What Does Starting a Binder Look Like?

---
# Getting to the Hub

If you visit [mybinder.org](https://mybinder.org/) you will encounter the following screen:

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/00_binder.png?raw=true" alt="Binder" width=45% align="center">

---

# What Do you Need to Build a Binder Repository?
**Git Repository**

- You will need to have a Git repository.

- The repository must be in a *public* location online (`GitHub`, `GitLab`, `Bitbucket`, others).


<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/01_binder.png?raw=true" alt="Binder from Git" width=45% align="center">

---

# What Do you Need to Build a Binder Repository?
**Configuration Files**

- The repository must have configuration files that specify its environment.

- Configuration files should be placed in the root of the repository or in a binder/ folder in the repository’s root.

---

# What Do you Need to Build a Binder Repository?
**Safety**

- The repository contains content designed for people to read.
    - A Jupyter Notebook 
    - An R script to make a visualization.

- The repository **does not** require any sensitive information 
    - Passwords
    - API secrets
    - Personal information
    - Private data

---

# What Do you Need to Build a Binder Repository?
**A BinderHub**

- Binders are powered by a BinderHub, an open-source tool that deploys the Binder service to the cloud.

- There are several BinderHubs that you may use:
    - [Binder Pangeo](https://binder.pangeo.io/)
    - [mybinder.org](https://mybinder.org/)
    - [Alan Turing Institute Binder](https://turing.mybinder.org/)
    - and [others](https://mybinder.readthedocs.io/en/latest/about/federation.html)

---

# Binder's Behind the Scenes
**repo2docker**

Binder uses a tool that mimics how humans do reproducible code **repo2docker**.

- It clones a github repository.

- It looks for configuration files 
    - These files describe the dependencies needed for the project.
    - It recognizes files named: `environment.yml`, `requirements.txt`, `install.R`, `Dockerfile`, and MORE.

- It installs the dependencies based on the configuration file.

- Starts a Jupyter Notebook / RStudio session.

---

# Let's practice what we learned!