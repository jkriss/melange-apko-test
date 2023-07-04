#!/usr/bin/env bash

docker run --privileged --rm -it -v "${PWD}:/work" -w /work cgr.dev/chainguard/sdk

# then:
# melange keygen
# melange build melange.yaml --arch amd64,aarch64 --signing-key melange.rsa

# build apko from source
# git clone https://github.com/chainguard-dev/apko.git ; cd apko ; GOFLAGS="-buildvcs=false" make apko install

# cd ..
# apko build --debug apko.yaml factory-demo output.tar -k melange.rsa.pub --arch amd64,aarch64

# then get out of the builder
# exit
# docker run -p 8080:8080 --rm factory-demo:latest-arm64