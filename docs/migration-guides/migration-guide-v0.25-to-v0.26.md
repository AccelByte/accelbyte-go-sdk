<a name="v0.26.0"></a>
## [v0.26.0] - 2022-08-30

### BREAKING CHANGE
```
/*
`Store` method's parameter has changed in `TokenRepository` interface.

Before: `Store(accessToken iamclientmodels.OauthmodelTokenResponseV3)`
After: `Store(accessToken interface{}) error`

here is the differences implementation
*/
```

```go
// BEFORE BREAKING CHANGE. 
// Using v0.25.0
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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

func main() {
	// prepare the IAM Oauth service
	oauth := &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
		RefreshTokenRepository: &auth.RefreshTokenImpl{ // override the default refresh token. For example, enable the AutoRefresh functionality or change RefreshRate
			RefreshRate: 0.5,
			AutoRefresh: true,
		},
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
		Client:          factory.NewIamClient(&configRepo),
		TokenRepository: &tokenRepo,
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

```go
// AFTER BREAKING CHANGE
// v0.26.0

package main

import (
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

func main() {
	// prepare the IAM Oauth service
	oauth := &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
		RefreshTokenRepository: &auth.RefreshTokenImpl{ // override the default refresh token. For example, enable the AutoRefresh functionality or change RefreshRate
			RefreshRate: 0.5,
			AutoRefresh: true,
		},
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
		Client:          factory.NewIamClient(&configRepo),
		TokenRepository: &tokenRepo,
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
	token iamclientmodels.OauthmodelTokenResponseV3
)

func (t *TokenRepositoryImpl) Store(accessToken interface{}) error {
	timeNow := time.Now().UTC()
	t.IssuedTime = &timeNow

	convertedToken, err := repository.ConvertInterfaceToModel(accessToken, &token) // we recommend to use v0.30.0 or latest. see `migration-guide-v0.29-to-v0.30.md` file in this folder 
	if err != nil {
		return err
	}
	t.accessToken = convertedToken

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

[v0.26.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.25.0...v0.26.0
