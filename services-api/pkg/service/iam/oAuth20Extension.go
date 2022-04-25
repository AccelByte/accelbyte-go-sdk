// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"errors"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20Extension.GetCountryLocationV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use LogoutShort instead
func (o *OAuth20ExtensionService) Logout(input *o_auth2_0_extension.LogoutParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.Logout(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PlatformAuthenticationV3Short instead
func (o *OAuth20ExtensionService) PlatformAuthenticationV3(input *o_auth2_0_extension.PlatformAuthenticationV3Params) (string, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	ok, err := o.Client.OAuth20Extension.PlatformAuthenticationV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return ok.Location, nil
}

// [{'basic': []}]
func (o *OAuth20ExtensionService) UserAuthenticationV3Short(input *o_auth2_0_extension.UserAuthenticationV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (string, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(nil, o.ConfigRepository, security, "")
	}
	ok, err := o.Client.OAuth20Extension.UserAuthenticationV3Short(input, authInfoWriter)
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

// [{'authorization': []}]
func (o *OAuth20ExtensionService) GetCountryLocationV3Short(input *o_auth2_0_extension.GetCountryLocationV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth20Extension.GetCountryLocationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}]
func (o *OAuth20ExtensionService) LogoutShort(input *o_auth2_0_extension.LogoutParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.OAuth20Extension.LogoutShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}]
func (o *OAuth20ExtensionService) PlatformAuthenticationV3Short(input *o_auth2_0_extension.PlatformAuthenticationV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (string, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth20Extension.PlatformAuthenticationV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return ok.Location, nil
}
