// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminChannelService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SingleAdminGetChannelShort instead
func (a *AdminChannelService) SingleAdminGetChannel(input *admin_channel.SingleAdminGetChannelParams) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.SingleAdminGetChannel(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AdminCreateChannelShort instead
func (a *AdminChannelService) AdminCreateChannel(input *admin_channel.AdminCreateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.AdminChannel.AdminCreateChannel(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use SingleAdminUpdateChannelShort instead
func (a *AdminChannelService) SingleAdminUpdateChannel(input *admin_channel.SingleAdminUpdateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.SingleAdminUpdateChannel(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SingleAdminDeleteChannelShort instead
func (a *AdminChannelService) SingleAdminDeleteChannel(input *admin_channel.SingleAdminDeleteChannelParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.SingleAdminDeleteChannel(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use AdminGetChannelShort instead
func (a *AdminChannelService) AdminGetChannel(input *admin_channel.AdminGetChannelParams) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.AdminGetChannel(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AdminUpdateChannelShort instead
func (a *AdminChannelService) AdminUpdateChannel(input *admin_channel.AdminUpdateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.AdminUpdateChannel(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use AdminDeleteChannelShort instead
func (a *AdminChannelService) AdminDeleteChannel(input *admin_channel.AdminDeleteChannelParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminChannel.AdminDeleteChannel(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminChannelService) SingleAdminGetChannelShort(input *admin_channel.SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	ok, err := a.Client.AdminChannel.SingleAdminGetChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminChannelService) AdminCreateChannelShort(input *admin_channel.AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsChannelResponse, error) {
	created, err := a.Client.AdminChannel.AdminCreateChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminChannelService) SingleAdminUpdateChannelShort(input *admin_channel.SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsChannelResponse, error) {
	ok, err := a.Client.AdminChannel.SingleAdminUpdateChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminChannelService) SingleAdminDeleteChannelShort(input *admin_channel.SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminChannel.SingleAdminDeleteChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminChannelService) AdminGetChannelShort(input *admin_channel.AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	ok, err := a.Client.AdminChannel.AdminGetChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminChannelService) AdminUpdateChannelShort(input *admin_channel.AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsChannelResponse, error) {
	ok, err := a.Client.AdminChannel.AdminUpdateChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminChannelService) AdminDeleteChannelShort(input *admin_channel.AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminChannel.AdminDeleteChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
