# qed

**Q.E.D.** stands for Quod Erat Dockerandum.

## Requirements

**qed** is a very simple *shell* script that only rely on
[docker](https://github.com/docker/docker).

This package must to be installed.

Depending on you distribution, you will have to run one of the commands below:

On _Ubuntu_, run

    $ sudo apt-get install docker

On _Fedora_, run

    $ sudo dnf install docker

On _Arch Linux_, run

    $ sudo pacman -S docker

## Install

**qed** needs *asciidoctor* to generate its own documentation. If it is not
installed onto you system, you may use *qed* to generate if for you.

Run directly

    $ make
    $ sudo make install

or, using _qed_

    $ ./qed make
    $ sudo make install

You will now be able to run something like

    $ qed -dubuntu make

from you project top directory.

## Links

**qed** is provided as _self_ example of how of setup a project.

Have a look to its [qed config](.qed/config) file and its
[Ubuntu Dockerfile](.qed/Dockerfile.ubuntu). Both files are not necessary, but
they provides a convenient way to run *qed*. Without thos files you will have to
specify the distribution you want to use to every invocation of *qed*.

You may also want to check for the [qed(1)](qed.1.adoc) man-page and some basics
[usages](qed.1.adoc#examples).

## Bugs

Please report bugs at *https://github.com/vivien/qed/issues*.

## Copyright

Copyright (c) 2016-2017 Lionel Nicolas and Vivien Didelot

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, version 3.
