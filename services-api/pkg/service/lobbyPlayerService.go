package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type LobbyPlayerService struct {
	LobbyClient     *lobbyclient.JusticeLobbyService
	TokenRepository repository.TokenRepository
}

func (l *LobbyPlayerService) AdminBulkBlockPlayersV1(body *lobbyclientmodels.ModelsListBlockedPlayerRequest, namespace, userID string) (int64, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return -1, err
	}
	params := &player.AdminBulkBlockPlayersV1Params{
		Body:      body,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := l.LobbyClient.Player.AdminBulkBlockPlayersV1(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return -1, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return -1, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return -1, forbidden
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return -1, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return -1, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) AdminGetAllPlayerSessionAttribute(namespace, userID string) (*lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.AdminGetAllPlayerSessionAttributeParams{
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.AdminGetAllPlayerSessionAttribute(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) AdminGetPlayerBlockedByPlayersV1(namespace, userID string) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.AdminGetPlayerBlockedByPlayersV1Params{
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.AdminGetPlayerBlockedByPlayersV1(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) AdminGetPlayerBlockedPlayersV1(namespace, userID string) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.AdminGetPlayerBlockedPlayersV1Params{
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.AdminGetPlayerBlockedPlayersV1(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) AdminGetPlayerSessionAttribute(attribute, namespace, userID string) (*lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.AdminGetPlayerSessionAttributeParams{
		Attribute: attribute,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.AdminGetPlayerSessionAttribute(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) AdminSetPlayerSessionAttribute(body *lobbyclientmodels.ModelsSetPlayerSessionAttributeRequest, namespace, userID string) error {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &player.AdminSetPlayerSessionAttributeParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userID,
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.AdminSetPlayerSessionAttribute(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (l *LobbyPlayerService) PublicGetPlayerBlockedByPlayersV1(namespace string) (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.PublicGetPlayerBlockedByPlayersV1Params{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.PublicGetPlayerBlockedByPlayersV1(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (l *LobbyPlayerService) PublicGetPlayerBlockedPlayersV1(namespace string) (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, error) {
	token, err := l.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &player.PublicGetPlayerBlockedPlayersV1Params{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := l.LobbyClient.Player.PublicGetPlayerBlockedPlayersV1(params, client.BearerToken(*token.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
