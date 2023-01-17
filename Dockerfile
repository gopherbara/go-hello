# use ready image of golang (linux + golang tools)
FROM golang:latest

# need to chose working directory, so container image choose it
WORKDIR go-hello

#copy local files from dir to image files
# COPY src-path destination path
COPY ./ ./

#get binary file with name main
RUN go build -o main .

# entry point for the container (instruction that is to be executed when container start)
CMD ["./main"]