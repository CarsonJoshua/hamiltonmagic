# Set base image (host OS)
FROM python:3.12.7

# By default, listen on port 80
EXPOSE 80/tcp

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY app.py .

# Specify the command to run on container start
CMD [ "python", "./app.py" ]

# CMD ["flask", "run", "--port", "4000"]