# AccelByte Go SDK

A software development kit (SDK) for interacting with AccelByte services written in Golang.

This SDK was generated from OpenAPI specification documents included in the [spec](spec) directory.

## Setup

This SDK requires `go 1.16` or newer version to be installed.

### Import SDK Project

Add the following to your project's `go.mod`:

```go
require (
    github.com/AccelByte/accelbyte-go-sdk {VERSION}
)
```

Replace `{VERSION}` with a specific release version tag. When starting a new project, 
using the latest release version is recommended.

### Environment Variables

The following environment variables need to be set when using `DefaultConfigRepository`.

| Name               | Required                                           | Example                          |
|--------------------|----------------------------------------------------|----------------------------------|
| `JUSTICE_BASE_URL` | Yes                                                | https://demo.accelbyte.io        |
| `APP_CLIENT_ID`    | Yes                                                | abcdef0123456789abcdef0123456789 |
| `APP_CLIENT_SECRET`| Yes, but only if you use a private `APP_CLIENT_ID` | ab#c,d)ef(ab#c,d)ef(ab#c,d)ef(ab |

## Usage

### Instantiation

```go
// example for OAuth20 in IAM service
oAuth20Service := iam.OAuth20Service{
    Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}), 
    ConfigRepository: &repository.ConfigRepositoryImpl{}, 
    TokenRepository:  &repository.TokenRepositoryImpl{},
}
```

## Login

### Login Using Username and Password

```go
err := oAuth20Service.Login(username, password)
if err != nil {
    return err
}
```

### Login Using OAuth Client (Public or Private)

```go
err := oAuth20Service.GrantTokenCredentials("", "")
if err != nil {
    return err
}
```

### Interacting with Justice HTTP Endpoints

As an example, we will get current user profile info using [getMyProfileInfo](https://demo.accelbyte.io/basic/apidocs/#/UserProfile/getMyProfileInfo) endpoint available in [basic](https://demo.accelbyte.io/basic/apidocs) service.

```go
// Instantiate UserProfile (Basic service) and input model as the global variable
var (
    userProfileService = &basic.UserProfileService{
        Client:          factory.NewBasicClient(&ConfigRepositoryImpl{}), 
        TokenRepository: &TokenRepositoryImpl{},
    }
    input = &user_profile.GetUserProfileInfoParams{
        Namespace: namespace,
    }
)

// Login using username and password
err := oAuth20Service.Login(username, password)
if err != nil {
    return err
}

// Make a call to getMyProfileInfo endpoint through the wrapper
ok, err := userProfileService.GetMyProfileInfoShort(input)
if err != nil {
    return err
}
```
The `basic-sdk` contains 2 directories:
- `basicclient` contains the logic to make requests.
- `basicclientmodels` contains the models such as request and response models.

Client must create a struct that implement following interface:

- `ConfigRepository` is responsible to store configuration.
- `TokenRepository` is responsible to store access token.

For more details, see [samples/cli/pkg/repository](samples/cli/pkg/repository) for more details.

### Interacting with Justice WebSocket Endpoints

To interact with Justice services which use WebSocket endpoints e.g. Justice Lobby Service, client should implement `connectionutils/ConnectionManager` interface. 

`ConnectionManager` manages WebSocket connection that save, get and close the WebSocket connection. In other words, client should maintain WebSocket connection using `ConnectionManager`. For reference, see [samples/cli/pkg/utils/connectionManager.go](samples/cli/pkg/utils/connectionManager.go).

## Logout
```go
err := oAuth20Service.Logout()
if err != nil {
    return err
}
```
## Samples

Sample apps are available in the [samples](samples) directory

## Documentation

For documentation about AccelByte services and SDK, see [docs.accelbyte.io](https://docs.accelbyte.io/)
