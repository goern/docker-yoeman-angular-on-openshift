# This is a Yeoman based development environment

## Development environment

### Building the environment

Using `docker build --rm --tag goern/yeoman-centos7 .` will generate a container
image including all you need to follow the [Yeoman quickstart for Angular](https://github.com/yeoman/generator-angular)

### Using the environment

To create a new project `docker run --rm -ti -v `pwd`/myproject:/home/yeoman:Z goern/yeoman-centos7  yo --no-color --no-insight angular --typescript`

And to serve the file you edit in `myproject/` use `docker run --rm -ti -p 9000:9000 -v `pwd`/myproject:/home/yeoman:Z goern/yeoman-centos7 grunt serve`, dont forget to change
`myproject/Gruntfile.js` to listen to `0.0.0.0` rather than `localhost`. After
that, you should see the first page of your application at http://localhost:9000/#/ .

## Build Toolchain

### OpenShift Extended Build

## Runtime environment

## Usage with OpenShift
