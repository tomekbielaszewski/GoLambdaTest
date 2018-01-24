REM You need to install the tool below only once
REM go.exe get -u github.com/aws/aws-lambda-go/cmd/build-lambda-zip

set GOARCH=amd64
set GOOS=linux
go build -x -o main main.go
%GOPATH%\bin\build-lambda-zip.exe -o deployment.zip main