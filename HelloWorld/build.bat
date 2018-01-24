REM You need to install the tool below only once
REM go.exe get -u github.com/aws/aws-lambda-go/cmd/build-lambda-zip

set GOOS=linux
go build -o main main.go
%GOPATH%\bin\build-lambda-zip.exe -o deployment2.zip main