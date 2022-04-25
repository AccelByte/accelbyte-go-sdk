// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type UserActionService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetActionsShort instead
func (u *UserActionService) GetActions(input *user_action.GetActionsParams) ([]*basicclientmodels.Action, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := u.Client.UserAction.GetActions(input, client.BearerToken(*token.AccessToken))
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
func (u *UserActionService) BanUsers(input *user_action.BanUsersParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.BanUsers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetBannedUsersShort instead
func (u *UserActionService) GetBannedUsers(input *user_action.GetBannedUsersParams) ([]*basicclientmodels.ADTOObjectForEqu8UserBanStatus, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.GetBannedUsers(input, client.BearerToken(*token.AccessToken))
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
func (u *UserActionService) ReportUser(input *user_action.ReportUserParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unprocessableEntity, err := u.Client.UserAction.ReportUser(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetUserStatusShort instead
func (u *UserActionService) GetUserStatus(input *user_action.GetUserStatusParams) (*basicclientmodels.ADTOObjectForEqu8UserStatus, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.GetUserStatus(input, client.BearerToken(*token.AccessToken))
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
func (u *UserActionService) UnBanUsers(input *user_action.UnBanUsersParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, unprocessableEntity, internalServerError, err := u.Client.UserAction.UnBanUsers(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicReportUserShort instead
func (u *UserActionService) PublicReportUser(input *user_action.PublicReportUserParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unprocessableEntity, err := u.Client.UserAction.PublicReportUser(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

func (u *UserActionService) GetActionsShort(input *user_action.GetActionsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*basicclientmodels.Action, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UserAction.GetActionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) BanUsersShort(input *user_action.BanUsersParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UserAction.BanUsersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserActionService) GetBannedUsersShort(input *user_action.GetBannedUsersParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*basicclientmodels.ADTOObjectForEqu8UserBanStatus, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UserAction.GetBannedUsersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) ReportUserShort(input *user_action.ReportUserParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UserAction.ReportUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserActionService) GetUserStatusShort(input *user_action.GetUserStatusParams, authInfoWriter runtime.ClientAuthInfoWriter) (*basicclientmodels.ADTOObjectForEqu8UserStatus, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	ok, err := u.Client.UserAction.GetUserStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserActionService) UnBanUsersShort(input *user_action.UnBanUsersParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UserAction.UnBanUsersShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (u *UserActionService) PublicReportUserShort(input *user_action.PublicReportUserParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	_, err := u.Client.UserAction.PublicReportUserShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
