// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OAuth20ExtensionService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UserAuthenticationV3Short instead
func (o *OAuth20ExtensionService) UserAuthenticationV3(input *o_auth2_0_extension.UserAuthenticationV3Params) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = o.Client.OAuth20Extension.UserAuthenticationV3(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
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

func (o *OAuth20ExtensionService) UserAuthenticationV3Short(input *o_auth2_0_extension.UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth20Extension.UserAuthenticationV3Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20ExtensionService) GetCountryLocationV3Short(input *o_auth2_0_extension.GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	ok, err := o.Client.OAuth20Extension.GetCountryLocationV3Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OAuth20ExtensionService) LogoutShort(input *o_auth2_0_extension.LogoutParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth20Extension.LogoutShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OAuth20ExtensionService) PlatformAuthenticationV3Short(input *o_auth2_0_extension.PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.OAuth20Extension.PlatformAuthenticationV3Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
