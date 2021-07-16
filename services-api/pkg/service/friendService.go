package service

import (
	"encoding/json"
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/friends"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type FriendService struct {
	LobbyClient     *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (friendService *FriendService) AddFriends(friendIds []string, namespace, userId string) error {
	accessToken, err := friendService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &friends.AddFriendsWithoutConfirmationParams{
		Body: &lobbyclientmodels.ModelBulkAddFriendsRequest{
			FriendIds: friendIds,
		},
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, forbidden, serverError, err :=
		friendService.LobbyClient.Friends.AddFriendsWithoutConfirmation(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if serverError != nil {
		errorMsg, _ := json.Marshal(*serverError.GetPayload())
		logrus.Error(string(errorMsg))
		return serverError
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (friendService *FriendService) GetFriends(namespace, userId, limit, offset string) (*lobbyclientmodels.ModelGetFriendsResponse, error) {
	accessToken, err := friendService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &friends.GetListOfFriendsParams{
		Limit:     &limit,
		Namespace: namespace,
		Offset:    &offset,
		UserID:    userId,
	}
	listOfFriends, badRequest, unauthorized, forbidden, serverError, err :=
		friendService.LobbyClient.Friends.GetListOfFriends(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if serverError != nil {
		errorMsg, _ := json.Marshal(*serverError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, serverError
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	if listOfFriends == nil {
		return nil, errors.New("list of friends is empty")
	}
	return listOfFriends.GetPayload(), nil
}
