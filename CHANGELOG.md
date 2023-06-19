<a name="v0.47.0"></a>
## [v0.47.0]
### chore
- update CHANGELOG.md
- update getting started module sum
- **integration-test:** add store checking
- **integration-test:** specify length for published/draft store


<a name="v0.46.0"></a>
## [v0.46.0]
### chore
- **sdk:** lobby - remove systemcomponentsstatus
- **integration-test:** add initial support for ams service
- **docs:** ams service common use cases
- **samples:** rename ondemand-refresh-token
- **sdk:** fix code style lint error
### feat
- **:** add initial support for ams service
- **sdk:** on demand refresh token
### docs
- **readme:** add on demand refresh token


<a name="v0.45.0"></a>
## [v0.45.0]
### chore
- **jenkinsfile:** update generate spec target


<a name="v0.44.0"></a>
## [v0.44.0] - 2023-05-09

### Chore
- **docs:** update changelog
- **samples:** update getting started go sum
- **sdk:** generate go extend sdk (2023-05-08T20:54:03+00:00)
- **sdk:** migration from goswagger to jinja

### Ci
- **generate:** generate changelog also
- **generate:** refactor jenkinsfile.generate
- **makefile:** fix make version error

### Fix
- **sdk:** modify the singleton factory


<a name="v0.43.0"></a>
## [v0.43.0] - 2023-04-26

### Chore
- **docs:** update changelog & migration guide
- **sdk:** generate go extend sdk (230425.2045)

### Ci
- **jenkinsfile.generate:** add outstanding deprecation check
- **jenkinsfile.generate:** fix error when there is no outstanding deprecation
- **makefile:** add outstanding_deprecation target

### Fix
- integration test compile error


<a name="v0.42.0"></a>
## [v0.42.0] - 2023-04-10

### Chore
- add `GetHeaders()` func for forward compatibility with go-openapi/runtime client response

### Ci
- rename jenkins slack notif channel


<a name="v0.41.0"></a>
## [v0.41.0] - 2023-03-28

### Chore
- adjust session and platform integration test
- regenerate sdk and cli for session and platform
- **docs:** remove phantauth link
- **integration-test:** remove skip marker
- **integration-tests:** add skip when failing to create a party
- **makefile:** exclude cache folder
- **samples:** delete title matchmaking sample app
- **sdk:** generate go extend sdk (230327.2046)
- **spec:** update the session and platform from commit 1912e6804a39978cf386b5fe30321450daf5bce2


<a name="v0.40.0"></a>
## [v0.40.0] - 2023-03-14

### Chore
- upgrade go version to 1.18
- **aws-lambda-exmaple-update:** fix typo in README.md
- **cli:** regenerate with new free hard coding template
- **docs:** rename AccelByte Cloud to AccelByte Gaming Services & Server SDK to Extend SDK
- **wrapper:** regenerate with new free hard coding template

### Feat
- **aws-lambda-example:** functionURL working without access token validation
- **aws-lambda-example_update:** allow both local test and function url invocation
- **custom:** examples quick customization

### Fix
- **test:** using temp user in reporting integration test
- **test:** checking conflict reason in reporting integration test


<a name="v0.39.0"></a>
## [v0.39.0] - 2023-02-28

### Chore
- rename to snake case file
- remove sensitive log message
- add compare link between versions
- remove unnecessary file
- update changelog for new release
- add comment in pipeline step
- update additional initialism for go swagger generator

### Feat
- add integration test for lobby service
- add support for reporting service
- **docs:** add common use case docs for reporting service
- **samples:** add aws lambda sample app update version
- **samples:** getting-started - remove logrus
- **samples:** getting-started - use specific version of sdk
- **sdk:** add auth validator
- **test:** add auth validator
- **test:** add integration test for reporting service

### Fix
- updated lobby notification model
- **sdk:** generate notification typo


<a name="v0.35.1"></a>
## [v0.35.1] - 2023-02-22
### Chore
- remove sensitive log message


<a name="v0.38.0"></a>
## [v0.38.0] - 2023-02-13

### Chore
- adjust pipeline credentials
- ignore binary from samples app build
- **samples:** remove unnecessary functions
- **samples:** login client and directly validate the user token
- **samples:** add missing reference in yaml template

### Docs
- **readme:** remove ambiguous line

### Feat
- add initial support for reporting service
- add code level breaking changes check in pipeline
- **samples:** add aws lambda sample app update version

### Fix
- regenerate partially for match2 breaking spec change
- update match2 model name


<a name="v0.37.0"></a>
## [v0.37.0] - 2023-01-31

### Chore
- include local unit test in core test
- move generate from jenkinsfile
- move generate target to codegen
- move sdk name as variable
- move to same package name for test
- move unit testing for get refresh token
- remove hardcoded envar
- separate jenkins job for docs broken link check
- specify make file for go
- update generate pipeline
- update lint error
- update phantauth url name
- **docs:** use second player token to join party with code
- **sdk:** generate go server sdk (230130.0356)

### Docs
- added local token validation to readme
- update CHANGELOG.md for v0.37.0 release
- **migrations:** add migration-guide-v0.36-to-v0.37.md

### Feat
- add generate new sdk jenkins pipeline
- add verify token in local token validation

### Fix
- fail unit testing & pipeline
- separate core test from cli test
- **test:** use second player token to join party with code


<a name="v0.31.1"></a>
## [v0.36.1] - 2022-01-26

### Chore
- **sdk:** regenerate service iam

### Fix
- **spec:** fix iam spec files

### Docs
- update CHANGELOG.md for v0.36.1 release


<a name="v0.36.0"></a>
## [v0.36.0] - 2023-01-17

### Chore
- add unit test for utils function & remove invalid test
- delete unnecessary re-login line
- fix code linting
- move and rename the validator folder
- move integration login client to iam test
- **samples:** update go mod tidy due to the filter bloom package module
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.40
- **spec:** update spec for AccelByte Cloud 3.40

### CI
- add make version

### Docs
- update CHANGELOG.md for v0.36.0 release

### Feat
- **samples:** getting-started - remove logrus
- **samples:** getting-started - use specific version of sdk
- **sdk:** add auth validator
- **test:** add auth validator

### Fix
- aws lambda example template
- create achievement integration test error
- restore indent makefile command
- user agent string version update script
- **envar:** update envar names
- **envar:** update envar names in readme

### Test
- **integration:** match2 - fix create party session
- **integration:** match2 - remove unused codes


<a name="v0.35.0"></a>
## [v0.35.0] - 2023-01-04

### Chore
- regenerate op index to add deprecation marker
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.39
- **spec:** update spec for AccelByte Cloud 3.39

### Docs
- update CHANGELOG.md for v0.35.0 release

### Feat
- implement RFC007 deprecation marker date


<a name="v0.34.0"></a>
## [v0.34.0] - 2022-12-20

### Chore
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.38
- **spec:** update spec for AccelByte Cloud 3.38
- **test:** renaming envar for the phanthauth url

### Docs
- add migration guide from v0.33.0 to v0.34.0
- update CHANGELOG.md for v0.34.0 release (again)
- update CHANGELOG.md for v0.34.0 release

### Test
- **integration:** fix invalid stat code


<a name="v0.33.0"></a>
## [v0.33.0] - 2022-12-06

### Chore
- disable changelog broken link test for now
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.37
- **spec:** update spec for AccelByte Cloud 3.37
- **test:** move to one file

### CI
- **brokenlink:** added check for getting started documentation
- **jenkinsfile:** added openapi 2.0 vendor extension info

### Docs
- added openapi 2.0 vendor extension info
- add session and match2 common use cases
- fix tic tac toc guide
- update CHANGELOG.md for v0.33.0 release
- update getting-started

### Feat
- **samples:** getting started project

### Fix
- **docs:** broken link in operation docs class, model, and equ8 config class
- **docs:** broken link in operation docs class IAM
- **test:** nil pointer dereference in docker but not locally

### Test
- **integration:** add match2 test
- **integration:** add session test
- **integration:** fix duplicate session test renaming
- **integration:** use alternate phantauth instance


<a name="v0.31.2"></a>

<a name="v0.32.0"></a>
## [v0.32.0] - 2022-11-22

### Chore
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.36
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for session and match2 service
- **spec:** update spec for AccelByte Cloud 3.36

### Docs
- add migration guide
- add migration guide from v0.29 to v0.30
- add migration guide from v0.31.2 to v0.32.0
- update CHANGELOG.md for v0.32.0 release

### Feat
- **cli:** add command for session and match2 service
- **spec:** add session and match2
-
### Fix
- **docs:** broken link to release page
- **docs:** recommend to use the latest version


<a name="v0.31.2"></a>
## [v0.31.2] - 2022-11-14

### Chore
- **sdk:** regenerate services
- **test:** add removed fields for telemetry body

### Fix
- **spec:** update spec files

### Docs
- update CHANGELOG.md for v0.31.2 release


<a name="v0.31.1"></a>
## [v0.31.1] - 2022-11-11

### Chore
- **sdk:** regenerate services

### Fix
- **spec:** fix spec files

### Docs
- update CHANGELOG.md for v0.31.1 release


<a name="v0.31.0"></a>
## [v0.31.0] - 2022-11-08

### Chore
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.35
- **spec:** update spec for AccelByte Cloud 3.35

### Docs
- fix create oauth client link in getting started doc
- update CHANGELOG.md for v0.30.0 release


<a name="v0.30.0"></a>
## [v0.30.0] - 2022-10-25

### Chore
- regenerate platform and social to support export file
- **go:** move out the custom transport runtime to go sdk core and add byte consumer
- **integration-tests:** add skip when failing to claim server
- **sdk:** add utils and custom transport to support export file
- **sdk:** refactor converted file utils
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.34
- **spec:** update spec for AccelByte Cloud 3.34
- **test:** add integration test for export store
- **test:** adjust file test on platform and social
- **test:** refactor export import test in social and platform service

### Docs
- update CHANGELOG.md for v0.30.0 release

### Fix
- **auth:** remove global var in token repo implementation
- **integration-tests:** fix token repo usage in integration tests


<a name="v0.29.0"></a>
## [v0.29.0] - 2022-10-11

### Chore
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.33
- **spec:** update spec for AccelByte Cloud 3.33

### Docs
- doc folder adjustments
- update CHANGELOG.md for v0.29.0 release
- **operations:** adjust the broken links
- **operations:** regenerate and delete index suffix
- **readme:** use the default config and token implementation


<a name="v0.28.0"></a>
## [v0.28.0] - 2022-09-28

### Chore
- **makefile:** add docker httpbin for test
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.32
- **spec:** update spec for AccelByte Cloud 3.32
- **test:** add utils to read in chunks and fix port for core test
- **test:** delete the game current player params from session browser
- **test:** use 1gb file streamed by chunks
- **test:** use localhost httpbin

### Docs
- update CHANGELOG.md for v0.28.0 release


<a name="v0.27.1"></a>
## [v0.27.1] - 2023-04-03

### Chore

- Add `GetHeaders` func in `utils.ABResponse` for forward compatibility with openapi runtime library

<a name="v0.27.0"></a>
## [v0.27.0] - 2022-09-12

### Chore
- adjust the params from required to optional in samples and tests
- **cli:** regenerate lobby cli
- **docs:** add generated common uses cases doc
- **samples:** delete iam go sdk
- **samples:** refactor the code
- **samples:** synchronize the service name after converting to use go sdk local directory
- **samples:** use default config and token repository implementation
- **samples:** use go sdk local directory
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.31
- **spec:** update spec for AccelByte Cloud 3.31
- **test:** add random seed for username
- **test:** run the test in sequence due to 403 error when delete user
- **tests:** add markers for codegen to pick up
- **tests:** refactor and replace deprecated method

### Docs
- update CHANGELOG.md for v0.27.0 release

### Fix
- **cli:** failed to validate the additional properties
- **sdk:** allow to have an empty secret id
- **ws:** remove the hardcode of connection utils


<a name="v0.26.0"></a>
## [v0.26.0] - 2022-08-29

### Chore
- **core:** use interface instead of directly using OauthmodelTokenResponseV3
- **core:** write an error to login first
- **makefile:** exclude justice codegen sdk path
- **samples:** delete the data after certain time
- **samples:** delete unnecessary codes
- **samples:** edit yaml file
- **samples:** remove iam go sdk
- **samples:** refactoring title matchmaking sample apps
- **sdk:** regenerate IAM service for verify token
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.30
- **spec:** update spec for AccelByte Cloud 3.30

### Docs
- update CHANGELOG.md for v0.26.0 release

### Breaking Changes:
There is a commit to **use interface instead of directly using OauthmodelTokenResponseV3**. The example is in the chore commit:

#### Chore:
- **samples:** use default token implementation instead
- **test:** use default token implementation instead

### Feat
- **core:** add the default config and token repository implementation
- **test:** add default config and token repository

### Fix
- **makefile:** exclude path


<a name="v0.25.0"></a>
## [v0.25.0] - 2022-08-15

### Chore
- **makefile:** review samples target
- **sdk:** add return statements for error string
- **sdk:** migrate wrappers in auth to use the operation with suffix short
- **sdk:** print error string
- **sdk:** regenerate by adding comment for client operation short
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.29 (again)
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for AccelByte Cloud 3.29
- **spec:** update spec for AccelByte Cloud 3.29 (again)
- **spec:** update spec for AccelByte Cloud 3.29
- **test:** add cli cookie value

### CI
- updated mock server path

### Docs
- remove references to Justice and replaced it with AccelByte Cloud
- update CHANGELOG.md for v0.25.0 release (again)
- update CHANGELOG.md for v0.25.0 release

### Fix
- **makefile:** build samples folder only
- **test:** core - enable data race detector
- **test:** http retry - set big file to 100 mb for now
- **test:** refresh token - data race
- **sdk:** regenerate to use json marshall instead of MarshalBinary

### Test
- **qosm:** add integration test for QoSM
- **seasonpass:** add integration test for seasonpass


<a name="v0.24.0"></a>
## [v0.24.0] - 2022-08-02

### Chore
- **sdk:** clean up code
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for justice 3.29
- **spec:** update spec files for justice 3.28
- **test:** linter and code

### Docs
- update CHANGELOG.md for v0.24.0 release
- **samples:** add oidc web README.md

### Feat
- **samples:** oidc web
- **sdk:** add a wrapper for login platform
- **test:** add helper for phantauth
- **test:** integrating with phantauth oidc connect

### Fix
- **samples:** trim the newline suffix for cli
- **sdk:** user agent reduntdant + data race
- **test:** add a returned value for cloudsave integration
- **test:** remove parallel test for 403 error
- **test:** outdated start time


<a name="v0.23.0"></a>
## [v0.23.0] - 2022-07-19

### Chore
- **docs:** update the readme for refresh token
- **sdk:** move the configuration of the auto refresh
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for justice 3.27
- **spec:** update spec files for justice 3.27
- **test:** add the token issued time
- **test:** change the endpoint for bans service
- **test:** with a benchmark

### Docs
- update CHANGELOG.md for v0.23.0 release

### Breaking Changes:
There is a new method (`TokenIssuedTimeUTC`) inside the token repository interface and the example is in the fix commit:
- **samples:** token repository interface and linter

### Fix
- **samples:** add the goroutines for the refresh token
- **samples:** the data race with the mutex
- **sdk:** add a time sleep and a break inside the scheduler
- **sdk:** add the sync once in the refresh token interface
- **sdk:** fix the warning data race
- **sdk:** use the refresh token scheduler


<a name="v0.22.0"></a>
## [v0.22.0] - 2022-07-05

### Chore
- **api:** set default header params
- **api:** regenerate client to add the request header to the param
- **samples:** rename the lowercase typo aws lambda function
- **samples:** update the samples with the aws url function instead of api gateway
- **sdk:** add negation in config
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for justice 3.26
- **sdk:** rename the logger and move the file to utils
- **spec:** update spec files for justice 3.26
- **test:** assert error 404 for game telemetry
- **test:** check if the profile exist in basic service

### CI
- fix permission issue
- **github:** fix checkout problem
- **github:** fix wrong slack channel
- **github:** implement point release

### Docs
- update CHANGELOG.md for v0.22.0 release

### Fix
- **test:** add the custom header in params


<a name="v0.21.0"></a>
## [v0.21.0] - 2022-06-21

### Chore
- fix lint errors
- **api:** regenerate wrapper for supporting refresh token
- **makefile:** simplify mock server launch for testing
- **makefile:** use local go cache folder
- **sdk:** regenerate sdk, cli sample app, cli test, doc index for justice 3.25

### CI
- make lint, build, and test run in parallel
- **github:** add release note input

### Docs
- add refresh token
- update CHANGELOG.md for v0.21.0 release

### Feat
- **core:** add PersistentRoundTripper interface
- **core:** add TrackedReadCloser struct
- **core:** add usage of TrackedReadCloser in Retry.Roundtrip()
- **core:** port over go-openapi unexported structs and functions
- **sdk:** add refresh token
- **test:** add refresh token

### Fix
- **test:** add network host for docker core test


<a name="v0.20.0"></a>
## [v0.20.0] - 2022-06-07

### Chore
- **api:** generate client to implement the missing enum in path parameter
- **api:** regenerate all services for justice 3.24
- **api:** use the constant value instead of magic string
- **cli:** change environment variables name
- **cli:** regenerate all cli for justice 3.24
- **cli:** update the go version to v1.16
- **docs:** update the environment variables name
- **test:** change the grant type in iam integration
- **test:** delete the previous environment variable from the bash script
- **test:** enhance the core test
- **test:** use the constant value instead of magic string
- **sh-unit-tests:** regenerate sh unit tests for justice 3.24
- **spec:** update spec files for justice 3.24

### Docs
- update CHANGELOG.md for v0.20.0 release
- update doc index
- update readme to add the http retry functionality

### Feat
- **auth:** add LoginClient and LoginUser wrappers

### Fix
- implemented missing operation enums
- **auth:** fix missing basic auth on wrapper
- **cli:** change loginClient command to use LoginClient wrapper
- **cli:** fix login command using TokenGrantV3 if clientSecret is present
- **core:** reset body reader for the http retry loop
- **test:** add more backoff time for dsmc integration test


<a name="v0.19.0"></a>
## [v0.19.0] - 2022-05-24

### Chore
- add .DS_Store to gitignore file
- **api:** add log for retrying
- **api:** adjust to one function
- **api:** delete unnecessary method
- **api:** move out the http retry
- **api:** regenerate all services for justice 3.23
- **api:** the example of override the http retry
- **cli:** regenerate all cli for justice 3.23
- **cli:** regenerate all cli remove shorthand parameter
- **lint:** gosimple, return, and delete unnecessary codes
- **sh-unit-tests:** regenerate sh unit tests for justice 3.23
- **spec:** update spec files for justice 3.23
- **test:** merging the disabled test
- **test:** skip the game telemetry update

### Docs
- update CHANGELOG.md for v0.19.0 release
- update doc index

### Feat
- **api:** add http retry
- **api:** enable the custom http retry for developer
- **test:** add mock server test
- **test:** add test for http retry
- **test:** integrating with jenkins

### Fix
- **api:** add cancellation to avoid leaking contexts
- **api:** add http retry for short operation
- **api:** invoke the http client inside the operation
- **api:** modify round tripper for retry exponentials backoff
- **api:** regenerate services with http retry
- **test:** integrating with jenkins
- **test:** add http retry for dsmc claimed server
- **test:** add more time to claim server the dsmc integration test
- **test:** add status code to retry dsmc integration test


<a name="v0.18.1"></a>
## [v0.18.1] - 2022-05-19

### Chore
- **api:** regenerate iam service for the model user base info
- **spec:** patching the model user base info
- **test:** temporarily disable the game telemetry test

### Docs
- update CHANGELOG.md for v0.18.1 release


<a name="v0.18.0"></a>
## [v0.18.0] - 2022-05-10

### Chore
- gitignore tap test results
- **api:** regenerate all services for justice 3.22
- **cli:** regenerate all cli for justice 3.22
- **sh-unit-tests:** regenerate sh unit tests for justice 3.22
- **spec:** update spec files for justice 3.22
- **test:** move cli test shell scripts

### Docs
- update CHANGELOG.md for v0.18.0 release
- update doc index
- **index:** add example column

### Feat
- add type message websocket
- **api:** add multiple auth info
- **cli:** generate lobby websocket and standalone mode
- **sh-unit-tests:** add lobby websocket
- **test:** add lobby ws
- **test:** add unit test for core operation
- **test:** add json response body
- **websocket:** establish connection for mock-server
- **wrapper:** generate lobby message model
- **wrapper:** generate lobby wrapper

### Fix
- **lint:** whitespaces and godox


<a name="v0.17.0"></a>
## [v0.17.0] - 2022-04-26

### Chore
- **api:** encode the cookie value
- **api:** delete the security definition
- **api:** regenerate all services for justice 3.21
- **api:** regenerate all services for new auth info writer
- **api:** update iam service
- **cli:** regenerate all cli for justice 3.21
- **cli:** regenerate all services for new auth info writer
- **cli:** update iam service
- **lint:** adjustment for new auth info writer
- **makefile:** consolidate golang docker image
- **samples:** adjust wrapper usage for new auth info writer
- **sh-unit-tests:** regenerate sh unit tests for justice 3.21
- **spec:** update iam spec
- **spec:** update service iam and game telemetry for cookies
- **spec:** update spec files for justice 3.21
- **test:** add do not edit header
- **test:** adjust all services for new auth info writer
- **test:** apply enum used in group and social service
- **test:** change the constant value
- **test:** refactor unnecessary variables
- **test:** update iam service

### CI
- **nightly:** publish tap report

### Docs
- update CHANGELOG.md for v0.17.0 release
- update doc index
- **readme:**  mention reference docs + fix wording

### Feat
- **api:** add multiple auth info
- **test:** add test for auth info

### Fix
- **api:** adjust the iam token grant for new auth info
- **api:** put the info writer inside the input
- **cli:** add nil info writer for iam token grant and game telemetry
- **cli:** add time sleep to get the response
- **cli:** the docker's url
- **makefile:** test_integration
- **samples:** delete nil parameter
- **test:** add nil info writer for the iam token grant


<a name="v0.16.0"></a>
## [v0.16.0] - 2022-04-12

### Chore
- enable linters
- **api:** regenerate all services for justice 3.20
- **api:** regenerate game-telemetry
- **cli:** regenerate all cli for justice 3.20
- **docs:** add a sample path for README.md
- **docs:** changelog from v0.15.0 to v0.15.1
- **sh-unit-tests:** regenerate sh unit tests for justice 3.20
- **spec:** update spec files for justice 3.20
- **test:** change namespace for dsm controller service
- **wrapper:** add store the token

### CI
- **nightly:** change integration test lock to justice-demo-serversdktest

### Docs
- standardize readme format
- update CHANGELOG.md for v0.16.0 release
- update doc index

### Feat
- **docs:** add operation indexes
- **test:** add game telemetry for get endpoint
- **test:** add game-telemetry update playtime

### Fix
- **cli:** add login for grant type password
- **test:** changing the admin role in group service
- **test:** delete specified end date from event log
- **test:** delete the hardcode values for group configuration


<a name="v0.15.1"></a>
## [v0.15.1] - 2022-04-01

### Chore
- **api:** regenerate all services
- **api:** add the codegen.txt file
- **cli:** regenerate all cli
- **sh-unit-tests:** regenerate sh unit tests
- **spec:** update spec files

### Docs
- update CHANGELOG.md for v0.15.1 release

### Feat
- **test:** add game telemetry

### Fix
- **test:** add function to check availability for global configuration


<a name="v0.15.0"></a>
## [v0.15.0] - 2022-03-29

### Chore
- **api:** regenerate all services
- **api:** delete info baseUrl from factory
- **cli:** regenerate all cli
- **cli:** use the short wrapper
- **lint:** delete rules SA1019 linter staticcheck
- **sh-unit-tests:** regenerate sh unit tests
- **samples:** use the short wrapper
- **spec:** update spec files
- **test:** lint SA1019 for each file
- **test:** migrate to a new namespace
- **test:** move delete email test
- **test:** remove the login log from init function
- **test:** rename and delete double login
- **test:** rename function name
- **test:** use the short wrapper

### Docs
- update CHANGELOG.md for v0.15.0 release
- update README.md

### Feat
- **test:** add more integration tests for how to samples
- **test:** run the test in parallel

### Fix
- **api:** add text/plain consumer for all services
- **api:** change the value of body response log
- **test:** add init login for all tests
- **test:** event log by adding text/plain body response support
- **test:** integrating with jenkins
- **test:** set body value for 503 connection termination error
- **tests:** conflicted unique value
- **tests:** request values


<a name="v0.14.0"></a>
## [v0.14.0] - 2022-03-15

### Chore
- **api:** regenerate all services
- **api:** the basic and bearer security
- **api:** typecheck linter for unused method
- **api:** header transport to the client
- **api:** regenerate after move the custom transport
- **api:** refactor the custom transport, log, and factory
- **cli:** regenerate all cli
- **cli:** response and the config repository for basic security
- **cli:** typecheck linter for unused method
- **sh-unit-tests:** regenerate sh unit tests
- **samples:** govet linter overshadow err
- **samples:** update yaml file and rename for delete user stats lambda function
- **spec:** update spec files

### Docs
- update CHANGELOG.md for v0.14.0 release

### Feat
- **api:** add the log
- **samples:** add delete user stat
- **tests:** add integration tests for how to samples

### Fix
- **cli:** add config repository for basic security schema


<a name="v0.13.0"></a>
## [v0.13.0] - 2022-03-02

### Chore
- **api:** regenerate all services
- **api:** move the app name to the utils
- **cli:** regenerate all cli
- **cli:** add indentation for CLI's JSON response
- **factory:** generate with template
- **sh-unit-tests:** regenerate sh unit tests
- **spec:** update spec files
- **wrapper:** change the year of copyright header
- **wrapper:** delete auth info runtime from parameter for short simplified wrapper

### Docs
- update CHANGELOG.md for v0.13.0 release

### Feat
- **api:** add amazon trace id
- **api:** add information of user agent and app name
- **cli:** add information of app name

### Fix
- **api:** regenerate client with custom config template
- **api:** change the factory with custom config
- **cli:** change into basic authentication and add config repository
- **cli:** add missing operation import
- **wrapper:** change into basic authentication


<a name="v0.12.0"></a>
## [v0.12.0] - 2022-02-15

### Chore
- **api:** regenerate all services
- **cli:** regenerate all cli
- **cli:** delete the whitespace in default value
- **cli:** delete manually written cli
- **cli-test:** update test-result.md for test against mock server
- **cli-test:** delete namespace
- **cli-test:** add XXX comments for workaround basic endpoint
- **cli-test:** add go install sample-apps
- **cli-test:** delete unit test stage in jenkins
- **cli-test:** change folder and adjust the template
- **sh-unit-tests:** regenerate sh unit tests
- **spec:** update spec files
- **titleMM:** update to the latest release SDK

### Docs
- update CHANGELOG.md for v0.12.0 release

### Feat
- **cli-test:** add test in Makefile
- **cli-test:** add Jenkins file nightly
- **cli-test:** add stage of unit test in Jenkinsfile
- **cli-test:** initialization for unit test against mock server

### Fix
- **cli-test:** convert init param name for camel case
- **cli-test:** add HTTP client in CLI for 404 error
- **cli-test:** add missing root command and operations in CLI
- **cli-test:** comment and disable certain Basic CLI for a while
- **cli-test:** unknown flag and missing operations
- **cli-test:** error time parse should follow Unix's epoch time (Go version)
- **cli-test:** add temporary token file
- **cli-test:** the shell script execute directly without symbol
- **cli-test:** add parameter
- **cli-test:** add custom producers and consumers in facade.gotmpl


<a name="v0.11.0"></a>
## [v0.11.0] - 2022-02-02

### Chore
- **cli:** regenerate all cli
- **api:** regenerate all services
- **spec:** update spec files
- **cli:** camel case the operation command and delete short flags
- **cli:** move the init command into the service upper level
- **cli:** add service commands in root.go
- **cli:** delete root command and make operation command public
- **cli:** change package name and add new short flag

### Docs
- update CHANGELOG.md for v0.11.0 release

### Feat
- **cli:** add existsAnyUserActiveEntitlementByItemIds
- **cli:** add publicBulkGetItems
- **cli:** add importAchievements command
- **cli:** add linter configuration file
- **cli:** generate all cli

### Fix
- **cli:** refactor factory name
- **cli:** export RootCmd for leveling


<a name="v0.10.0"></a>
## [v0.10.0] - 2022-01-19

### Chore
- restore deprecated comment for old wrapper
- add deprecated comment for old wrapper
- put the manual code wrapper of oAuth2.0 into auth.go
- delete duplicate wrapper file based on service's tag name

### Docs
- update CHANGELOG.md for v0.10.0 release
- **cli:** update README.md
- **tic-tac-toe:** add template.yaml and event
- **tic-tac-toe:** add README.md
- **titleMM:** add template.yaml and event
- **titleMM:** add README.md

### Feat
- generate wrapper coverage with jinja template

### Fix
- cli method used after synchronize with wrapper name


<a name="v0.9.0"></a>
## [v0.9.0] - 2022-01-05

### Feat
- regenerate all services codegen 6

### Fix
- import operations in gametelemetery client
- go-swagger client response output index


### Breaking Changes:
The client and swagger have been refactored and has breaking change, these are the list:

#### Chore
- update ugc wrapper by rename and removing nr [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/b92c4d597f542dd864c97ff5b5bcd05c2e6f3822)
- update ugc client folder and file name based on new tag [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/b78418922c1e4148e7a1e53aa5cfec16fd3f4902)
- update json of ugc service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/34bfa66ae050996154e1b7379d4982d6cf62563c)

<a name="v0.8.0"></a>
## [v0.8.0] - 2021-12-21
### Chore
- remove templates
- restore the templates with the new one
- update spec files

### Docs
- **samples:** revise aws-lambda-example

### Feat
- add client for lobby chat service
- regenerate all services codegen 5

### Fix
- synchronize the generated client with the new goswagger template
- synchronize wrapper with regenerated services


<a name="v0.7.0"></a>
## [v0.7.0] - 2021-12-7

### Chore
- upgrade to Go 1.16 + retract v1.0.0 [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/28c8f46681dab78061548239abff183f97d7f34f)
- rename tag/group typo for ssoCredential
- rename tag/group typo for sso
- rename tag/group typo for oAuth20Extension
- rename tag/group typo for oAuth20
- rename tag/group typo for roles
- rename tag/group typo for users
- update readme
- consolidate development docker images
- change value to lambda env variable
- add Jenkinsfile
- update README.md
- move sample-apps to samples dir
- adjust sample-apps CloudSave
- move lambda PoC codes to samples dir
- rename main and wrapper folder
- **jenkinsfile:** add commit lint + improve build status
- **makefile:** moved to codegen repositoy
- **spec:** consolidate the specs which were used to generate the sdk
- **samples:** rearrange folders in samples

### CI
- fix build error not causing ci to fail
- consolidate library
- lint source code & mod outdated
- **github:** add jenkins job for github push, pull, and release
- **jenkinsfile:** consolidate jenkins library

### Docs
- improve README setup + remove redundant info
- update README.md
- add CHANGELOG.md
- **license:** add mit license file

### Feat
- add tic-tac-toe sample service
- add presence and thirdParty group to lobby http wrapper
- add memberRequest wrapper to group
- update lobby websocket
- update message type for lobby websocket
- complete wrappers for basic service and adjust sample-apps
- completing wrapper for lobby sdk
- add wrappers for ds log manager service
- add wrapper for DSMC sdk
- generate ds log manager service
- add PublicExistsAnyMyActiveEntitlement wrapper
- add Platform's anonymization wrappers
- add PublicRedeemCode wrapper
- complete wrappers for session browser
- add other wrappers for ugc service
- add wrappers for UGC service
- add leaderboard client factory
- add wrapper for leaderboard sdk
- generate leaderboard sdk
- leaderboard-sdk first commit
- generate UGC service
- regenerate group service
- add matchmaking client factory
- add wrapper for matchmaking sdk
- the complete wrappers for legal service
- generate matchmaking sdk
- add gitignore
- generate legal sdk
- the complete wrapper of CloudSave
- add wrapper for event log service
- add event log client factory
- sample-apps for data deletion and retrieval
- add gdpr service wrapper
- generate eventlog sdk
- add wrapper for achievement service
- add achievement client factory
- generate achievement sdk
- generate gdpr sdk
- title matchmaking policy
- add custom matchmaking endpoint as envar
- add wsHandler
- add sample apps to test matchmaking poc
- wrapper add player to specific session id
- add parameters update feature from dev
- add notification service websocket
- generate session browser sdk
- generate sdk for lobby service
- generate sdk for DSMC service
- add sample-apps for game profile
- add sample-apps slot
- add sample-apps user service (get and update)
- add sample-apps clientServices
- adjust sample-apps wrapper name in getUserRoles, verifyToken, registerUser
- adjust sample-apps getUserRoles parameter

### Fix
- **samples:** tic-tac-toe client app title name
- import on matchmaking sdk by regenerate the sdk
- update generated sdk code
- adjust ResetUserStatItemValue params
- bans Services typo
- update generated sdk code
- session browser client factory
- update sdk with error response consistence
- update dsmc sdk and game session wrapper
- refactor httpClient
- change sample-apps from cobra based to simple io
- main and connectionManager
- remove connection to DS
- delete unused codes
- add validation and exception handler
- change sample-apps directory
- makefile
- add basic service to userService.go
- revert with return type error
- regenerate cloudsave sdk
- change oauthservice to tokenRepository on achievement service struct
- sample-apps
- delete create profile in verify user
- sample-apps go.mod
- regenerate to import operations package
- method and parameter for DeleteGroupConfigurationV1
- leaderboard swagger
- adjust wrappers of group service
- add wrappers for the new endpoints
- swagger spec and regenerate codegen
- **lint:** exclude directive
- **lint:** enable lint in jenkins file
- **lint:** sample-apps redundant break statement
- **lint:** unused deadcode
- **lint:** print style function static check
- **lint:** ineffectual assignment to err ineffassign
- **lint:** title MM
- **lint:** title MM's test client
- **lint:** sample-apps ineffectual assignment to err
- **sample-apps:** adjust to new group sdk
- **sample-apps:** adjust to new cloudsave sdk
- **sample-apps:** delete unused function for handling lobby ws message
- **sample-apps:** adjust to new basic sdk
- **sample-apps:** adjust sample-apps to the new sdk
- **sample-apps:** adjust to new lobby http sdk
- **spec:** update spec
- **spec:** update spec

### Refactor
- rename function name
- **sample-apps:** simplify messageHandler with existing parser function


### Breaking Changes:
The wrapper have been refactored and has breaking change, these are the list:

#### Refactor
- session browser sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/ff287d280f17bca4bc65eb44b086a3f4f6e63894)
- social sdk wrapper and sample-apps [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/bcaaa1d8937d78a1095e5529bf87e48756f6109d)
- lobby http sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/04293c902165b02b1a1288b72404c4b73b181319)
- platform sdk wrapper and sample-apps [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/22a772af6736abcf73be604e2d156452e2b2cad0)
- matchmaking sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/25191850c5dd755278b258a65c3ed0764a28f6d6)
- group sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/87c4f15acfae111481f366f607371d6c73e4e18c)
- leaderboard sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/52b569a2e7450274e959fb862b54114895cc3ffd)
- event log sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/17aec4c47905d76687969f41a9e4f8cebd81096d)
- ds log manager sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/171db9291c850f65535dce6cffeff8f6c9a1f076)
- gdpr sdk wrapper and sample apps [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/9d9495252e3c35dd3ebacb534dabc9b40ee7807a)
- iam sdk sample-apps of user service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/a20e4af4214a3365aaa51e2d7cadef91bed36865)
- iam sdk wrapper of user service and change param [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/f5a4a9993430d1b81a52017d65ede69d5b56e441)
- iam sdk wrapper of user service and delete unused service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/2c346cf2a2684eebeb53343a294d14465344dd71)
- iam sdk wrapper of user service and rename [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/3c6b5cdf5dfe42d470c9b4f6e03e75c911b20d83)
- iam sdk wrapper of oauth 2.0 service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/82d274a813a908e18e79c3a797ff109e5b96495b)
- iam sdk wrapper of oauth 2.0 ext service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/e824595e727c1d240b804fd46b60009635280daf)
- iam sdk wrapper of third party cred service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/5aa056749892babfb14336edf80f6fffac18e3cf)
- iam sdk wrapper of sso service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/e1d02d2d150f7de072c71884d3b55997c7fd7c61)
- iam sdk wrapper of sso SAML 2.0 service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/e9da59099d1c0707c479e4c3060681b86b109839)
- iam sdk wrapper of sso credentials service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/e849623808b8ea1d71c2d9e821d783849da9f5f6)
- iam sdk wrapper of role service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/707bf2d0583c23b85f1fcfda36428cb06ee2a960)
- iam sdk wrapper of clients services [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/716fa25fd3d1bbd55ed8e50db5f3c3c019757d4e)
- iam sdk wrapper of ban service [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/6e83b6d7c0d1aa10fecd26c384467dce744f4b2f)
- legal sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/89cf75a16fcca1f44bc9b0d656d8e0c7275d9b88)
- cloudsave sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/8cb0f4643bfc991b703a65c4e4e667d0bdb02c2f)
- dsmc sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/9fe923fcf362a1365f7e054d41a749e7ad513300)
- achievement sdk wrapper [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/031376263f9594c8250ba82d519301b299cb049e)
- ugc sdk [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/3634041277f71e386bd9d9b40753b26a6231dfb8)
- basic SDK [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/34af209b822e5795ba42aed5303e3354f7ecf216)
- achievement service struct [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/6de9743ef164d5d9d7d22f3e6d22010221c0f83c)

#### Fix
- adjust wrappers to the new generated code [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/744b1936b10446af7488d88304589b30ca778525)
- adjust wrappers to the new generated code [(link)](https://github.com/AccelByte/accelbyte-go-sdk/commit/8c4fbf918c994d5dd036a201c0aa9f9af48a6711)


<a name="v0.6.1"></a>
## [v0.6.1] - 2021-09-23
### Fix
- add return type error


<a name="v0.6.0"></a>
## [v0.6.0] - 2021-09-23
### Chore
- change the env variable's value


<a name="v0.5.0"></a>
## [v0.5.0] - 2021-09-22
### Feat
- add test-client for title service matchmaking ([#21](https://github.com/AccelByte/accelbyte-go-sdk/issues/21))
- poc title matchmaking ([#20](https://github.com/AccelByte/accelbyte-go-sdk/issues/20))


<a name="v0.4.0"></a>
## [v0.4.0] - 2021-09-10
### Chore
- update README.md ([#15](https://github.com/AccelByte/accelbyte-go-sdk/issues/15))

### Feat
- update dsmc ([#19](https://github.com/AccelByte/accelbyte-go-sdk/issues/19))
- wrapper add player to a specific session ([#18](https://github.com/AccelByte/accelbyte-go-sdk/issues/18))
- update session browser services, parameter, response error ([#17](https://github.com/AccelByte/accelbyte-go-sdk/issues/17))

### Fix
- sessionbrowser client factory ([#16](https://github.com/AccelByte/accelbyte-go-sdk/issues/16))


<a name="v0.3.0"></a>
## [v0.3.0] - 2021-08-26
### Feat
- add notification service websocket ([#13](https://github.com/AccelByte/accelbyte-go-sdk/issues/13))


<a name="v0.2.0"></a>
## [v0.2.0] - 2021-08-13
### Chore
- delete makefile in every sdk ([#3](https://github.com/AccelByte/accelbyte-go-sdk/issues/3))

### Feat
- session browser service wrapper ([#12](https://github.com/AccelByte/accelbyte-go-sdk/issues/12))
- session browser service sdk ([#11](https://github.com/AccelByte/accelbyte-go-sdk/issues/11))
- dsmc service wrapper update ([#10](https://github.com/AccelByte/accelbyte-go-sdk/issues/10))
- dsmc service update ([#9](https://github.com/AccelByte/accelbyte-go-sdk/issues/9))
- lobby service wrapper update ([#8](https://github.com/AccelByte/accelbyte-go-sdk/issues/8))
- lobby service update ([#7](https://github.com/AccelByte/accelbyte-go-sdk/issues/7))
- social service update ([#6](https://github.com/AccelByte/accelbyte-go-sdk/issues/6))
- iam service wrapper update ([#5](https://github.com/AccelByte/accelbyte-go-sdk/issues/5))
- iam service update ([#4](https://github.com/AccelByte/accelbyte-go-sdk/issues/4))


<a name="v0.1.0"></a>
## v0.1.0 - 2021-07-19
### Fix
- delete go.mod ([#1](https://github.com/AccelByte/accelbyte-go-sdk/issues/1))

[v0.44.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.43.0...v0.44.0
[v0.43.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.42.0...v0.43.0
[v0.42.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.41.0...v0.42.0
[v0.41.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.40.0...v0.41.0
[v0.40.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.39.0...v0.40.0
[v0.39.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.38.0...v0.39.0
[v0.35.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.35.0...v0.35.1
[v0.38.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.37.0...v0.38.0
[v0.37.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.36.1...v0.37.0
[v0.36.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.36.0...v0.36.1
[v0.36.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.35.0...v0.36.0
[v0.35.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.34.0...v0.35.0
[v0.34.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.33.0...v0.34.0
[v0.33.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.32.0...v0.33.0
[v0.32.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.31.2...v0.32.0
[v0.31.2]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.31.1...v0.31.2
[v0.31.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.31.0...v0.31.1
[v0.31.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.30.0...v0.31.0
[v0.30.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.29.0...v0.30.0
[v0.29.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.28.0...v0.29.0
[v0.28.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.27.0...v0.28.0
[v0.27.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.27.0...v0.27.1
[v0.27.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.26.0...v0.27.0
[v0.26.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.25.0...v0.26.0
[v0.25.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.24.0...v0.25.0
[v0.24.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.23.0...v0.24.0
[v0.23.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.22.0...v0.23.0
[v0.22.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.21.0...v0.22.0
[v0.21.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.20.0...v0.21.0
[v0.20.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.19.0...v0.20.0
[v0.19.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.18.1...v0.19.0
[v0.18.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.18.0...v0.18.1
[v0.18.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.17.0...v0.18.0
[v0.17.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.16.0...v0.17.0
[v0.16.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.15.1...v0.16.0
[v0.15.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.15.0...v0.15.1
[v0.15.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.14.0...v0.15.0
[v0.14.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.13.0...v0.14.0
[v0.13.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.12.0...v0.13.0
[v0.12.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.11.0...v0.12.0
[v0.11.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.10.0...v0.11.0
[v0.10.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.9.0...v0.10.0
[v0.9.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.8.0...v0.9.0
[v0.8.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.7.0...v0.8.0
[v0.7.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.6.1...v0.7.0
[v0.6.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.6.0...v0.6.1
[v0.6.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.1.0...v0.2.0