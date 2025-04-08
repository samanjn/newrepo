# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on (if needed)
EXPOSE 8000

# Define environment variable (optional)
ENV PYTHONUNBUFFERED=1

# Command to run the application
CMD ["python", "app.py"]
