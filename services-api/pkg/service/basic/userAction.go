// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UserActionService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetActionsShort instead
func (u *UserActionService) GetActions(input *user_action.GetActionsParams) ([]*basicclientmodels.Action, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := u.Client.UserAction.GetActions(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use BanUsersShort instead
func (u *UserActionService) BanUsers(input *user_action.BanUsersParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.BanUsers(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}

// Deprecated: Use GetBannedUsersShort instead
func (u *UserActionService) GetBannedUsers(input *user_action.GetBannedUsersParams) ([]*basicclientmodels.ADTOObjectForEqu8UserBanStatus, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.GetBannedUsers(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ReportUserShort instead
func (u *UserActionService) ReportUser(input *user_action.ReportUserParams) (*basicclientmodels.ValidationErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	unprocessableEntity, err := u.Client.UserAction.ReportUser(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return unprocessableEntity.GetPayload(), nil
}

// Deprecated: Use GetUserStatusShort instead
func (u *UserActionService) GetUserStatus(input *user_action.GetUserStatusParams) (*basicclientmodels.ADTOObjectForEqu8UserStatus, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.GetUserStatus(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UnBanUsersShort instead
func (u *UserActionService) UnBanUsers(input *user_action.UnBanUsersParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.UnBanUsers(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}

// Deprecated: Use PublicReportUserShort instead
func (u *UserActionService) PublicReportUser(input *user_action.PublicReportUserParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, unprocessableEntity, err := u.Client.UserAction.PublicReportUser(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}

func (u *UserActionService) GetActionsShort(input *user_action.GetActionsParams) ([]*basicclientmodels.Action, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserAction.GetActionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) BanUsersShort(input *user_action.BanUsersParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, err := u.Client.UserAction.BanUsersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}

func (u *UserActionService) GetBannedUsersShort(input *user_action.GetBannedUsersParams) ([]*basicclientmodels.ADTOObjectForEqu8UserBanStatus, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserAction.GetBannedUsersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) ReportUserShort(input *user_action.ReportUserParams) (*basicclientmodels.ValidationErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	unprocessableEntity, err := u.Client.UserAction.ReportUserShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return unprocessableEntity.GetPayload(), nil
}

func (u *UserActionService) GetUserStatusShort(input *user_action.GetUserStatusParams) (*basicclientmodels.ADTOObjectForEqu8UserStatus, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserAction.GetUserStatusShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) UnBanUsersShort(input *user_action.UnBanUsersParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, err := u.Client.UserAction.UnBanUsersShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}

func (u *UserActionService) PublicReportUserShort(input *user_action.PublicReportUserParams) (*basicclientmodels.ErrorEntity, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	badRequest, err := u.Client.UserAction.PublicReportUserShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return badRequest.GetPayload(), nil
}
