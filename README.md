Command-line bootcamp docker
===================

Learn the UNIX command-line by using it in your browser.

This docker image extends and distributes the following software:

#### Command-line bootcamp
- Based on [blahah Command-line bootcamp](https://github.com/blahah/command_line_bootcamp).
- [Licensed under Creative Commons v4.0.](https://raw.githubusercontent.com/blahah/command_line_bootcamp/master/LICENSE.md).

# Build the image
The docker image for Command-line bootcamp can be found in the [docker hub](https://hub.docker.com/r/fikipollo/). However, you can rebuild is manually by running **docker build**.

```sh
cd code-bootcamp-term
sudo docker build -t code-bootcamp-term .
cd ..

cd code-bootcamp-web
sudo docker build -t code-bootcamp-web .
```

## Running the Container
The recommended way for running your Command-line bootcamp docker is using the provided **docker-compose** script that resolves the dependencies and make easier to customize your instance. Alternatively you can run the docker manually.

## Using the docker-compose file
Launching your Command-line bootcamp docker is really easy using docker-compose. Just download the *docker-compose.yml* file and customize the content according to your needs. There are few settings that should be change in the file, follow the instructions in the file to configure your container.
To launch the container, type:
```sh
sudo docker-compose up
```
Using the *-d* flag you can launch the containers in background.

In case you do not have the Container stored locally, docker will download it for you.
