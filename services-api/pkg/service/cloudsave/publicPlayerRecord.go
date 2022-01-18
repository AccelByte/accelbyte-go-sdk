// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PublicPlayerRecordService struct {
	Client          *cloudsaveclient.JusticeCloudsaveService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use BulkGetPlayerPublicRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) BulkGetPlayerPublicRecordHandlerV1(input *public_player_record.BulkGetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := p.Client.PublicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicDeletePlayerPublicRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) PublicDeletePlayerPublicRecordHandlerV1(input *public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := p.Client.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: Use GetPlayerRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) GetPlayerRecordHandlerV1(input *public_player_record.GetPlayerRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicPlayerRecord.GetPlayerRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PutPlayerRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) PutPlayerRecordHandlerV1(input *public_player_record.PutPlayerRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := p.Client.PublicPlayerRecord.PutPlayerRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PostPlayerRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) PostPlayerRecordHandlerV1(input *public_player_record.PostPlayerRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := p.Client.PublicPlayerRecord.PostPlayerRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeletePlayerRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) DeletePlayerRecordHandlerV1(input *public_player_record.DeletePlayerRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := p.Client.PublicPlayerRecord.DeletePlayerRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetPlayerPublicRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) GetPlayerPublicRecordHandlerV1(input *public_player_record.GetPlayerPublicRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PutPlayerPublicRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) PutPlayerPublicRecordHandlerV1(input *public_player_record.PutPlayerPublicRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := p.Client.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PostPlayerPublicRecordHandlerV1Short instead
func (p *PublicPlayerRecordService) PostPlayerPublicRecordHandlerV1(input *public_player_record.PostPlayerPublicRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := p.Client.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicPlayerRecordService) BulkGetPlayerPublicRecordHandlerV1Short(input *public_player_record.BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse, error) {
	ok, err := p.Client.PublicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicPlayerRecordService) PublicDeletePlayerPublicRecordHandlerV1Short(input *public_player_record.PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicPlayerRecordService) GetPlayerRecordHandlerV1Short(input *public_player_record.GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	ok, err := p.Client.PublicPlayerRecord.GetPlayerRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicPlayerRecordService) PutPlayerRecordHandlerV1Short(input *public_player_record.PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.PutPlayerRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicPlayerRecordService) PostPlayerRecordHandlerV1Short(input *public_player_record.PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.PostPlayerRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicPlayerRecordService) DeletePlayerRecordHandlerV1Short(input *public_player_record.DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.DeletePlayerRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicPlayerRecordService) GetPlayerPublicRecordHandlerV1Short(input *public_player_record.GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*cloudsaveclientmodels.ModelsPlayerRecord, error) {
	ok, err := p.Client.PublicPlayerRecord.GetPlayerPublicRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicPlayerRecordService) PutPlayerPublicRecordHandlerV1Short(input *public_player_record.PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.PutPlayerPublicRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicPlayerRecordService) PostPlayerPublicRecordHandlerV1Short(input *public_player_record.PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PublicPlayerRecord.PostPlayerPublicRecordHandlerV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}
