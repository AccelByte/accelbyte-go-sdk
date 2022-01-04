// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/social_matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type SocialMatchmakingService struct {
	Client          *matchmakingclient.JusticeMatchmakingService
	TokenRepository repository.TokenRepository
}

func (s *SocialMatchmakingService) UpdatePlayTimeWeight(input *social_matchmaking.UpdatePlayTimeWeightParams) (*matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := s.Client.SocialMatchmaking.UpdatePlayTimeWeight(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *SocialMatchmakingService) UpdatePlayTimeWeightShort(input *social_matchmaking.UpdatePlayTimeWeightParams, authInfo runtime.ClientAuthInfoWriter) (*matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse, error) {
	ok, err := s.Client.SocialMatchmaking.UpdatePlayTimeWeightShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
