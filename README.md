[![Build Status](https://travis-ci.org/3Blades/openapi.svg?branch=master)](https://travis-ci.org/3Blades/openapi)

# OpenAPI (a.k.a Swagger) Specification for 3Blades API

3Blades API docs based on Swagger.

Public facing API documents are published with Readme.io. Readme.io's documentation version should be in sync with corresponding GitHub repo version. GitHub branches are the method of choice to sync versions between GitHub and Readme.io.

## Contributing

Submit an issue or read through the steps to [get your fork configured](./CONTRIBUTING.md#forks) and submit a pull request.

## Check Validity

The unit tests require a Travis CI environment to run. To validate your changes before committing, use an online Swagger validation tool.

 - [Swagger 2.0 Parser](http://bigstickcarpet.com/swagger-parser/www/index.html)

## Release Branch

Using GitHub API or user interface, create a new release branch from master, such as `1.1`.

## Publish new version in Readme.io

_The following steps apply to 3Blades staff only._

- Log into [Readme.io](https://dash.readme.io/).
- Click on 3Blades project.
- On the top right, select version drop down on top left and select `Manage Versions`.
- Click on `Add new version` button.
- Click on `Edit version` and add **raw** GitHug repo URL with version branch.

> Note Readme.io supports both yaml and json file extensions.

Alternatively, update existing documentation version by clicking on the Version --> Edit option.
