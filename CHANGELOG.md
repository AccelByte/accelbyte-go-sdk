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