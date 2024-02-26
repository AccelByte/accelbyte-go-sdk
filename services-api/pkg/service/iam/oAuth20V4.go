// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type OAuth20v4Service struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdOAuth20v4 *string

func (aaa *OAuth20v4Service) UpdateFlightId(flightId string) {
	tempFlightIdOAuth20v4 = &flightId
}

func (aaa *OAuth20v4Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AuthenticationWithPlatformLinkV4Short instead.
func (aaa *OAuth20v4Service) AuthenticationWithPlatformLinkV4(input *o_auth2_0_v4.AuthenticationWithPlatformLinkV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, badRequest, unauthorized, forbidden, conflict, err := aaa.Client.OAuth20V4.AuthenticationWithPlatformLinkV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GenerateTokenByNewHeadlessAccountV4Short instead.
func (aaa *OAuth20v4Service) GenerateTokenByNewHeadlessAccountV4(input *o_auth2_0_v4.GenerateTokenByNewHeadlessAccountV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, badRequest, unauthorized, notFound, err := aaa.Client.OAuth20V4.GenerateTokenByNewHeadlessAccountV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
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

// Deprecated: 2022-01-10 - please use Verify2FACodeV4Short instead.
func (aaa *OAuth20v4Service) Verify2FACodeV4(input *o_auth2_0_v4.Verify2FACodeV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, unauthorized, err := aaa.Client.OAuth20V4.Verify2FACodeV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use PlatformTokenGrantV4Short instead.
func (aaa *OAuth20v4Service) PlatformTokenGrantV4(input *o_auth2_0_v4.PlatformTokenGrantV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, badRequest, unauthorized, forbidden, serviceUnavailable, err := aaa.Client.OAuth20V4.PlatformTokenGrantV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if serviceUnavailable != nil {
		return nil, serviceUnavailable
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SimultaneousLoginV4Short instead.
func (aaa *OAuth20v4Service) SimultaneousLoginV4(input *o_auth2_0_v4.SimultaneousLoginV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.OAuth20V4.SimultaneousLoginV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use TokenGrantV4Short instead.
func (aaa *OAuth20v4Service) TokenGrantV4(input *o_auth2_0_v4.TokenGrantV4Params) (*iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, badRequest, unauthorized, forbidden, tooManyRequests, err := aaa.Client.OAuth20V4.TokenGrantV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use RequestTargetTokenResponseV4Short instead.
func (aaa *OAuth20v4Service) RequestTargetTokenResponseV4(input *o_auth2_0_v4.RequestTargetTokenResponseV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, accepted, err := aaa.Client.OAuth20V4.RequestTargetTokenResponseV4(input, client.BearerToken(*token.AccessToken))
	if accepted != nil {
		return nil, accepted
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) AuthenticationWithPlatformLinkV4Short(input *o_auth2_0_v4.AuthenticationWithPlatformLinkV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.AuthenticationWithPlatformLinkV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) GenerateTokenByNewHeadlessAccountV4Short(input *o_auth2_0_v4.GenerateTokenByNewHeadlessAccountV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.GenerateTokenByNewHeadlessAccountV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) Verify2FACodeV4Short(input *o_auth2_0_v4.Verify2FACodeV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.Verify2FACodeV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) PlatformTokenGrantV4Short(input *o_auth2_0_v4.PlatformTokenGrantV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.PlatformTokenGrantV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) SimultaneousLoginV4Short(input *o_auth2_0_v4.SimultaneousLoginV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.SimultaneousLoginV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) TokenGrantV4Short(input *o_auth2_0_v4.TokenGrantV4Params) (*iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.TokenGrantV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *OAuth20v4Service) RequestTargetTokenResponseV4Short(input *o_auth2_0_v4.RequestTargetTokenResponseV4Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
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
	if tempFlightIdOAuth20v4 != nil {
		input.XFlightId = tempFlightIdOAuth20v4
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OAuth20V4.RequestTargetTokenResponseV4Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
