# AccelByte Go SDK

## Setup

Add the following to your project's `go.mod`:
```
require (
	github.com/AccelByte/accelbyte-go-sdk v0.6.1
)
```

## Usage

### Interacting with Justice HTTP Endpoints

We will use `iam-sdk` as an example.

The `iam-sdk` contains 2 directories:
 - `iamclient` contains the logic to make requests. 
 - `iamclientmodels` contains the models such as request and response models.

Client must create a struct that implement following interface:

- `ConfigRepository` is responsible to store configuration.
- `TokenRepository` is responsible to store access token.

For more details, see [samples/cli/pkg/repository](samples/cli/pkg/repository) for more details.

Depending on the HTTP endpoint authorization, there are a few ways to make HTTP requests:

- No authorization

  No authorization is used for public endpoint, e.g. `/iam/v3/public/namespaces/{namespace}/users` 

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

### Interacting with Justice WebSocket Endpoints

To interact with Justice services which use WebSocket endpoints e.g. Justice Lobby Service, client should implement `connectionutils/ConnectionManager` interface. 

`ConnectionManager` manages WebSocket connection that save, get and close the WebSocket connection. In other words, client should maintain WebSocket connection using `ConnectionManager`. For reference, see [samples/cli/pkg/utils/connectionManager.go](samples/cli/pkg/utils/connectionManager.go).

For a working example, see [samples/cli/main.go](samples/cli/main.go). To test this, you can start sample-apps in websocket mode.

```
sample-apps --wsMode
```
When using websocket mode sample-apps will stand by and continue listen to websocket connection. 

**Please note that before entering websocket mode, you must login first.**
