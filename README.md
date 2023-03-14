# Demo Node.js Application

This is a sample node js application created for demo

## Stack

Node.js | Express | Redis 

## Getting Started
```
git clone https://github.com/rkfrog/demo-node-app.git
```

### Running code in Docker
```
cd demo-node-app
docker run --rm -it --entrypoint /bin/bash --name demo-node-app -v $(pwd)/:/demo-node-app/ node:lts
cd /demo-node-app/
./startup.sh
```

