// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PublicChannelService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

func (p *PublicChannelService) GetChannels(input *public_channel.GetChannelsParams) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicChannel.GetChannels(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicChannelService) CreateChannel(input *public_channel.CreateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := p.Client.PublicChannel.CreateChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicChannelService) UpdateChannel(input *public_channel.UpdateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicChannel.UpdateChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicChannelService) DeleteChannel(input *public_channel.DeleteChannelParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := p.Client.PublicChannel.DeleteChannel(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicChannelService) GetChannelsShort(input *public_channel.GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	ok, err := p.Client.PublicChannel.GetChannelsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicChannelService) CreateChannelShort(input *public_channel.CreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsChannelResponse, error) {
	created, err := p.Client.PublicChannel.CreateChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PublicChannelService) UpdateChannelShort(input *public_channel.UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsChannelResponse, error) {
	ok, err := p.Client.PublicChannel.UpdateChannelShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicChannelService) DeleteChannelShort(input *public_channel.DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicChannel.DeleteChannelShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
