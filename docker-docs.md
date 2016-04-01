Docker is an open platform for developing, shipping, and running applications. Docker combines kernel containerization features with workflows and tooling that help you manage and deploy your applications.
 Docker provides a way to run almost any application securely isolated in a container.
The container is a platform which can:
	* Getting your applications (and supporting components) into Docker containers
	* Distributing and shipping those containers to your teams for further development and testing
	* Deploying those applications to your production environment, whether it is in a local data center or the Cloud.
Docker usage commands:
	Listing containers:
		docker ps (list all running containers)
		docker ps -a (list all container)
	Controlling containers:
		# Start a new container
		$ JOB=$(docker run -d ubuntu /bin/sh -c "while true; do echo Hello world; sleep 1; done")

		# Stop the container
		$ docker stop $JOB

		# Start the container
		$ docker start $JOB

		# Restart the container
		$ docker restart $JOB

		# SIGKILL a container
		$ docker kill $JOB

		# Remove a container
		$ docker stop $JOB # Container must be stopped to remove it
		$ docker rm $JOB
	Saving container state:
		# Commit your container to a new named image
		$ docker commit <container> <some_name>

		# List your images
		$ docker images
		