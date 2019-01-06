FROM golang:1.11

ENV GO111MODULE on

## Build
RUN mkdir -p ${GOPATH}/src/github.com/{{.Repo.Owner.Login}}/{{.Repo.Name}}
RUN ln -s /app ${GOPATH}/src/github.com/{{.Repo.Owner.Login}}/{{.Repo.Name}}
COPY . /app
WORKDIR /app
RUN make build
