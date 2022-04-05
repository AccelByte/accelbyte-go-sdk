// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type ServerService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use DeregisterLocalServerShort instead
func (s *ServerService) DeregisterLocalServer(input *server.DeregisterLocalServerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := s.Client.Server.DeregisterLocalServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use RegisterLocalServerShort instead
func (s *ServerService) RegisterLocalServer(input *server.RegisterLocalServerParams) (*dsmcclientmodels.ModelsServer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := s.Client.Server.RegisterLocalServer(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RegisterServerShort instead
func (s *ServerService) RegisterServer(input *server.RegisterServerParams) (*dsmcclientmodels.ModelsServer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, conflict, internalServerError, err := s.Client.Server.RegisterServer(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ShutdownServerShort instead
func (s *ServerService) ShutdownServer(input *server.ShutdownServerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := s.Client.Server.ShutdownServer(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
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

// Deprecated: Use GetServerSessionShort instead
func (s *ServerService) GetServerSession(input *server.GetServerSessionParams) (*dsmcclientmodels.ModelsServerSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := s.Client.Server.GetServerSession(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *ServerService) DeregisterLocalServerShort(input *server.DeregisterLocalServerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Server.DeregisterLocalServerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (s *ServerService) RegisterLocalServerShort(input *server.RegisterLocalServerParams) (*dsmcclientmodels.ModelsServer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Server.RegisterLocalServerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *ServerService) RegisterServerShort(input *server.RegisterServerParams) (*dsmcclientmodels.ModelsServer, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Server.RegisterServerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *ServerService) ShutdownServerShort(input *server.ShutdownServerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Server.ShutdownServerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (s *ServerService) GetServerSessionShort(input *server.GetServerSessionParams) (*dsmcclientmodels.ModelsServerSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Server.GetServerSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
