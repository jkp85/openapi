# OpenAPI (a.k.a Swagger) Specification for 3Blades API

3Blades API docs based on Swagger.

To sync latest Swagger document `swagger.json` follow these steps:

- Log into [SwaggerHub](https://app.swaggerhub.com/apis/3Blades/3blades_api/) with hour GitHub account
- Select the version of the API you wish to edit. Versions appear to the right of the API path on the top left.
- Edit document and save.
- (Optional) Publish API in SwaggerHub with Publish option in `...` button on top right.
- The save option automatically executes a `git add`, `git commit` and `git push` in the background.
- Branch `SWAGGERHUB` in this repo is updated with new version for `swagger.json` in [swagger](https://github.com/3Blades/openapi/tree/master/swagger) folder.
- Create Pull Request from `SWAGGERHUB` branch to `master` branch.
- Wait for review and marge.
- Log into [Readme.io](https://dash.readme.io/), click on Reference Docs and sync swagger.json.
