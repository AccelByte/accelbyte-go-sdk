package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/concurrent_record"

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

// AdminDeleteGameRecordHandlerV1 is used to purge all records under the given key
func (couldSaveService *CloudSaveService) AdminDeleteGameRecordHandlerV1(key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_game_record.AdminDeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminGameRecord.AdminDeleteGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// AdminGetGameRecordHandlerV1 is used to retrieve a record value by its key
func (couldSaveService *CloudSaveService) AdminGetGameRecordHandlerV1(key, namespace string) (*cloudsaveclientmodels.ModelsGameRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &admin_game_record.AdminGetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminGameRecord.AdminGetGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// AdminPostGameRecordHandlerV1 is used to save namespace level record
func (couldSaveService *CloudSaveService) AdminPostGameRecordHandlerV1(body cloudsaveclientmodels.ModelsGameRecordRequest, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_game_record.AdminPostGameRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminGameRecord.AdminPostGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// AdminPutGameRecordHandlerV1 is used to save or replace game record
func (couldSaveService *CloudSaveService) AdminPutGameRecordHandlerV1(body cloudsaveclientmodels.ModelsGameRecordRequest, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_game_record.AdminPutGameRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminGameRecord.AdminPutGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// ListGameRecordsHandlerV1 is used to retrieve a record value by its key
func (couldSaveService *CloudSaveService) ListGameRecordsHandlerV1(namespace string, limit, offset int64) (*cloudsaveclientmodels.ModelsListGameRecordKeys, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &admin_game_record.ListGameRecordsHandlerV1Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminGameRecord.ListGameRecordsHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// AdminDeletePlayerPublicRecordHandlerV1 is used to delete player public record based on its key
func (couldSaveService *CloudSaveService) AdminDeletePlayerPublicRecordHandlerV1(key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminDeletePlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminDeletePlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// AdminDeletePlayerRecordHandlerV1 is used to purge player record based on its key
func (couldSaveService *CloudSaveService) AdminDeletePlayerRecordHandlerV1(key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminDeletePlayerRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminDeletePlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// AdminGetPlayerPublicRecordHandlerV1 is used to retrieve a record value by its key
func (couldSaveService *CloudSaveService) AdminGetPlayerPublicRecordHandlerV1(key, namespace, userId string) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &admin_player_record.AdminGetPlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminGetPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// AdminGetPlayerRecordHandlerV1 is used to retrieve a record value by its key
func (couldSaveService *CloudSaveService) AdminGetPlayerRecordHandlerV1(key, namespace, userId string) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &admin_player_record.AdminGetPlayerRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminGetPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// AdminPostPlayerPublicRecordHandlerV1 is used to save user level record
func (couldSaveService *CloudSaveService) AdminPostPlayerPublicRecordHandlerV1(body cloudsaveclientmodels.ModelsPlayerRecordRequest, key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminPostPlayerPublicRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminPostPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

// AdminPostPlayerRecordHandlerV1 is used to save user level record
func (couldSaveService *CloudSaveService) AdminPostPlayerRecordHandlerV1(body cloudsaveclientmodels.ModelsPlayerRecordRequest, key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminPostPlayerRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminPostPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// AdminPutPlayerPublicRecordHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) AdminPutPlayerPublicRecordHandlerV1(body cloudsaveclientmodels.ModelsPlayerRecordRequest, key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminPutPlayerPublicRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminPutPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

// AdminPutPlayerRecordHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) AdminPutPlayerRecordHandlerV1(body cloudsaveclientmodels.ModelsPlayerRecordRequest, key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &admin_player_record.AdminPutPlayerRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.AdminPutPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// ListPlayerRecordHandlerV1 is used to retrieve list of public player records
func (couldSaveService *CloudSaveService) ListPlayerRecordHandlerV1(namespace string, query *string, limit, offset *int64) (*cloudsaveclientmodels.ModelsListPlayerRecordKeys, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &admin_player_record.ListPlayerRecordHandlerV1Params{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Query:     query,
	}
	ok, badRequest, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.AdminPlayerRecord.ListPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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

// PutGameRecordConcurrentHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) PutGameRecordConcurrentHandlerV1(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &concurrent_record.PutGameRecordConcurrentHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := couldSaveService.CloudSaveServiceClient.ConcurrentRecord.PutGameRecordConcurrentHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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
	if preconditionFailed != nil {
		errorMsg, _ := json.Marshal(*preconditionFailed.GetPayload())
		logrus.Error(string(errorMsg))
		return preconditionFailed
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

// PutPlayerPublicRecordConcurrentHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) PutPlayerPublicRecordConcurrentHandlerV1(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest, key, namespace, userId string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &concurrent_record.PutPlayerPublicRecordConcurrentHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, preconditionFailed, internalServerError, err := couldSaveService.CloudSaveServiceClient.ConcurrentRecord.PutPlayerPublicRecordConcurrentHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
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
	if preconditionFailed != nil {
		errorMsg, _ := json.Marshal(*preconditionFailed.GetPayload())
		logrus.Error(string(errorMsg))
		return preconditionFailed
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

// PostGameRecordHandlerV1 is used for create or append game record
func (couldSaveService *CloudSaveService) PostGameRecordHandlerV1(body cloudsaveclientmodels.ModelsGameRecordRequest, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
	}
	_, badRequest, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.PostGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
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

// GetGameRecordHandlerV1 is used to get game record
func (couldSaveService *CloudSaveService) GetGameRecordHandlerV1(key, namespace string) (*cloudsaveclientmodels.ModelsGameRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &public_game_record.GetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.GetGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// DeleteGameRecordHandlerV1 is used to delete game record
func (couldSaveService *CloudSaveService) DeleteGameRecordHandlerV1(key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.DeleteGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// PutGameRecordHandlerV1 is used for create or append game record
func (couldSaveService *CloudSaveService) PutGameRecordHandlerV1(body cloudsaveclientmodels.ModelsGameRecordRequest, key, namespace string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_game_record.PutGameRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
	}
	_, badRequest, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicGameRecord.PutGameRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
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

// PostPlayerPublicRecordHandlerV1 is used to create public player record
func (couldSaveService *CloudSaveService) PostPlayerPublicRecordHandlerV1(userId, namespace, key string, content map[string]string) error {
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
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// GetPlayerPublicRecordHandlerV1 is used to get other player's public record
func (couldSaveService *CloudSaveService) GetPlayerPublicRecordHandlerV1(userId, namespace, key string) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServerError, err :=
		couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// DeletePlayerRecordHandlerV1 is used to delete player record
func (couldSaveService *CloudSaveService) DeletePlayerRecordHandlerV1(userId, namespace, key string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.DeletePlayerRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.DeletePlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// GetPlayerRecordHandlerV1 is used to get player record
func (couldSaveService *CloudSaveService) GetPlayerRecordHandlerV1(userId, namespace, key string) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &public_player_record.GetPlayerRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServerError, err :=
		couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.GetPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
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

// PostPlayerRecordHandlerV1 is used to create or append player record
func (couldSaveService *CloudSaveService) PostPlayerRecordHandlerV1(userId, namespace, key string, body cloudsaveclientmodels.ModelsPlayerRecordRequest) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.PostPlayerRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PostPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// PublicDeletePlayerPublicRecordHandlerV1 is used to delete player public record based on its key
func (couldSaveService *CloudSaveService) PublicDeletePlayerPublicRecordHandlerV1(namespace, key string) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: namespace,
	}
	_, unauthorized, notFound, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// PutPlayerPublicRecordHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) PutPlayerPublicRecordHandlerV1(userId, namespace, key string, body cloudsaveclientmodels.ModelsPlayerRecordRequest) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.PutPlayerPublicRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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

// PutPlayerRecordHandlerV1 is used to create or replace player record
func (couldSaveService *CloudSaveService) PutPlayerRecordHandlerV1(userId, namespace, key string, body cloudsaveclientmodels.ModelsPlayerRecordRequest) error {
	accessToken, err := couldSaveService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &public_player_record.PutPlayerRecordHandlerV1Params{
		Body:      body,
		Key:       key,
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, internalServerError, err := couldSaveService.CloudSaveServiceClient.PublicPlayerRecord.PutPlayerRecordHandlerV1(param, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
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
