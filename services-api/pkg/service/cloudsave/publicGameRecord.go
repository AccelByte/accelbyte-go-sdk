// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cloudsave

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PublicGameRecordService struct {
	Client          *cloudsaveclient.JusticeCloudsaveService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetGameRecordHandlerV1Short instead
func (p *PublicGameRecordService) GetGameRecordHandlerV1(input *public_game_record.GetGameRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsGameRecordResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicGameRecord.GetGameRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PutGameRecordHandlerV1Short instead
func (p *PublicGameRecordService) PutGameRecordHandlerV1(input *public_game_record.PutGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := p.Client.PublicGameRecord.PutGameRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PostGameRecordHandlerV1Short instead
func (p *PublicGameRecordService) PostGameRecordHandlerV1(input *public_game_record.PostGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := p.Client.PublicGameRecord.PostGameRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteGameRecordHandlerV1Short instead
func (p *PublicGameRecordService) DeleteGameRecordHandlerV1(input *public_game_record.DeleteGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := p.Client.PublicGameRecord.DeleteGameRecordHandlerV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicGameRecordService) GetGameRecordHandlerV1Short(input *public_game_record.GetGameRecordHandlerV1Params) (*cloudsaveclientmodels.ModelsGameRecordResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicGameRecord.GetGameRecordHandlerV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicGameRecordService) PutGameRecordHandlerV1Short(input *public_game_record.PutGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PublicGameRecord.PutGameRecordHandlerV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicGameRecordService) PostGameRecordHandlerV1Short(input *public_game_record.PostGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PublicGameRecord.PostGameRecordHandlerV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (p *PublicGameRecordService) DeleteGameRecordHandlerV1Short(input *public_game_record.DeleteGameRecordHandlerV1Params) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.PublicGameRecord.DeleteGameRecordHandlerV1Short(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}
