// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OAuthService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

// Deprecated: Use AuthorizationShort instead
func (o *OAuthService) Authorization(input *o_auth.AuthorizationParams) (string, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return "", err
	}
	ok, err := o.Client.OAuth.Authorization(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}

	return ok.Location, nil
}

// Deprecated: Use GetJWKSShort instead
func (o *OAuthService) GetJWKS(input *o_auth.GetJWKSParams) (*iamclientmodels.OauthcommonJWKSet, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth.GetJWKS(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PlatformTokenRequestHandlerShort instead
func (o *OAuthService) PlatformTokenRequestHandler(input *o_auth.PlatformTokenRequestHandlerParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := o.Client.OAuth.PlatformTokenRequestHandler(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserShort instead
func (o *OAuthService) RevokeUser(input *o_auth.RevokeUserParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, err := o.Client.OAuth.RevokeUser(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetRevocationListShort instead
func (o *OAuthService) GetRevocationList(input *o_auth.GetRevocationListParams) (*iamclientmodels.OauthapiRevocationList, error) {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, unauthorized, err := o.Client.OAuth.GetRevocationList(input, client.BasicAuth(clientID, clientSecret))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeTokenShort instead
func (o *OAuthService) RevokeToken(input *o_auth.RevokeTokenParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, err := o.Client.OAuth.RevokeToken(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use RevokeAUserShort instead
func (o *OAuthService) RevokeAUser(input *o_auth.RevokeAUserParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, err := o.Client.OAuth.RevokeAUser(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use TokenGrantShort instead
func (o *OAuthService) TokenGrant(input *o_auth.TokenGrantParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := o.Client.OAuth.TokenGrant(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use VerifyTokenShort instead
func (o *OAuthService) VerifyToken(input *o_auth.VerifyTokenParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	clientID := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, badRequest, err := o.Client.OAuth.VerifyToken(input, client.BasicAuth(clientID, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuthService) AuthorizationShort(input *o_auth.AuthorizationParams, authInfoWriter runtime.ClientAuthInfoWriter) (string, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth.AuthorizationShort(input, authInfoWriter)
	if err != nil {
		return "", err
	}

	return ok.Location, nil
}

func (o *OAuthService) GetJWKSShort(input *o_auth.GetJWKSParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthcommonJWKSet, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth.GetJWKSShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuthService) PlatformTokenRequestHandlerShort(input *o_auth.PlatformTokenRequestHandlerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth.PlatformTokenRequestHandlerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuthService) RevokeUserShort(input *o_auth.RevokeUserParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.OAuth.RevokeUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuthService) GetRevocationListShort(input *o_auth.GetRevocationListParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthapiRevocationList, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(nil, o.ConfigRepository, security, "")
	}
	ok, err := o.Client.OAuth.GetRevocationListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuthService) RevokeTokenShort(input *o_auth.RevokeTokenParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.OAuth.RevokeTokenShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuthService) RevokeAUserShort(input *o_auth.RevokeAUserParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.OAuth.RevokeAUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (o *OAuthService) TokenGrantShort(input *o_auth.TokenGrantParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.OAuth.TokenGrantShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OAuthService) VerifyTokenShort(input *o_auth.VerifyTokenParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"basic"},
		}
		authInfoWriter = auth.AuthInfoWriter(nil, o.ConfigRepository, security, "")
	}
	ok, err := o.Client.OAuth.VerifyTokenShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
