# Web apps that do

This is a repository meant to host examples of rich web apps using Polymer.

## Installation

We use Node, Bower and Grunt as a development toolchain – make sure you have them installed on your system:

```sh
brew install node
npm install -g bower
npm install grunt
```

After cloning this repository, run

```sh
git submodule update
git submodule pull
bower install
npm install
```

## Running

Invoking the following command compiles all the CoffeeScript code and copies all the assets in the expected directory, then boots a Node server that listens on port 5000.

```sh
grunt run
```

Use `grunt --help` or inspect the `Gruntfile` to find other commands.

## Endpoints

- `/record`: record screen

## License
Copyright (c) 2015 Julien Silland  
Licensed under the MIT license.
