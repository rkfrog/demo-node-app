# Demo Node.js Application

This is a sample node js application created for demo

## Stack

Node.js | Express

## Getting Started
```
git clone https://github.com/rkfrog/demo-node-app.git
```

### Bootstrapping the app
```
npm install
DEBUG=demo-node-app:* npm start
## App should be up and running on port 3000
```

### Running code in Docker
```
cd demo-node-app
docker run --rm -it --entrypoint /bin/bash --name demo-node-app -p 3000:3000 -v $(pwd)/:/demo-node-app/ node:lts
cd /demo-node-app/
./startup.sh or DEBUG=demo-node-app:* npm start
```

###  Publish to Artifactory
```
npm config set registry https://roskad.jfrog.io/artifactory/api/npm/demonode-npm-dev-local/
npm login
npm publish --registry https://roskad.jfrog.io/artifactory/api/npm/demonode-npm-dev-local/
```