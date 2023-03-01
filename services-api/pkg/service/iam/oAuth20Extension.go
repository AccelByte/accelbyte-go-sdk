// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type OAuth20ExtensionService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *OAuth20ExtensionService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// deprecated(2022-01-10): please use UserAuthenticationV3Short instead.
func (aaa *OAuth20ExtensionService) UserAuthenticationV3(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
	clientID := aaa.ConfigRepository.GetClientId()
	clientSecret := aaa.ConfigRepository.GetClientSecret()
	found, err := aaa.Client.OAuth20Extension.UserAuthenticationV3(input, client.BasicAuth(clientID, clientSecret))
	if err != nil {
		return "", err
	}

	parsedURL, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	code := query["code"][0]

	return code, nil
}

// deprecated(2022-01-10): please use AuthenticationWithPlatformLinkV3Short instead.
func (aaa *OAuth20ExtensionService) AuthenticationWithPlatformLinkV3(input *o_auth2_0_extension.AuthenticationWithPlatformLinkV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, err := aaa.Client.OAuth20Extension.AuthenticationWithPlatformLinkV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use GenerateTokenByNewHeadlessAccountV3Short instead.
func (aaa *OAuth20ExtensionService) GenerateTokenByNewHeadlessAccountV3(input *o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, err := aaa.Client.OAuth20Extension.GenerateTokenByNewHeadlessAccountV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use RequestOneTimeLinkingCodeV3Short instead.
func (aaa *OAuth20ExtensionService) RequestOneTimeLinkingCodeV3(input *o_auth2_0_extension.RequestOneTimeLinkingCodeV3Params) (*iamclientmodels.OauthmodelOneTimeLinkingCodeResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.OAuth20Extension.RequestOneTimeLinkingCodeV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use ValidateOneTimeLinkingCodeV3Short instead.
func (aaa *OAuth20ExtensionService) ValidateOneTimeLinkingCodeV3(input *o_auth2_0_extension.ValidateOneTimeLinkingCodeV3Params) (*iamclientmodels.OauthmodelOneTimeLinkingCodeValidationResponse, error) {
	ok, err := aaa.Client.OAuth20Extension.ValidateOneTimeLinkingCodeV3(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use RequestTokenByOneTimeLinkCodeResponseV3Short instead.
func (aaa *OAuth20ExtensionService) RequestTokenByOneTimeLinkCodeResponseV3(input *o_auth2_0_extension.RequestTokenByOneTimeLinkCodeResponseV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	ok, err := aaa.Client.OAuth20Extension.RequestTokenByOneTimeLinkCodeResponseV3(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use GetCountryLocationV3Short instead.
func (aaa *OAuth20ExtensionService) GetCountryLocationV3(input *o_auth2_0_extension.GetCountryLocationV3Params) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.OAuth20Extension.GetCountryLocationV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use LogoutShort instead.
func (aaa *OAuth20ExtensionService) Logout(input *o_auth2_0_extension.LogoutParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = aaa.Client.OAuth20Extension.Logout(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use RequestGameTokenCodeResponseV3Short instead.
func (aaa *OAuth20ExtensionService) RequestGameTokenCodeResponseV3(input *o_auth2_0_extension.RequestGameTokenCodeResponseV3Params) (*iamclientmodels.OauthmodelGameTokenCodeResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.OAuth20Extension.RequestGameTokenCodeResponseV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use PlatformAuthenticationV3Short instead.
func (aaa *OAuth20ExtensionService) PlatformAuthenticationV3(input *o_auth2_0_extension.PlatformAuthenticationV3Params) (string, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	found, err := aaa.Client.OAuth20Extension.PlatformAuthenticationV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

// deprecated(2022-01-10): please use RequestGameTokenResponseV3Short instead.
func (aaa *OAuth20ExtensionService) RequestGameTokenResponseV3(input *o_auth2_0_extension.RequestGameTokenResponseV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.OAuth20Extension.RequestGameTokenResponseV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) UserAuthenticationV3Short(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	found, err := aaa.Client.OAuth20Extension.UserAuthenticationV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	parsedURL, err := url.Parse(found.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedURL.RawQuery)
	if err != nil {
		return "", err
	}
	code := query["code"][0]

	return code, nil
}

func (aaa *OAuth20ExtensionService) AuthenticationWithPlatformLinkV3Short(input *o_auth2_0_extension.AuthenticationWithPlatformLinkV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.AuthenticationWithPlatformLinkV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) GenerateTokenByNewHeadlessAccountV3Short(input *o_auth2_0_extension.GenerateTokenByNewHeadlessAccountV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.GenerateTokenByNewHeadlessAccountV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) RequestOneTimeLinkingCodeV3Short(input *o_auth2_0_extension.RequestOneTimeLinkingCodeV3Params) (*iamclientmodels.OauthmodelOneTimeLinkingCodeResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.RequestOneTimeLinkingCodeV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) ValidateOneTimeLinkingCodeV3Short(input *o_auth2_0_extension.ValidateOneTimeLinkingCodeV3Params) (*iamclientmodels.OauthmodelOneTimeLinkingCodeValidationResponse, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.ValidateOneTimeLinkingCodeV3Short(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) RequestTokenByOneTimeLinkCodeResponseV3Short(input *o_auth2_0_extension.RequestTokenByOneTimeLinkCodeResponseV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.RequestTokenByOneTimeLinkCodeResponseV3Short(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) GetCountryLocationV3Short(input *o_auth2_0_extension.GetCountryLocationV3Params) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.GetCountryLocationV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) LogoutShort(input *o_auth2_0_extension.LogoutParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.OAuth20Extension.LogoutShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OAuth20ExtensionService) RequestGameTokenCodeResponseV3Short(input *o_auth2_0_extension.RequestGameTokenCodeResponseV3Params) (*iamclientmodels.OauthmodelGameTokenCodeResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.RequestGameTokenCodeResponseV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20ExtensionService) PlatformAuthenticationV3Short(input *o_auth2_0_extension.PlatformAuthenticationV3Params) (string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	found, err := aaa.Client.OAuth20Extension.PlatformAuthenticationV3Short(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return found.Location, nil
}

func (aaa *OAuth20ExtensionService) RequestGameTokenResponseV3Short(input *o_auth2_0_extension.RequestGameTokenResponseV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.OAuth20Extension.RequestGameTokenResponseV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
