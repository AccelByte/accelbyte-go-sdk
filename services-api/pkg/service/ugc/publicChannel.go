// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type PublicChannelService struct {
	Client                 *ugcclient.JusticeUgcService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *PublicChannelService) GetAuthSession() auth.Session {
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

// deprecated(2022-01-10): please use GetChannelsShort instead.
func (aaa *PublicChannelService) GetChannels(input *public_channel.GetChannelsParams) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.PublicChannel.GetChannels(input, client.BearerToken(*token.AccessToken))
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

// deprecated(2022-01-10): please use CreateChannelShort instead.
func (aaa *PublicChannelService) CreateChannel(input *public_channel.CreateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := aaa.Client.PublicChannel.CreateChannel(input, client.BearerToken(*token.AccessToken))
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

// deprecated(2022-01-10): please use UpdateChannelShort instead.
func (aaa *PublicChannelService) UpdateChannel(input *public_channel.UpdateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.PublicChannel.UpdateChannel(input, client.BearerToken(*token.AccessToken))
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

// deprecated(2022-01-10): please use DeleteChannelShort instead.
func (aaa *PublicChannelService) DeleteChannel(input *public_channel.DeleteChannelParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.PublicChannel.DeleteChannel(input, client.BearerToken(*token.AccessToken))
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

func (aaa *PublicChannelService) GetChannelsShort(input *public_channel.GetChannelsParams) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
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

	ok, err := aaa.Client.PublicChannel.GetChannelsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicChannelService) CreateChannelShort(input *public_channel.CreateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
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

	created, err := aaa.Client.PublicChannel.CreateChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicChannelService) UpdateChannelShort(input *public_channel.UpdateChannelParams) (*ugcclientmodels.ModelsChannelResponse, error) {
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

	ok, err := aaa.Client.PublicChannel.UpdateChannelShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicChannelService) DeleteChannelShort(input *public_channel.DeleteChannelParams) error {
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

	_, err := aaa.Client.PublicChannel.DeleteChannelShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
