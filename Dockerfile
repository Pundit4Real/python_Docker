# Use the official Python base image for Alpine Linux
FROM python:3.12-alpine

#
ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /django


# Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
