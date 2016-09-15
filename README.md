# This is a Yeoman based development environment

## Development environment

### Building the environment

Using `docker build --rm --tag goern/yeoman-centos7 .` will generate a container
image including all you need to follow the [Yeoman quickstart for Angular](https://github.com/yeoman/generator-angular)

### Using the environment

To create a new project, create a new directory `myproject` and `docker run --rm -ti -v `pwd`/myproject:/home/yeoman:Z goern/yeoman-centos7  yo --no-color --no-insight angular --typescript`. `myproject` is hardcoded in some places by now...

And to serve the file you edit in `myproject/` use `docker run --rm -ti -p 9000:9000 -p 35729:35729 -v `pwd`/myproject:/home/yeoman:Z goern/yeoman-centos7 grunt serve`, dont forget to change
`myproject/Gruntfile.js` to listen to `0.0.0.0` rather than `localhost`. After
that, you should see the first page of your application at http://localhost:9000/#/ .

If you want to see livereload work, keep the grunt container running and
change something in ` myproject/app/views/main.html`.

## Build Toolchain

### OpenShift Extended Build

## Runtime environment

As we serve an Angular application, the runtime environment just needs to serve
static files. A simple webserver is sufficient for that. Reusing [httpd from CentOS](https://github.com/CentOS/CentOS-Dockerfiles/blob/master/httpd/centos7/Dockerfile)
will do the trick.

## Usage with OpenShift
