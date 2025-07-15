# Derive the latest base image
FROM python:latest

# Label as key-value pair
LABEL Maintainer="amroblesdev"

# Working directory
WORKDIR /app

# Copy remote file at working dir in container
COPY myApp.py /app/

# Run the software
CMD [ "python", "./myApp.py" ]