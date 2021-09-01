# AccelByte Codegen SDK #

This repository contains AccelByte platform SDKs generated from OpenAPI specs. 
Golang SDKs generated using `go-swagger`.

## Generate SDK from OpenAPI spec ##

### Golang SDK ###


- Go to one of directory in `accelbyte-go-sdk`
- Execute `make gen-client S=<service-name>`, this command will lookup OpenAPI file `<service-name>-sdk/<service-name>-swagger.json` and template located in `<service-name>-sdk/pkg/utils/swagger-templates/client` so make sure both files are exist.

## Using the SDK ##

### Golang SDK ###
Following list is the available SDKs:

- Basic SDK

Basic SDK is SDK to communicate with Basic service. Basic service responsible to manage user profile, namespace, language.

- IAM SDK

IAM SDK able to communicate with IAM service. IAM service responsible to authenticate and authorize users, manage users, manage roles and permission, manage clients.

- Platform SDK

Platform service is responsible to manage commerce like items, stores, entitlement, etc.

- Cloudsave SDK

Cloudsave SDK is SDK to communicate with cloudsave service. Cloudsave service handle read and write player records and game records.

- Lobby SDK

Lobby SDK is SDK to communicate with lobby service. Lobby service is service responsible to manage lobby related service like, friends management, chat, notification, etc. Currently, only http rest API covered in this SDK.

- Group SDK

Group SDK is responsible to have the group to gather players into one place to interact with each other.

- Social SDK

Social SDK is responsible for managing communication with social service. Social service functionality includes game profile management, cloud storage, and dynamic statistic. 

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

To use this SDK, client must create a struct that implement following interface:

- `ConfigRepository`: A repository that responsible to store configuration.
- `TokenRepository`: A repository that responsible to store access token.

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

#### Lobby Websocket SDK ####

Justice SDK includes websocket SDK used to connect client to justice lobby service. Following is the list of features that using websocket as communication:

- Friend

- Party

- Chat

To use websocket SDK client should implements `connectionutils/ConnectionManager` interface. `ConnectionManager` manages websocket connection that save, get and close the websocket connection. In other words, client should maintain websocket connection using `ConnectionManager`. 
To use websocket SDK, connection should keep alive.

