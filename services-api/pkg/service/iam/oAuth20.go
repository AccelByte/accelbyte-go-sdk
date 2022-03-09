// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/go-openapi/runtime/client"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type OAuth20Service struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

// Deprecated: Use AdminRetrieveUserThirdPartyPlatformTokenV3Short instead
func (o *OAuth20Service) AdminRetrieveUserThirdPartyPlatformTokenV3(input *o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := o.Client.OAuth20.AdminRetrieveUserThirdPartyPlatformTokenV3(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserV3Short instead
func (o *OAuth20Service) RevokeUserV3(input *o_auth2_0.RevokeUserV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.RevokeUserV3(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AuthorizeV3Short instead
func (o *OAuth20Service) AuthorizeV3(input *o_auth2_0.AuthorizeV3Params) error {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	_, err := o.Client.OAuth20.AuthorizeV3(input, client.BasicAuth(clientId, clientSecret))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use TokenIntrospectionV3Short instead
func (o *OAuth20Service) TokenIntrospectionV3(input *o_auth2_0.TokenIntrospectionV3Params) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := o.Client.OAuth20.TokenIntrospectionV3(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetJWKSV3Short instead
func (o *OAuth20Service) GetJWKSV3(input *o_auth2_0.GetJWKSV3Params) (*iamclientmodels.OauthcommonJWKSet, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.GetJWKSV3(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RetrieveUserThirdPartyPlatformTokenV3Short instead
func (o *OAuth20Service) RetrieveUserThirdPartyPlatformTokenV3(input *o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := o.Client.OAuth20.RetrieveUserThirdPartyPlatformTokenV3(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AuthCodeRequestV3Short instead
func (o *OAuth20Service) AuthCodeRequestV3(input *o_auth2_0.AuthCodeRequestV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20.AuthCodeRequestV3(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PlatformTokenGrantV3Short instead
func (o *OAuth20Service) PlatformTokenGrantV3(input *o_auth2_0.PlatformTokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponse, error) {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, badRequest, unauthorized, err := o.Client.OAuth20.PlatformTokenGrantV3(input, client.BasicAuth(clientId, clientSecret))
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

// Deprecated: Use GetRevocationListV3Short instead
func (o *OAuth20Service) GetRevocationListV3(input *o_auth2_0.GetRevocationListV3Params) (*iamclientmodels.OauthapiRevocationList, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := o.Client.OAuth20.GetRevocationListV3(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use TokenRevocationV3Short instead
func (o *OAuth20Service) TokenRevocationV3(input *o_auth2_0.TokenRevocationV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, err := o.Client.OAuth20.TokenRevocationV3(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use TokenGrantV3Short instead
func (o *OAuth20Service) TokenGrantV3(input *o_auth2_0.TokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, badRequest, unauthorized, forbidden, err := o.Client.OAuth20.TokenGrantV3(input, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) AdminRetrieveUserThirdPartyPlatformTokenV3Short(input *o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.AdminRetrieveUserThirdPartyPlatformTokenV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) RevokeUserV3Short(input *o_auth2_0.RevokeUserV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20.RevokeUserV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) AuthorizeV3Short(input *o_auth2_0.AuthorizeV3Params) error {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	_, err := o.Client.OAuth20.AuthorizeV3Short(input, client.BasicAuth(clientId, clientSecret))
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) TokenIntrospectionV3Short(input *o_auth2_0.TokenIntrospectionV3Params) (*iamclientmodels.OauthmodelTokenIntrospectResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.TokenIntrospectionV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) GetJWKSV3Short(input *o_auth2_0.GetJWKSV3Params) (*iamclientmodels.OauthcommonJWKSet, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.GetJWKSV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) RetrieveUserThirdPartyPlatformTokenV3Short(input *o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params) (*iamclientmodels.OauthmodelTokenThirdPartyResponse, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.RetrieveUserThirdPartyPlatformTokenV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) AuthCodeRequestV3Short(input *o_auth2_0.AuthCodeRequestV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20.AuthCodeRequestV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) PlatformTokenGrantV3Short(input *o_auth2_0.PlatformTokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponse, error) {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, err := o.Client.OAuth20.PlatformTokenGrantV3Short(input, client.BasicAuth(clientId, clientSecret))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) GetRevocationListV3Short(input *o_auth2_0.GetRevocationListV3Params) (*iamclientmodels.OauthapiRevocationList, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.OAuth20.GetRevocationListV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20Service) TokenRevocationV3Short(input *o_auth2_0.TokenRevocationV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20.TokenRevocationV3Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20Service) TokenGrantV3Short(input *o_auth2_0.TokenGrantV3Params) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	clientId := o.ConfigRepository.GetClientId()
	clientSecret := o.ConfigRepository.GetClientSecret()
	ok, err := o.Client.OAuth20.TokenGrantV3Short(input, client.BasicAuth(clientId, clientSecret))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
