# OpenAPI (a.k.a Swagger) Specification for 3Blades API

3Blades API docs based on Swagger.

Public facing API documents are published with Readme.io. Readme.io's documentation version should be in sync with corresponding GitHub repo version. GitHub branches are the method of choice to sync versions between GitHub and Readme.io.

## Run 2.0 Validity Test

- Fork this repo:

    https://github.com/3blades/openapi

- (Optional) Create your working branch:

    git checkout -b my_branch_name

- Add, commit and push updated tbs_swagger.yaml

    git add tbs_swagger.yaml
    git commit -s -m "commit message"
    git push origin my_branch_name

- Create Pull request from your working branch to upstream master

- When Travis is green, merge :tada:

## Release Branch

Using GitHub API or user interface, create a new release branch from master, such as `1.1`.

## Publish new version in Readme.io

- Log into [Readme.io](https://dash.readme.io/).
- Click on 3Blades project.
- On the top right, select version drop down on top left and select `Manage Versions`.
- Click on `Add new version` button.
- Click on `Edit version` and add **raw** GitHug repo URL with version branch.

> Note Readme.io supports both yaml and json file extensions.

Alternatively, update existing documentation version by clicking on the Version --> Edit option.
