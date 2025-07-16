FROM jenkins/jenkins:lts

USER ROOT

RUN apt-get update && \ apt-get install -y docker.io ipennssh-server

RUN usermod -aG docker jenkins

EXPOSE 22 8000 50000

CMD service ssh start && /user/bin/tini  -- /usr/local/bin/jenkins.sh
# # Derive the latest base image
# FROM python:latest

# # Label as key-value pair
# LABEL Maintainer="amroblesdev"

# # Working directory
# WORKDIR /app

# # Copy remote file at working dir in container
# COPY myApp.py /app/

# # Run the software
# CMD [ "python", "./myApp.py" ]