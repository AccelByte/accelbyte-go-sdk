// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/user_information"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UserInformationService struct {
	Client          *eventlogclient.JusticeEventlogService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserActivitiesHandlerShort instead
func (u *UserInformationService) GetUserActivitiesHandler(input *user_information.GetUserActivitiesHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserInformation.GetUserActivitiesHandler(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: Use DeleteUserActivitiesHandlerShort instead
func (u *UserInformationService) DeleteUserActivitiesHandler(input *user_information.DeleteUserActivitiesHandlerParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserInformation.DeleteUserActivitiesHandler(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use LastUserActivityTimeHandlerShort instead
func (u *UserInformationService) LastUserActivityTimeHandler(input *user_information.LastUserActivityTimeHandlerParams) (*eventlogclientmodels.ModelsUserLastActivity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := u.Client.UserInformation.LastUserActivityTimeHandler(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

func (u *UserInformationService) GetUserActivitiesHandlerShort(input *user_information.GetUserActivitiesHandlerParams) (*eventlogclientmodels.ModelsEventResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserInformation.GetUserActivitiesHandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserInformationService) DeleteUserActivitiesHandlerShort(input *user_information.DeleteUserActivitiesHandlerParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UserInformation.DeleteUserActivitiesHandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (u *UserInformationService) LastUserActivityTimeHandlerShort(input *user_information.LastUserActivityTimeHandlerParams) (*eventlogclientmodels.ModelsUserLastActivity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserInformation.LastUserActivityTimeHandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
