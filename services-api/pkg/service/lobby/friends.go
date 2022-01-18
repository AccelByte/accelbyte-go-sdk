// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type FriendsService struct {
	Client          *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserFriendsUpdatedShort instead
func (f *FriendsService) GetUserFriendsUpdated(input *friends.GetUserFriendsUpdatedParams) ([]*lobbyclientmodels.ModelGetUserFriendsResponse, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserFriendsUpdated(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserIncomingFriends(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.GetUserOutgoingFriends(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, unprocessableEntity, internalServerError, err := f.Client.Friends.UserRequestFriend(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserAcceptFriendRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserCancelFriendRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserRejectFriendRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.UserGetFriendshipStatus(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := f.Client.Friends.UserUnfriendRequest(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.AddFriendsWithoutConfirmation(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.Friends.GetListOfFriends(input, client.BearerToken(*accessToken.AccessToken))
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

func (f *FriendsService) GetUserFriendsUpdatedShort(input *friends.GetUserFriendsUpdatedParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelGetUserFriendsResponse, error) {
	ok, err := f.Client.Friends.GetUserFriendsUpdatedShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FriendsService) GetUserIncomingFriendsShort(input *friends.GetUserIncomingFriendsParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelGetUserIncomingFriendsResponse, error) {
	ok, err := f.Client.Friends.GetUserIncomingFriendsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FriendsService) GetUserOutgoingFriendsShort(input *friends.GetUserOutgoingFriendsParams, authInfo runtime.ClientAuthInfoWriter) ([]*lobbyclientmodels.ModelGetUserOutgoingFriendsResponse, error) {
	ok, err := f.Client.Friends.GetUserOutgoingFriendsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FriendsService) UserRequestFriendShort(input *friends.UserRequestFriendParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.UserRequestFriendShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) UserAcceptFriendRequestShort(input *friends.UserAcceptFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.UserAcceptFriendRequestShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) UserCancelFriendRequestShort(input *friends.UserCancelFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.UserCancelFriendRequestShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) UserRejectFriendRequestShort(input *friends.UserRejectFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.UserRejectFriendRequestShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) UserGetFriendshipStatusShort(input *friends.UserGetFriendshipStatusParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelUserGetFriendshipStatusResponse, error) {
	ok, err := f.Client.Friends.UserGetFriendshipStatusShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FriendsService) UserUnfriendRequestShort(input *friends.UserUnfriendRequestParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.UserUnfriendRequestShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) AddFriendsWithoutConfirmationShort(input *friends.AddFriendsWithoutConfirmationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := f.Client.Friends.AddFriendsWithoutConfirmationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (f *FriendsService) GetListOfFriendsShort(input *friends.GetListOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*lobbyclientmodels.ModelGetFriendsResponse, error) {
	ok, err := f.Client.Friends.GetListOfFriendsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
