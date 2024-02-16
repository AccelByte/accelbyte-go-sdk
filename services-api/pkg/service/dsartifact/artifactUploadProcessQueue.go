// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue"
	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ArtifactUploadProcessQueueService struct {
	Client           *dsartifactclient.JusticeDsartifactService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdArtifactUploadProcessQueue *string

func (aaa *ArtifactUploadProcessQueueService) UpdateFlightId(flightId string) {
	tempFlightIdArtifactUploadProcessQueue = &flightId
}

func (aaa *ArtifactUploadProcessQueueService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use ListNodesIPAddressShort instead.
func (aaa *ArtifactUploadProcessQueueService) ListNodesIPAddress(input *artifact_upload_process_queue.ListNodesIPAddressParams) (*dsartifactclientmodels.ModelsListNodesIPAddress, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.ListNodesIPAddress(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use DeleteNodeByIDShort instead.
func (aaa *ArtifactUploadProcessQueueService) DeleteNodeByID(input *artifact_upload_process_queue.DeleteNodeByIDParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.DeleteNodeByID(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ListQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) ListQueue(input *artifact_upload_process_queue.ListQueueParams) (*dsartifactclientmodels.ModelsListQueueResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.ListQueue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use GetActiveQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) GetActiveQueue(input *artifact_upload_process_queue.GetActiveQueueParams) (*dsartifactclientmodels.ModelsQueue, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.GetActiveQueue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use SetActiveQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) SetActiveQueue(input *artifact_upload_process_queue.SetActiveQueueParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.SetActiveQueue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteActiveQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) DeleteActiveQueue(input *artifact_upload_process_queue.DeleteActiveQueueParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.DeleteActiveQueue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ReportFailedUploadShort instead.
func (aaa *ArtifactUploadProcessQueueService) ReportFailedUpload(input *artifact_upload_process_queue.ReportFailedUploadParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.ReportFailedUpload(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) DeleteQueue(input *artifact_upload_process_queue.DeleteQueueParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.DeleteQueue(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ListAllActiveQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) ListAllActiveQueue(input *artifact_upload_process_queue.ListAllActiveQueueParams) (*dsartifactclientmodels.ModelsListAllQueueResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.ListAllActiveQueue(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ListAllQueueShort instead.
func (aaa *ArtifactUploadProcessQueueService) ListAllQueue(input *artifact_upload_process_queue.ListAllQueueParams) (*dsartifactclientmodels.ModelsListAllQueueResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.ArtifactUploadProcessQueue.ListAllQueue(input, client.BearerToken(*token.AccessToken))
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

func (aaa *ArtifactUploadProcessQueueService) ListNodesIPAddressShort(input *artifact_upload_process_queue.ListNodesIPAddressParams) (*dsartifactclientmodels.ModelsListNodesIPAddress, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListNodesIPAddressShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteNodeByIDShort(input *artifact_upload_process_queue.DeleteNodeByIDParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteNodeByIDShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ListQueueShort(input *artifact_upload_process_queue.ListQueueParams) (*dsartifactclientmodels.ModelsListQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ArtifactUploadProcessQueueService) GetActiveQueueShort(input *artifact_upload_process_queue.GetActiveQueueParams) (*dsartifactclientmodels.ModelsQueue, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.GetActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ArtifactUploadProcessQueueService) SetActiveQueueShort(input *artifact_upload_process_queue.SetActiveQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.SetActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteActiveQueueShort(input *artifact_upload_process_queue.DeleteActiveQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ReportFailedUploadShort(input *artifact_upload_process_queue.ReportFailedUploadParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.ReportFailedUploadShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteQueueShort(input *artifact_upload_process_queue.DeleteQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ListAllActiveQueueShort(input *artifact_upload_process_queue.ListAllActiveQueueParams) (*dsartifactclientmodels.ModelsListAllQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListAllActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ArtifactUploadProcessQueueService) ListAllQueueShort(input *artifact_upload_process_queue.ListAllQueueParams) (*dsartifactclientmodels.ModelsListAllQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListAllQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
