// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

	// call an AccelByte Cloud API e.g. GetCountryLocationV3
	ok, errLoc := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	if errLoc != nil {
		logrus.Error(errLoc.Error())
	} else {
		logrus.Infof("Country name: %s", *ok.CountryName)
	}
}
