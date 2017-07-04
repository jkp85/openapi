# OpenAPI (a.k.a Swagger) Specification for 3Blades API

3Blades API docs based on Swagger.

Public facing API documents are published with Readme.io. Readme.io's documentation version should be in sync with SwaggerHub's project version. GitHub branches are the method of choice to sync versions between both services.

## Add new SwaggerHub project version

- Log into [SwaggerHub](https://app.swaggerhub.com/apis/3Blades/3blades_api/) with hour GitHub account.
- Version may be edited, however every edit should correspond to a new SwaggerHub version. Version management should [follow these guidelines](./VERSION_MANAGEMENT.md).
- Click on `...` button on the top right and select `Add version`.
- Edit document and save. Make sure version is also reflected in swagger document:

```
swagger: '2.0'
info:
  title: 3blades API
  version: "1.1.1"
```

> SwaggerHub will automatically detect if `version` has changed. You can create a new project version by first editing `version` confirming option to create new project version.

- Edit document and save.
- Publish API in SwaggerHub with Publish option in `...` button on top right. This essentially creates a read only version and allows users in the SwaggerHub community to find 3Blades API docs.

## Add new GitHub integration

- Each new version needs a new GitHub integration. Select the plug icon on the top right and select `Add new integration`.
- Select `GitHub sync` from the list of options and click on `Add`. Select/add these integration options:
  - Name: GitHub
  - GitHub Token: click on `Connect to GitHub`
  - Repository owner: 3blades
  - Repository: openapi
  - Sync method: Basic sync
  - Branch: SWAGGERHUB
  - Generated API Code: swagger
  - Output folder: swagger

## Push changes to GitHub

- Select `Create and execute` to push changes.

## Merge to master branch

- Create Pull Request from `SWAGGERHUB` branch to `master` branch.
- Wait for review and merge.

## Create new version branch

- Create new GitHub branch from master. Branch name should be same version as version from SwaggerHub project.

## Publish new version in Readme.io

- Log into [Readme.io](https://dash.readme.io/).
- Click on 3Blades project.
- On the top right, select version drop down on top left and select `Manage Versions`.
- Click on `Add new version` button.
- Add version and fork from latest version.
- (Optional) Toggle Main version by clicking `main version?` button.
- (Optional) Toggle Deprecated version by clicking `is deprecated?` button.
- (Optional) Toggle Public version by clicking `is public?` button.
- (Optional) Toggle Deprecated version by clicking `is deprecated?` button.
- Click on `Edit version` and add **raw** GitHug repo URL with version branch.
