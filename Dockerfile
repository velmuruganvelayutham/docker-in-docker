FROM docker:stable
RUN apk add --update ca-certificates openssl git make go gcc libc-dev jq curl coreutils python python-dev py-pip build-base
RUN update-ca-certificates 
ENV AWS_REGION us-west-2
ENV AWS_SDK_LOAD_CONFIG true
RUN go get -u github.com/awslabs/amazon-ecr-credential-helper/ecr-login/cli/docker-credential-ecr-login
