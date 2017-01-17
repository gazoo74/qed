## NAME

qed(1) - Run a command in a per-project container

## SYNOPSIS

**qed** [OPTIONS] [COMMAND]

## DESCRIPTION

In its simpliest form **qed(1)** executes the given command in a **docker(1)**
associated to the current working directory (or the first parent directory),
using the current user ownership.

If no command is given to the command line, **qed(1)** opens an interactive
shell if the interactive flag __-i__ is set.

If container does not exist yet, **qed(1)** creates a new one based on options
inherited from the global config file in a $XDG_CONFIG_HOME directory, the
config file in the current directory, and command line arguments.

You can think about **qed(1)** as a tool smarter than the following
**docker(1)** command:

```
$ docker run -v $PWD:$PWD -w $PWD -i -t ubuntu /bin/bash
```

Dumping the version of the default distribution would be as trivial as:

```
$ qed cat /etc/os-release | grep PRETTY_NAME
PRETTY_NAME="Ubuntu 16.04.1 LTS"
```

**qed(1)** can also list or remove one or all associated containers.

## OPTIONS

**-h**
    show this help message

**-c**
    local configuration directory (default to autodetect)

**-d**
    target distribution image (a custom one can be used, like\
'my.registry/builder/ubuntu:10.04')

**-i**
    enter interactive mode

**-b**
    force re-build of a local docker base image

**-p**
    force pull of docker base image from registry

**-f**
    force re-creation of the docker container

**-w**
    enable moonwalk mode (usefull when running qed commands in subdirectories)

**-r**
    remove all containers associated to current working directory

**-q**
    quiet mode (do not show qed log messages)

## EXAMPLES

Some examples of **qed(1)** use case:

Run an interactive shell inside the docker image

```
$ qed -i
```

Run make inside the docker image

```
$ qed make
```

Run an interactive make menuconfig inside the docker image

```
$ qed -i make menuconfig
```

Rebuild the docker image if the **Dockerfile(5)** has been updated

```
$ qed -b
```

## BUGS

Report bugs at <**https://github.com/vivien/qed/issues**>

## AUTHOR

Written by Lionel Nicolas <**lionel.nicolas@nividic.org**> and Vivien Didelot
<**vivien.didelot@savoirfairelinux.com**>

## COPYRIGHT

Copyright (c) 2016-2017 Lionel Nicolas and Vivien Didelot

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 3.

## SEE ALSO

docker(1), Dockerfile(5)

## COLOPHON

This page is part of **Q.E.D.** project.

**Q.E.D.** stands for Quod Erat Dockerandum.
