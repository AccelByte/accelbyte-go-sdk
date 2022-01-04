// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OAuthService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (o *OAuthService) Authorization(input *o_auth.AuthorizationParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth.Authorization(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) GetJWKS(input *o_auth.GetJWKSParams) (*iamclientmodels.OauthcommonJWKSet, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth.GetJWKS(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) PlatformTokenRequestHandler(input *o_auth.PlatformTokenRequestHandlerParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := o.Client.OAuth.PlatformTokenRequestHandler(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OAuthService) RevokeUser(input *o_auth.RevokeUserParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, err := o.Client.OAuth.RevokeUser(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) GetRevocationList(input *o_auth.GetRevocationListParams) (*iamclientmodels.OauthapiRevocationList, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := o.Client.OAuth.GetRevocationList(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) RevokeToken(input *o_auth.RevokeTokenParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, err := o.Client.OAuth.RevokeToken(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OAuthService) RevokeAUser(input *o_auth.RevokeAUserParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, err := o.Client.OAuth.RevokeAUser(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OAuthService) TokenGrant(input *o_auth.TokenGrantParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := o.Client.OAuth.TokenGrant(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OAuthService) VerifyToken(input *o_auth.VerifyTokenParams) (*iamclientmodels.OauthmodelTokenResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := o.Client.OAuth.VerifyToken(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) AuthorizationShort(input *o_auth.AuthorizationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth.AuthorizationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) GetJWKSShort(input *o_auth.GetJWKSParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthcommonJWKSet, error) {
	ok, err := o.Client.OAuth.GetJWKSShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) PlatformTokenRequestHandlerShort(input *o_auth.PlatformTokenRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	ok, err := o.Client.OAuth.PlatformTokenRequestHandlerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) RevokeUserShort(input *o_auth.RevokeUserParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth.RevokeUserShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) GetRevocationListShort(input *o_auth.GetRevocationListParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthapiRevocationList, error) {
	ok, err := o.Client.OAuth.GetRevocationListShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) RevokeTokenShort(input *o_auth.RevokeTokenParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth.RevokeTokenShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) RevokeAUserShort(input *o_auth.RevokeAUserParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth.RevokeAUserShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuthService) TokenGrantShort(input *o_auth.TokenGrantParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	ok, err := o.Client.OAuth.TokenGrantShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuthService) VerifyTokenShort(input *o_auth.VerifyTokenParams, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelTokenResponse, error) {
	ok, err := o.Client.OAuth.VerifyTokenShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
