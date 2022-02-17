// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/go-openapi/runtime/client"
)

type AnonymizationService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use AdminDeleteAllUserChannelsShort instead
func (a *AnonymizationService) AdminDeleteAllUserChannels(input *anonymization.AdminDeleteAllUserChannelsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.AdminDeleteAllUserChannels(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminDeleteAllUserContentsShort instead
func (a *AnonymizationService) AdminDeleteAllUserContents(input *anonymization.AdminDeleteAllUserContentsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.AdminDeleteAllUserContents(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminDeleteAllUserGroupShort instead
func (a *AnonymizationService) AdminDeleteAllUserGroup(input *anonymization.AdminDeleteAllUserGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.AdminDeleteAllUserGroup(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminDeleteAllUserStatesShort instead
func (a *AnonymizationService) AdminDeleteAllUserStates(input *anonymization.AdminDeleteAllUserStatesParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := a.Client.Anonymization.AdminDeleteAllUserStates(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use DeleteAllUserChannelShort instead
func (a *AnonymizationService) DeleteAllUserChannel(input *anonymization.DeleteAllUserChannelParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.DeleteAllUserChannel(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteAllUserContentsShort instead
func (a *AnonymizationService) DeleteAllUserContents(input *anonymization.DeleteAllUserContentsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.DeleteAllUserContents(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteAllUserGroupShort instead
func (a *AnonymizationService) DeleteAllUserGroup(input *anonymization.DeleteAllUserGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Anonymization.DeleteAllUserGroup(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteAllUserStatesShort instead
func (a *AnonymizationService) DeleteAllUserStates(input *anonymization.DeleteAllUserStatesParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := a.Client.Anonymization.DeleteAllUserStates(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AdminDeleteAllUserChannelsShort(input *anonymization.AdminDeleteAllUserChannelsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AdminDeleteAllUserChannelsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AdminDeleteAllUserContentsShort(input *anonymization.AdminDeleteAllUserContentsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AdminDeleteAllUserContentsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AdminDeleteAllUserGroupShort(input *anonymization.AdminDeleteAllUserGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AdminDeleteAllUserGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) AdminDeleteAllUserStatesShort(input *anonymization.AdminDeleteAllUserStatesParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.AdminDeleteAllUserStatesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) DeleteAllUserChannelShort(input *anonymization.DeleteAllUserChannelParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.DeleteAllUserChannelShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) DeleteAllUserContentsShort(input *anonymization.DeleteAllUserContentsParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.DeleteAllUserContentsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) DeleteAllUserGroupShort(input *anonymization.DeleteAllUserGroupParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.DeleteAllUserGroupShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *AnonymizationService) DeleteAllUserStatesShort(input *anonymization.DeleteAllUserStatesParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.Anonymization.DeleteAllUserStatesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}
