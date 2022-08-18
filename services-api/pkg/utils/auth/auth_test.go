// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

var (
	tokenRepo  = *auth.DefaultTokenRepositoryImpl()
	configRepo = *auth.DefaultConfigRepositoryImpl()
)

func TestDefaultAuth(t *testing.T) {
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
		t.Fatal("failed login client")
	} else {
		t.Log("successful login")
	}

	// get the token
	token, _ = oauth.TokenRepository.GetToken()
	t.Logf("print %v", *token.AccessToken)

	// call an AccelByte Cloud API e.g. GetCountryLocationV3
	oAuth20ExtensionService := &iam.OAuth20ExtensionService{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo, // remove
		TokenRepository:  &tokenRepo,
	}
	input := &o_auth2_0_extension.GetCountryLocationV3Params{}
	ok, _ := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	if err != nil {
		t.Fatal(err.Error())
	} else {
		t.Logf("Country name: %s", *ok.CountryName)
	}
}
