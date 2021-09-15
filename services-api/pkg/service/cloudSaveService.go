package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type CloudSaveService struct {
	CloudSaveServiceClient *cloudsaveclient.JusticeCloudsaveService
	TokenRepository        repository.TokenRepository
}

func (couldSaveService *CloudSaveService) CreateGameRecord(content map[string]string, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      content,
		Key:       key,
		Namespace: namespace,
	}
	_, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.PostGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

func (couldSaveService *CloudSaveService) GetGameRecord(key, namespace string) (*cloudsaveclientmodels.ModelsGameRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &public_game_record.GetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	ok, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.GetGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

func (couldSaveService *CloudSaveService) DeleteGameRecord(key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	_, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.DeleteGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

func (couldSaveService *CloudSaveService) CreatePlayerRecord(userId, namespace, key string, content map[string]string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.PostPlayerPublicRecordHandlerV1Params{
		Body:      content,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

func (couldSaveService *CloudSaveService) GetPlayerRecord(userId, namespace, key string) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	playerRecords, internalServerError, err :=
		couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		errorMsg, _ := json.Marshal(*internalServerError.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServerError
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return playerRecords.GetPayload(), nil
}

func (couldSaveService *CloudSaveService) DeletePlayerRecord(userId, namespace, key string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.DeletePlayerRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.DeletePlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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
