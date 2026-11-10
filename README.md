# main-bot
Monorepo of the line follower robot project

Another line

Yet another line

## Quick Start

To get started, it is assumed you have one of the two available to you as a development host:

- A machine running native x86-64 Ubuntu 24.04 or a similar Linux disrtibution (prefered); or
- A WSL2 environment running a Ubuntu 24.04 image on either a Windows 10 / 11 machine.

Other development environments may be used although they are not officially supported by the project.

A Dockerfile is maintained in the repository that can be built and the resultant image executed with Docker
(atop of the base development host environment) to provide a standard and centrally-maintained development
environment for each developer.

The docker image shall also be utilised in the CI pipeline to enable pre-merge checks on changes, etc.

## Documentation

This README serves as the most basic top-level documentation for the project. It contains basic information
and references to more rich documentation.

The project's main documentation is implemented directly within the repository using Sphinx. As part of the
nightly release, this documentation is built and made available
[here](https://jackwinch.github.io/main-bot/).

You can build the documentation from within the Docker image directly using the following:

`$ ./build-docs.sh`

Make sure you are within the project's root directory when you run this command.
