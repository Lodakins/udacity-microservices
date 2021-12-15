[![CircleCI](https://circleci.com/gh/Lodakins/udacity-microservices/tree/master.svg?style=svg)](https://circleci.com/gh/Lodakins/udacity-microservices/tree/master)

## Project Overview

In this project, I have to operationalize a Machine Learning Microservice API. I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

My project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/). In this project I:
* Tested my project code using linting
* Completed a Dockerfile to containerize this application
* Deployed the containerized application using Docker and make a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and create a Kubernetes cluster
* Deployed a container using Kubernetes and make a prediction
* Used CircleCI to automate testing of the project for deployment.

---

# TO RUN THE APPLICATION, FOLLOW THE STEPS BELOW

* Setup the Environment

    ### Create a virtualenv with Python 3.7 and activate it.
    * install python 3 and above
    * python3 -m venv ~/.devops
    * source ~/.devops/bin/activate
    * make install

* Run `app.py`. You can run these three ways:

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

###  Project files description

1. .circleci/config.yml: This contains the jobs for CircleCI to run
2. app.py: This is the machine learing microservice API to be containarized.
3. docker_out.txt: This contains the logs output when the docker container is run locally
4. Dockerfile: This is used to create the docker image for containerization
5. kubernetes_out.txt: This filemcontains the logs output when the docker container is run on a kubernetes cluster
6. make_prediction.sh: This is a shell script  used to make api calls to the application
7. Makefile: This file contains instructions on environment setup and lint tests
8. requirements.txt: This file contains the dependencies that needs to be installed for the application to work
9. run_docker.sh: This file contains instruction to get Docker application running locally
10. run_kubernetes.sh: This file contains instruction to run the Docker application on kubernetes
11. upload_docker.sh: This file tags and uploads an image to Docker Hub
12. model_data: This contains the data the application uses to make predictions
