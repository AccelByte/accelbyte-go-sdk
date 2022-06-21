// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package qosm

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ServerService struct {
	Client                 *qosmclient.JusticeQosmService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (s *ServerService) GetAuthSession() auth.Session {
	if s.RefreshTokenRepository != nil {
		return auth.Session{
			s.TokenRepository,
			s.ConfigRepository,
			s.RefreshTokenRepository,
		}
	}

	return auth.Session{
		s.TokenRepository,
		s.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use HeartbeatShort instead
func (s *ServerService) Heartbeat(input *server.HeartbeatParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := s.Client.Server.Heartbeat(input, client.BearerToken(*token.AccessToken))
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

func (s *ServerService) HeartbeatShort(input *server.HeartbeatParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  s.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := s.Client.Server.HeartbeatShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
