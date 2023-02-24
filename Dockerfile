# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the main.go file to the working directory
COPY main.go .
COPY go.mod .

# Build the Go application
RUN go build -o main

# Expose port 8080 for the container
EXPOSE 8080

# Start the Go application
CMD ["./main"]
