FROM alpine:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Install required dependencies
RUN apk add --no-cache go

# Change the working directory to the location of the main.go file
WORKDIR /app

# Build the app
RUN go build -o main ./worker/main.go

# Specify the command to run when the container starts
CMD ["./main"]
