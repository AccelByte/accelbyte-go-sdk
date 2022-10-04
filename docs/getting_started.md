# Getting Started Guide for AccelByte Golang Server SDK

This guide will show you how to create an application which uses Golang Server SDK from scratch.

## Prerequisites

* AccelByte Cloud (demo environment):
    * Use https://demo.accelbyte.io for `AB_BASE_URL` environment variable.
    * [Create an Oauth Client]() with client type `Confidential`.
        * Use `Client ID` value for `AB_CLIENT_ID` environment variable.
        * Use `Client Secret` value for `AB_CLIENT_SECRET` environment variable.
* Golang 1.16 or newer
* Golang IDE e.g. Goland, Visual Studio Code

## Tutorial

### 1. Create a Golang Project

Create a folder and use `go mod init` to create a Golang project.

```bash
$ mkdir myproject
$ cd myproject/
$ go mod init golang-application
```

### 2. Add to Project Dependency

Add the required configuration in `go.mod`. 

Replace `{VERSION}` with a specific release version tag from [releases](https://github.com/AccelByte/accelbyte-golang-sdk/releases) and run `go mod tidy`.

It is recommended to use the matching Golang Server SDK version for the given AccelByte Cloud version.

```go
module golang-application

go 1.16

require (
    github.com/AccelByte/accelbyte-go-sdk {VERSION}
)
```

### 3. Use in 

Create an SDK instance, login using client credentials, and call an AccelByte Cloud API in `main.go`.

Create file `main.go` inside the project directory

The `ConfigRepositoryImpl` gets its values from `AB_BASE_URL`, `AB_CLIENT_ID`, and `AB_CLIENT_SECRET` environment variables.

```golang
package main

import (
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
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

	// call an AccelByte Cloud API e.g. GetCountryLocationV3
	oAuth20ExtensionService := &iam.OAuth20ExtensionService{
		Client:           factory.NewIamClient(&configRepo),
		TokenRepository:  &tokenRepo,
	}
	input := &o_auth2_0_extension.GetCountryLocationV3Params{}
	ok, _ := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	if err != nil {
		logrus.Error(err.Error())
	} else {
		logrus.Infof("Country name: %s", *ok.CountryName)
	}
}

/*
This TokenRepositoryImpl and ConfigRepositoryImpl is a mandatory implementation
before using the SDK. The implementation inside and naming can be adjusted accordingly
*/
type TokenRepositoryImpl struct {
	IssuedTime  *time.Time
	accessToken *iamclientmodels.OauthmodelTokenResponseV3
}

type ConfigRepositoryImpl struct {
	baseUrl      string
	clientId     string
	clientSecret string
}

var (
	tokenRepo = TokenRepositoryImpl{
		accessToken: &iamclientmodels.OauthmodelTokenResponseV3{},
	}
	configRepo = ConfigRepositoryImpl{
		baseUrl:      os.Getenv("AB_BASE_URL"),
		clientId:     os.Getenv("AB_CLIENT_ID"),
		clientSecret: os.Getenv("AB_CLIENT_SECRET"),
	}
)

func (t *TokenRepositoryImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	timeNow := time.Now().UTC()
	t.IssuedTime = &timeNow
	t.accessToken = &accessToken

	return nil
}

func (t *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	if t.accessToken == nil {
		return nil, fmt.Errorf("empty access Token")
	}

	return t.accessToken, nil
}

func (t *TokenRepositoryImpl) RemoveToken() error {
	t.IssuedTime = nil
	t.accessToken = nil

	return nil
}

func (t *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	return *t.IssuedTime
}

func (c *ConfigRepositoryImpl) GetClientId() string {
	return c.clientId
}

func (c *ConfigRepositoryImpl) GetClientSecret() string {
	return c.clientSecret
}

func (c *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return c.baseUrl
}

```

### 4. Run the Code

Set the required environment variables and run the code using `go run main.go`.

```bash
$ export AB_BASE_URL="https://demo.accelbyte.io"              # AccelByte Cloud Base URL e.g. demo environment
$ export AB_CLIENT_ID="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"      # AccelByte Cloud OAuth Client ID
$ export AB_CLIENT_SECRET="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"  # AccelByte Cloud OAuth Client Secret
$ go run main.go
```

## Follow Up Resources

* Golang Server SDK [README.md](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/README.md)
* Reference documentation on AccelByte Cloud endpoints, their corresponding Golang Server SDK API, and short examples on how to use them is available in [docs](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/docs)
* Sample apps which show some practical usage of Golang Server SDK are available in [samples](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/samples)

## FAQ

### 1. Can I customize the default token repository and/or the default config repository?

Yes. You just need to implement the interface accordingly.

### 2. How can I use more advanced features of Golang Server SDK e.g. HTTP retry and automatic token refresh? 

See [README.md](https://github.com/AccelByte/accelbyte-go-sdk/blob/main/README.md)
