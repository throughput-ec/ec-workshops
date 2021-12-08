---
type: slides
---

<div><h1><img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module1/00_ec_slide1.png?raw=true" alt="EC Theme" width=25% align="left"/> Lesson 1<br>Introduction to Binder</h1></div>

---

# What is Binder?

A Binder (or Binder-ready repository) is a code repository that contains:

* Code that you’d like people to run, for example a Jupyter Notebook or an R script to make a visualization.

* Configuration files for your environment. These files build the environment needed to run your code.

Configuration files should be placed in the root of the repository or in a binder/ folder in the repository’s root.

---

# Motivations for Working with a Binder

<img src="https://github.com/throughput-ec/ec-workshops/blob/main/static/module4/01_others_people_code.png?raw=true" alt="Other people code dependencies map" width=35% align="center">

---

# Motivations for Working with a Binder

Even if you manage to figure out all the dependencies that someone else has used to build their package, you might have otehr challenges:

* An IT department tightly controls what might be installed.

* Instructions for installing dependencies might not be so clear.

---

**IDEA:** Let's use a Dockerfile! 

* More on Dockerfiles next module.

---

**Disadvantages of Docker**

It might still be challenging to write a good Docker file.

Some repositories might not share their Dockerfile. 

---

# repo2docker

---

# Sharing a Single Link 

---

# Preparing a Repository For Binder

---

# Limitations of Binder

- Each instance is limited to 2 gb of RAM and will get destroyed after 10 minutes of inactivity. 
- Each instance can run for a maximum of 24 hours before it will get killed.
- You can get around these limitations by hosting your own binder hub but this requires compute + devops resources from your side. 

Learn more at the [binderhub deployment guide](https://binderhub.readthedocs.io/en/latest/).

---

# Let's practice!