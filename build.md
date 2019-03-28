#export GOOS=darwin
export GOOS=linux
export GOARCH=amd64
go build -o server

docker run --rm -p 8080:8080 knative-golang
