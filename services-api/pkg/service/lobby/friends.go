// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type FriendsService struct {
	Client                 *lobbyclient.JusticeLobbyService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (f *FriendsService) GetAuthSession() auth.Session {
	if f.RefreshTokenRepository != nil {
		return auth.Session{
			f.TokenRepository,
			f.ConfigRepository,
			f.RefreshTokenRepository,
		}
	}

	return auth.Session{
		f.TokenRepository,
		f.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetUserFriendsUpdatedShort instead
func (f *FriendsService) GetUserFriendsUpdated(input *friends.GetUserFriendsUpdatedParams) ([]*lobbyclientmodels.ModelGetUserFriendsResponse, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserFriendsUpdated(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetUserIncomingFriendsShort instead
func (f *FriendsService) GetUserIncomingFriends(input *friends.GetUserIncomingFriendsParams) ([]*lobbyclientmodels.ModelGetUserIncomingFriendsResponse, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserIncomingFriends(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetUserOutgoingFriendsShort instead
func (f *FriendsService) GetUserOutgoingFriends(input *friends.GetUserOutgoingFriendsParams) ([]*lobbyclientmodels.ModelGetUserOutgoingFriendsResponse, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserOutgoingFriends(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UserRequestFriendShort instead
func (f *FriendsService) UserRequestFriend(input *friends.UserRequestFriendParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, unprocessableEntity, internalServerError, err := f.Client.Friends.UserRequestFriend(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
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

// Deprecated: Use UserAcceptFriendRequestShort instead
func (f *FriendsService) UserAcceptFriendRequest(input *friends.UserAcceptFriendRequestParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserAcceptFriendRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use UserCancelFriendRequestShort instead
func (f *FriendsService) UserCancelFriendRequest(input *friends.UserCancelFriendRequestParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserCancelFriendRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use UserRejectFriendRequestShort instead
func (f *FriendsService) UserRejectFriendRequest(input *friends.UserRejectFriendRequestParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserRejectFriendRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use UserGetFriendshipStatusShort instead
func (f *FriendsService) UserGetFriendshipStatus(input *friends.UserGetFriendshipStatusParams) (*lobbyclientmodels.ModelUserGetFriendshipStatusResponse, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.UserGetFriendshipStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UserUnfriendRequestShort instead
func (f *FriendsService) UserUnfriendRequest(input *friends.UserUnfriendRequestParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserUnfriendRequest(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use AddFriendsWithoutConfirmationShort instead
func (f *FriendsService) AddFriendsWithoutConfirmation(input *friends.AddFriendsWithoutConfirmationParams) error {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.AddFriendsWithoutConfirmation(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetListOfFriendsShort instead
func (f *FriendsService) GetListOfFriends(input *friends.GetListOfFriendsParams) (*lobbyclientmodels.ModelGetFriendsResponse, error) {
	token, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.GetListOfFriends(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FriendsService) GetUserFriendsUpdatedShort(input *friends.GetUserFriendsUpdatedParams) ([]*lobbyclientmodels.ModelGetUserFriendsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := f.Client.Friends.GetUserFriendsUpdatedShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FriendsService) GetUserIncomingFriendsShort(input *friends.GetUserIncomingFriendsParams) ([]*lobbyclientmodels.ModelGetUserIncomingFriendsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := f.Client.Friends.GetUserIncomingFriendsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FriendsService) GetUserOutgoingFriendsShort(input *friends.GetUserOutgoingFriendsParams) ([]*lobbyclientmodels.ModelGetUserOutgoingFriendsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := f.Client.Friends.GetUserOutgoingFriendsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FriendsService) UserRequestFriendShort(input *friends.UserRequestFriendParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.UserRequestFriendShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) UserAcceptFriendRequestShort(input *friends.UserAcceptFriendRequestParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.UserAcceptFriendRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) UserCancelFriendRequestShort(input *friends.UserCancelFriendRequestParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.UserCancelFriendRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) UserRejectFriendRequestShort(input *friends.UserRejectFriendRequestParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.UserRejectFriendRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) UserGetFriendshipStatusShort(input *friends.UserGetFriendshipStatusParams) (*lobbyclientmodels.ModelUserGetFriendshipStatusResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := f.Client.Friends.UserGetFriendshipStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (f *FriendsService) UserUnfriendRequestShort(input *friends.UserUnfriendRequestParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.UserUnfriendRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) AddFriendsWithoutConfirmationShort(input *friends.AddFriendsWithoutConfirmationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := f.Client.Friends.AddFriendsWithoutConfirmationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (f *FriendsService) GetListOfFriendsShort(input *friends.GetListOfFriendsParams) (*lobbyclientmodels.ModelGetFriendsResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(f.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  f.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := f.Client.Friends.GetListOfFriendsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
