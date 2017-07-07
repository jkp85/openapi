
#!/bin/sh
testOpenApiSpecValidity() {

        expectedOutput="{}"
        expectedOutputSize=${#expectedOutput}

        # Prepares the spec URL from GitHub Pull-Request (PR)
        specUrl="https://raw.githubusercontent.com/$TRAVIS_PULL_REQUEST_SLUG/$TRAVIS_PULL_REQUEST_BRANCH/tbs_swagger.yml"
        # Now prepare the open API spec file to use the online validator service.
        validationUrl="http://online.swagger.io/validator/debug?url=$specUrl"

        echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo "Validating ENV Variables: Namespace=$TRAVIS_PULL_REQUEST_SLUG, Request Branch=$TRAVIS_PULL_REQUEST_BRANCH"
        echo "OpenAPI Specification File=$validationUrl"
        echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

        validationOutput=$(curl $validationUrl)
        validationOutputSize=${#validationOutput}

        echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo "Testing swagger validation - current output is: $validationOutput"
        echo "Expected valid size: $expectedOutputSize, current output: $validationOutputSize"
        echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

        assertEquals "Validation failed - service unavailable or error found." $expectedOutputSize $validationOutputSize

  }

# Execute shunit2 to run the tests (downloaded via `.travis.yaml`)
. shunit2-2.1.6/src/shunit2
