// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"fmt"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
)

var (
	// use the default config and token implementation
	configRepo                                    = *auth.DefaultConfigRepositoryImpl()
	tokenRepo                                     = *auth.DefaultTokenRepositoryImpl()
	refreshRepo repository.RefreshTokenRepository = &auth.RefreshTokenImpl{AutoRefresh: false, RefreshRate: 0.01} // Force refresh with shorter time span
)

func main() {
	// prepare the IAM Oauth service
	oauth := &iam.OAuth20Service{
		Client:                 factory.NewIamClient(&configRepo),
		ConfigRepository:       &configRepo,
		TokenRepository:        &tokenRepo,
		RefreshTokenRepository: refreshRepo, // Refresh configured here
	}
	clientId := oauth.ConfigRepository.GetClientId()
	clientSecret := oauth.ConfigRepository.GetClientSecret()

	fmt.Println("This will print every 5 seconds")
	for {
		err := oauth.LoginOrRefreshClient(&clientId, &clientSecret)
		if err != nil {
			fmt.Println("failed login client")
		} else {
			fmt.Println("successful login")
		}

		// get the token
		token, _ := oauth.TokenRepository.GetToken()
		fmt.Printf("print  %v\n", *token.AccessToken) // if refresh token happen this token will get changed

		// prepare the IAM's Oauth 2.0 Extension service
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&configRepo),
			TokenRepository: &tokenRepo,
		}
		input := &o_auth2_0_extension.GetCountryLocationV3Params{}

		// call an AccelByte Gaming Services API e.g. GetCountryLocationV3
		ok, errLoc := oAuth20ExtensionService.GetCountryLocationV3Short(input)
		if errLoc != nil {
			fmt.Println(errLoc.Error())
		} else {
			fmt.Printf("Country name: %s\n", *ok.CountryName)
		}
		time.Sleep(5 * time.Second)
	}

}
