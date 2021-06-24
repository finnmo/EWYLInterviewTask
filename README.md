# LITEC pre-interview task

Email (submission / contact): kevin.glasson@curtin.edu.au
## Goal
The aim of this task is to give you a taste for the types of tasks that you may
be doing in the role of Assistant Developer. There is no expected time limit and it is not a requirement that you are successful in completing this but I hope that you find it fun or you learn something (or both)!

## Pre-requisites
- A Linux-like environment
- A Bash shell
- Docker (you may need to install this)
- gzip

You are most welcome to tackle the task however you like if you are
comfortable with your own setup i.e. using a different shell, attempting this
in command prompt... **If you do not have access to a Linux-like environment
then contact me and I will give you some ideas.**

## Skills involved
- Docker
- Bash scripting
- Google-fu
- ...Emailing?

## Task
Create a `Dockerfile` and build a `container` that `echo`'s the arguments
supplied to the `docker run` command i.e. when the container is run.

Some information you may need:

- Base container image to use: [bash](https://hub.docker.com/_/bash)
- Output container image name: litec/hello

### Hints
- The difference between a docker `ENTRYPOINT` and a docker `CMD` **may** be relevant to how arguments are passed to the container.

### Command to run (example)

```bash
docker run litec/hello arg1 arg2 arg3
```

### Expected output (for the example command)
- The date should be dynamic.
- The input arguments should be the arguments that are `echo`'d.

```bash
Thu May 27 01:24:25 UTC 2021

Hello LITEC!
My input arguments were: arg1 arg2 arg3
```

### Tagging, saving and emailing the container

Once you are happy that your container fulfils the requirements we need to do
a few things.

The first is to tag your container with your name so that I can tell them
apart. There is further detail
[here](https://docs.docker.com/engine/reference/commandline/tag/).

```bash
docker tag litec/hello litec/hello:<YOUR_NAME>
```

You will note that now you can run your tagged version of the container like
this:

```bash
docker run litec/hello:<YOUR_NAME>
```

Now create a `.tar.gz` from the container and email it to me so that I can
check it works as expected. Again there is further detail
[here](https://docs.docker.com/engine/reference/commandline/save/).

The command that you should use to save is as follows:

```bash
docker save litec/hello:<YOUR_NAME> | gzip >litec-hello-<YOUR_NAME>.tar.gz
```

### Loading your saved container

For your own testing if you want to make sure that your `docker save` worked you can
load it back in from the `.tar.gz` file.

```bash
docker load <litec-hello-<YOUR_NAME>.tar.gz
```

If successful you should see something like:

```bash
Loaded image: litec/hello:<YOUR_NAME>
```
