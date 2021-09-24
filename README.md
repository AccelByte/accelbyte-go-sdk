# Justice Codegen SDK #

## Using the SDK ##

### Golang SDK ###

Currently there are 5 available SDK:

- Basic SDK

Basic SDK is SDK to communicate with Basic service. Basic service responsible to manage user profile, namespace, language.

- IAM SDK

IAM SDK able to communicate with IAM service. IAM service responsible to authenticate and authorize users, manage users, manage roles and permission, manage clients.

- Platfrom SDK

Platform service is responsible to manage commerce like items, stores, entitlement, etc.

- Cloudsave SDK

Cloudsave SDK is SDK to communicate with cloudsave service. Cloudsave service handle read and write player records and game records.

- Lobby SDK

Lobby SDK is SDK to communicate with lobby service. Lobby service is service responsible to manage lobby related service like, friends management, chat, notification, etc. Currently, only http rest API covered in this SDK.

In this docs, we will use `iam-sdk` for sample usage.

The SDK contains 2 directory, `iamclient` and `iamclientmodels`. `iamclient` contains the logic to make request and `iamclientmodels` contains the models like request and response models.

To include the SDK to your project, add following in your `go.mod`:
```
replace (
	github.com/AccelByte/accelbyte-go-sdk/services-api => path/to/justice-go-sdk
	github.com/AccelByte/accelbyte-go-sdk/basic-sdk => path/to/basic-sdk
	github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk => path/to/cloudsave-sdk
	github.com/AccelByte/accelbyte-go-sdk/iam-sdk => path/to/iam-sdk
	github.com/AccelByte/accelbyte-go-sdk/lobby-sdk => path/to/lobby-sdk
	github.com/AccelByte/accelbyte-go-sdk/platform-sdk => path/to/platform-sdk
)

require (
	github.com/AccelByte/accelbyte-go-sdk/services-api v1.0.0
)
```
Note: please refer to `sample-apps/go.mod`

To use this SDK, client must create a struct that implement following interface:

- `ConfigRepository`: A repository that responsible to store configuration.
- `TokenRepository`: A repository that responsible to store access token.

Please refer to `sample-apps/pkg/repository`

There are several authorization methods to make request:

- No authorization

No authorization is used for public endpoint, like `/iam/v3/public/namespaces/{namespace}/users`, Following is sample code to create request without authorization.
```go
IamService.Users.PublicCreateUserV3(param, nil)
```

- Basic authorization

```go
IamService.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientId, clientSecret))
```

- Bearer token authorization

```go
IamService.Users.AdminAddUserRoleV3(param, client.BearerToken(accessToken))
```

Example usage of SDK usage could be found on `sample-apps/pkg/service`.

#### Lobby Websocket SDK ####

Justice SDK includes websocket SDK used to connect client to justice lobby service. Following is the list of features that using websocket as communication:

- Friend

- Party

- Chat

To use websocket SDK client should implements `connectionutils/ConnectionManager` interface. `ConnectionManager` manages websocket connection that save, get and close the websocket connection. In other words, client should maintain websocket connection using `ConnectionManager`. For reference, please refer to file in `sample-apps/utils/connectionManager.go`.

To use websocket SDK, connection should keep alive. For sample usage, please see `sample-apps/main.go`. To test this, you can start sample-apps using websocket mode.

```
sample-apps --wsMode
```
When using websocket mode sample-apps will standby and continue listen to websocket connection. **Please note that before entering websocket mode, you should login first.**

## Using the sample-apps ##

### Golang sample apps ###

There is sample apps in `justice-go-sdk/sample-apps`, following is how to use the apps:

- Go to `justice-go-sdk/sample-apps` execute `go install github.com/AccelByte/sample-apps`

- To use the sample apps, simply execute `sample-apps <command> [options]` for available command `sample-apps -h`, for available options `sample-apps <command> -h`

Example:
```shell
## Register User
sample-apps registerUser -b 1995-03-01 -c ID -e ridwan.taufik+cli+3@accelbyte.net -n apiTestRidwanTaufikCli3 --namespace omega -p Password1

## Register Admin User
sample-apps registerUserAdmin -b 1995-03-01 -c ID -e ridwan.taufik+cli+adm1@accelbyte.net -n apiTestRidwanTaufikAdm1 --namespace omega -p Password1 -roleId <admin_role_id>
## Note: Admin role ID could be retrieved by user `getUserRoles` command

## Register User Game
sample-apps registerUser -b 1995-03-01 -c ID -e ridwan.taufik+cli+3@accelbyte.net -n apiTestRidwanTaufikCli3 --namespace accelbytetesting -p Password1


## Get User Roles
sample-apps getUserRoles

## Get my profile
sample-apps getMyProfile --namespace omega

## Login
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP
## Note: Please specify clientId and clientSecret in configRepository. Please refer to `sample-apps/pkg/repository`

## Verify Token
sample-apps verifyToken -t 422689 --namespace omega

## Note: Please do login before verify token


## Get Store Items
sample-apps getStoreItem --namespace omega --itemType APP --limit 5 --offset 0

## Entitlements
sample-apps grantEntitlement -u d34a444f173f4ed49e44bd9f22418539 -i 4fee6a17fc05454389d588dd87f46c7f -q 1 --namespace omega
sample-apps getUserEntitlement -u d34a444f173f4ed49e44bd9f22418539 --namespace omega

## Friends
sample-apps addFriends -f '["e5ca182435a84802b4996b6bdbeffa85"]' -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1
sample-apps getFriends -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1

## Game records
sample-apps createGameRecord --key sample-key --namespace accelbytetesting --content '{"key2": "value2"}'
sample-apps getGameRecord --key sample-key --namespace accelbytetesting

## Player records
 sample-apps createPlayerRecord -k sample-player-record -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1 -c '{"key1":"value1"}'
 sample-apps getPlayerRecord -k sample-player-record -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1
## Note: make user ID player regitered on specified namespace

```

- To use websocket SDK, do login and enter websocket mode.

Example:

```shell
## Login using existing user
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP

## Enter ws mode, if successfully connected, menu option will appears and sample-apps will listen for user input.
sample-apps --wsMode
```
