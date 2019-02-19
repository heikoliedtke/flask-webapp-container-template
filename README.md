# Summary

The objective of this project is to descripe a standardized setup for containerising Flask webapplications. 



# Solution

## Pre-Requisites

* Webapplication written in python3.x using Flask framework
* requirements.txt file with all required libraries (e.g. echo pip freeze > requirements.txt)
* Dont forget to add uwsgi to the requirements!

## Required Files

* app.ini  --> is used to configure UWSGI. This file is the only file which needs to be
  adopted according to the filename of the webapp.
* myproject --> is used to create an additional NGINX reverse proxy entry. No need to change this filename
* Dockerfile --> is used to build the docker container "docker build ."
* requirements.txt --> is used to install all required python libraries.



