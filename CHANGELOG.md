<a name="unreleased"></a>
## [Unreleased]

### Chore
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

### Ci
- fix build error not causing ci to fail
- consolidate library
- lint source code & mod outdated
- **github:** add jenkins job for github push, pull, and release
- **jenkinsfile:** consolidate jenkins library

### Docs
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


[Unreleased]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.6.1...HEAD
[v0.6.1]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.6.0...v0.6.1
[v0.6.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.1.0...v0.2.0
