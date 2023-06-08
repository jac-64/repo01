docker run -d -p 2222:22 --name docker_ssh_conector \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e FILTERS={\"name\":[\"^/Solr$\"]} -e AUTH_MECHANISM=simpleAuth \
  -e AUTH_USER=solr -e AUTH_PASSWORD=pepe -e HTTP_ENABLED=false -e SHELL_USER=solr \
  jeroenpeeters/docker-ssh
