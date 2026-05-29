# My first dockerfile

# Step 1: We take a ready-made base image with Go installed (First layer)
FROM golang:1.22-alpine

# Step 2: Create a working directory inside the container (Second layer)
WORKDIR /app

# Step 3: Copy main.go file from the host into the container (Third layer)
COPY main.go .

# Step 4: Compiling Go code into a binary file (Fourth layer)
RUN go build -o myapp main.go

# Step 5: Specify the port the application is listening on (information instruction)
EXPOSE 8080

# Step 6: The command that will be executed when the container starts
CMD ["./myapp"]
