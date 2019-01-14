This repo contains code, scripts, and configs related to running a simple
server which can interact with Redis (through `GET` requests for convenience
which is fully acknowledged to be a real bad idea).

It is organized by branches with the intention that attendees to the meeting
series will work along as code is presented, but be able to switch to a known
good copy should problems arise.

The branches are:

- `master`: Contains this README
- `1-server`: Contains the server
- `2-server-environment`: Augments the server with values read
  from the environment
- `3-docker`: Adds a Dockerfile and `docker-compose.yml` to allow us
  to run the server in a containerized environment
- `4-kubernetes`: Adds namespace/ deployment/ service/ ingress specs
- `5-helm`: Adds a helm chart, templating things out of k8s files

