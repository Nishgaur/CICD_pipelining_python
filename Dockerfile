# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Command to run the application
CMD ["python", "app.py"]

# To build the Docker image, run the following command in the terminal:
# docker build -t my-python-app .

# To test the Docker image, run the following command:
# docker run -it --rm my-python-app
