// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"errors"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type OAuth20ExtensionService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

// Deprecated: Use UserAuthenticationV3Short instead
func (o *OAuth20ExtensionService) UserAuthenticationV3(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, err := o.Client.OAuth20Extension.UserAuthenticationV3(input, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}
	parsedURL, err := url.Parse(ok.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code := query["code"][0]

	return code, nil
}

// Deprecated: Use GetCountryLocationV3Short instead
func (o *OAuth20ExtensionService) GetCountryLocationV3(input *o_auth2_0_extension.GetCountryLocationV3Params) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20Extension.GetCountryLocationV3(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use LogoutShort instead
func (o *OAuth20ExtensionService) Logout(input *o_auth2_0_extension.LogoutParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.Logout(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PlatformAuthenticationV3Short instead
func (o *OAuth20ExtensionService) PlatformAuthenticationV3(input *o_auth2_0_extension.PlatformAuthenticationV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.PlatformAuthenticationV3(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuth20ExtensionService) UserAuthenticationV3Short(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, err := o.Client.OAuth20Extension.UserAuthenticationV3(input, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}
	parsedURL, err := url.Parse(ok.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code := query["code"][0]

	return code, nil
}

func (o *OAuth20ExtensionService) GetCountryLocationV3Short(input *o_auth2_0_extension.GetCountryLocationV3Params) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20Extension.GetCountryLocationV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuth20ExtensionService) LogoutShort(input *o_auth2_0_extension.LogoutParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.LogoutShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuth20ExtensionService) PlatformAuthenticationV3Short(input *o_auth2_0_extension.PlatformAuthenticationV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.PlatformAuthenticationV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
