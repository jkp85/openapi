
#!/bin/sh

testOpenApiSpecValidity() {

  expectedOutput="{}"
  expectedOutputSize=${#expectedOutput}

  # Prepares the spec URL from GitHub Pull-Request (PR)
  prUrl="https://raw.githubusercontent.com/$TRAVIS_PULL_REQUEST_SLUG/$TRAVIS_PULL_REQUEST_BRANCH/tbs_swagger.yml"
  # Now prepare the open API spec file to use the online validator service.
  prValidationUrl="http://online.swagger.io/validator/debug?url=$prUrl"

  # Prepares the spec URL from GitHub merge to upstream branch
  mergeUrl="https://raw.githubusercontent.com/$TRAVIS_REPO_SLUG/$TRAVIS_BRANCH/tbs_swagger.yml"
  # Now prepare the open API spec file to use the online validator service.
  mergeValidationUrl="http://online.swagger.io/validator/debug?url=$mergeUrl"

  if [ "$TRAVIS_EVENT_TYPE" == "pull_request" ]; then

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Validating ENV Variables: Namespace=$TRAVIS_PULL_REQUEST_SLUG, Request Branch=$TRAVIS_PULL_REQUEST_BRANCH"
    echo "OpenAPI Specification File=$prUrl"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

    validationOutput=$(curl $prValidationUrl)
    validationOutputSize=${#validationOutput}

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Testing swagger validation - current output is: $validationOutput"
    echo "Expected valid size: $expectedOutputSize, current output: $validationOutputSize"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

    assertEquals "Validation failed - service unavailable or error found." $expectedOutputSize $validationOutputSize

  else

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Validating ENV Variables: Namespace=$TRAVIS_REPO_SLUG, Request Branch=$TRAVIS_BRANCH"
    echo "OpenAPI Specification File=$mergeUrl"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

    validationOutput=$(curl $mergeValidationUrl)
    validationOutputSize=${#validationOutput}

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Testing swagger validation - current output is: $validationOutput"
    echo "Expected valid size: $expectedOutputSize, current output: $validationOutputSize"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

    assertEquals "Validation failed - service unavailable or error found." $expectedOutputSize $validationOutputSize

  fi

}

# Execute shunit2 to run the tests (downloaded via `.travis.yaml`)
. shunit2-2.1.6/src/shunit2
