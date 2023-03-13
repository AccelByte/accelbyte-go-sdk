# AccelByte Go SDK

A software development kit (SDK) for interacting with AccelByte services written in Golang.

This SDK was generated from OpenAPI specification documents included in the [spec](spec) directory.

## Setup

This SDK requires `go 1.18` or newer version to be installed.

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

The following environment variables need to be set when using `ConfigRepository`.

| Name               | Required                                               | Example                          |
|--------------------|--------------------------------------------------------|----------------------------------|
| `AB_BASE_URL`      | Yes                                                    | https://demo.accelbyte.io        |
| `AB_CLIENT_ID`     | Yes                                                    | abcdef0123456789abcdef0123456789 |
| `AB_CLIENT_SECRET` | Yes, but only if you use a confidential `AB_CLIENT_ID` | ab#c,d)ef(ab#c,d)ef(ab#c,d)ef(ab |

## Usage

### Instantiation

```go
// example for OAuth20 in IAM service
oAuth20Service := iam.OAuth20Service{
    Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()), 
    ConfigRepository: auth.DefaultConfigRepositoryImpl(), 
    TokenRepository:  auth.DefaultTokenRepositoryImpl(),
}
```

#### With Custom HTTP retry in the client

Use this to get SDK instance with HTTP retry functionality.

```go
input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3PasswordConstant,
	}
input.RetryPolicy = &utils.Retry{
    Transport: OAuth20Service.Client.Runtime.Transport,
    MaxTries:  utils.MaxTries,
    Backoff:   utils.NewConstantBackoff(0),
    RetryCodes: map[int]bool{
        502: true, // add an error code for bad gateway
    },
}
ok, err := OAuth20Service.TokenGrantV3Short(input) // call the wrapper
```

#### Automatic Token Refresh

The Automatic Token Refresh is invoked by `auth.RefreshTokenScheduler` inside the `login` wrapper with the Default configuration and can be override.
Use the following to get SDK instance with automatic token refresh functionality which is performed before each HTTP request but only if access token is almost expired.

```go
oAuth20Service = &iam.OAuth20Service{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  auth.DefaultTokenRepositoryImpl(),
		RefreshTokenRepository: &auth.RefreshTokenImpl{ // override the default refresh token. For example, enable the AutoRefresh functionality or change RefreshRate
			RefreshRate: 0.5,
			AutoRefresh: true,
		},
	}
```
Use the `repository` to access all functions for refresh token.

#### Local Token Validation
Local token validation is available since version 0.37.0. 
To enable it, import the package
```go
import (
    ...
    "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth/validator"
    ...
)
```
configure `authTokenValidator` struct or use the existing one `NewTokenValidator` with the default `localValidationActive` is false. Invoked them with
```
tokenValidator := validator.NewTokenValidator(authService, time.Hour)
tokenValidator.Initialize()

err = tokenValidator.Validate(accessToken, &requiredPermission, &namespace, nil)
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

### Interacting with AccelByte Gaming Services HTTP Endpoints

As an example, we will get current user profile info using [getMyProfileInfo](https://demo.accelbyte.io/basic/apidocs/#/UserProfile/getMyProfileInfo) endpoint available in [basic](https://demo.accelbyte.io/basic/apidocs) service.

```go
// Instantiate UserProfile (Basic service) and input model as the global variable
var (
    userProfileService = &basic.UserProfileService{
        Client:          factory.NewBasicClient(auth.DefaultConfigRepositoryImpl()), 
        TokenRepository: auth.DefaultTokenRepositoryImpl(),
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

For more details, see [repository](samples/cli/pkg/repository) for the interface and [cli samples](samples/cli/cmd) on how to use it.

### Interacting with AccelByte Gaming Services WebSocket Endpoints

To interact with AccelByte Gaming Services services which use WebSocket endpoints e.g. AccelByte Gaming Services Lobby Service, client should implement `connectionutils/ConnectionManager` interface. 

`ConnectionManager` manages WebSocket connection that save, get and close the WebSocket connection. In other words, client should maintain WebSocket connection using `ConnectionManager`. For reference, see [samples/cli/pkg/utils/connectionManager.go](samples/cli/pkg/utils/connectionManager.go).

### Refresh Token
```go
getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
    if errGetToken != nil {
        // failed to get token
    }
	
hasExpired := repository.HasTokenExpired(*getToken) // use the repository of the sdk to get the available functions
```

## Logout
```go
err := oAuth20Service.Logout()
if err != nil {
    return err
}
```
## Samples

Sample apps are available in the [samples](samples) directory.

## Documentation

Reference about AccelByte service endpoints and their corresponding SDK API is available in [docs/operations](docs/operations) directory.

Sample app documentations are available in the [docs/samples](docs/samples/) directory.

For more information on how to use AccelByte services and SDKs, see [docs.accelbyte.io](https://docs.accelbyte.io/).