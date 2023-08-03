# Getting Started Guide for AccelByte Golang Extend SDK

This guide will show you how to create an application which uses Golang Extend SDK from scratch.

## Prerequisites

* AccelByte Gaming Services (demo environment):
    * Use https://demo.accelbyte.io for `AB_BASE_URL` environment variable.
    * [Create an Oauth Client](https://docs-old.accelbyte.io/guides/access/iam-client.html#create-a-client) with client type `Confidential`.
        * Use `Client ID` value for `AB_CLIENT_ID` environment variable.
        * Use `Client Secret` value for `AB_CLIENT_SECRET` environment variable.
* Golang 1.16 or newer
* Golang IDE e.g. Goland, Visual Studio Code

## Tutorial

### 1. Create a Golang Project

Create a folder and use `go mod init` to create a Golang project.

```bash
$ mkdir getting-started
$ cd getting-started/
$ go mod init golang-application
```

### 2. Add to Project Dependency

Add the required configuration in `go.mod`. 

Replace `{VERSION}` with a specific release version tag from [releases](https://github.com/AccelByte/accelbyte-go-sdk/releases) and run `go mod tidy`.

It is recommended to use the matching Golang Extend SDK version for the given AccelByte Gaming Services version.

```go
module golang-application

go 1.18

require (
    github.com/AccelByte/accelbyte-go-sdk {VERSION}
)
```

### 3. Use in 

Create an SDK instance, login using client credentials, and call an AccelByte Gaming Services API in `main.go`.

Create file `main.go` inside the project directory

The `ConfigRepositoryImpl` gets its values from `AB_BASE_URL`, `AB_CLIENT_ID`, and `AB_CLIENT_SECRET` environment variables.

```go
package main

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
)

var (
	// use the default config and token implementation
	configRepo = *auth.DefaultConfigRepositoryImpl()
	tokenRepo  = *auth.DefaultTokenRepositoryImpl()
)

func main() {
	// prepare the IAM Oauth service
	oauth := &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
	}
	clientId := oauth.ConfigRepository.GetClientId()
	clientSecret := oauth.ConfigRepository.GetClientSecret()

	// call the endpoint tokenGrantV3Short through the wrapper 'LoginClient'
	err := oauth.LoginClient(&clientId, &clientSecret)
	if err != nil {
		logrus.Error("failed login client")
	} else {
		logrus.Info("successful login")
	}

	// get the token
	token, _ := oauth.TokenRepository.GetToken()
	logrus.Infof("print %v", *token.AccessToken)

	// prepare the IAM's Oauth 2.0 Extension service
	oAuth20ExtensionService := &iam.OAuth20ExtensionService{
		Client:          factory.NewIamClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	input := &o_auth2_0_extension.GetCountryLocationV3Params{}

	// call an AccelByte Gaming Services API e.g. GetCountryLocationV3
	ok, errLoc := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	if errLoc != nil {
		logrus.Error(errLoc.Error())
	} else {
		logrus.Infof("Country name: %s", *ok.CountryName)
	}
}
```

### 4. Run the Code

Set the required environment variables and run the code using `go run main.go`.

```bash
$ export AB_BASE_URL="https://demo.accelbyte.io"              # AccelByte Gaming Services Base URL e.g. demo environment
$ export AB_CLIENT_ID="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"      # AccelByte Gaming Services OAuth Client ID
$ export AB_CLIENT_SECRET="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"  # AccelByte Gaming Services OAuth Client Secret
$ go run main.go
```

## Follow Up Resources

* Golang Extend SDK [README.md](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/README.md)
* Reference documentation on AccelByte Gaming Services endpoints, their corresponding Golang Extend SDK API, and short examples on how to use them is available in [docs](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/docs)
* Sample apps which show some practical usage of Golang Extend SDK are available in [samples](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/samples)

## FAQ

### 1. Can I customize the default token repository and/or the default config repository?

Yes. You just need to implement the interface accordingly.

### 2. How can I use more advanced features of Golang Extend SDK e.g. HTTP retry and automatic token refresh? 

See [README.md](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/README.md)
