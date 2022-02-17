// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sessionbrowser

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
	"github.com/go-openapi/runtime/client"
)

type SessionService struct {
	Client          *sessionbrowserclient.JusticeSessionbrowserService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetTotalActiveSessionShort instead
func (s *SessionService) GetTotalActiveSession(input *session.GetTotalActiveSessionParams) (*sessionbrowserclientmodels.ModelsCountActiveSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.GetTotalActiveSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetActiveCustomGameSessionsShort instead
func (s *SessionService) GetActiveCustomGameSessions(input *session.GetActiveCustomGameSessionsParams) (*sessionbrowserclientmodels.ModelsActiveCustomGameResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.GetActiveCustomGameSessions(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetActiveMatchmakingGameSessionsShort instead
func (s *SessionService) GetActiveMatchmakingGameSessions(input *session.GetActiveMatchmakingGameSessionsParams) (*sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.GetActiveMatchmakingGameSessions(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AdminGetSessionShort instead
func (s *SessionService) AdminGetSession(input *session.AdminGetSessionParams) (*sessionbrowserclientmodels.ModelsAdminSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := s.Client.Session.AdminGetSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use QuerySessionShort instead
func (s *SessionService) QuerySession(input *session.QuerySessionParams) (*sessionbrowserclientmodels.ModelsSessionQueryResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.QuerySession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CreateSessionShort instead
func (s *SessionService) CreateSession(input *session.CreateSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, conflict, internalServerError, err := s.Client.Session.CreateSession(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: Use GetSessionByUserIDsShort instead
func (s *SessionService) GetSessionByUserIDs(input *session.GetSessionByUserIDsParams) (*sessionbrowserclientmodels.ModelsSessionByUserIDsResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.GetSessionByUserIDs(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetSessionShort instead
func (s *SessionService) GetSession(input *session.GetSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := s.Client.Session.GetSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use UpdateSessionShort instead
func (s *SessionService) UpdateSession(input *session.UpdateSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := s.Client.Session.UpdateSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteSessionShort instead
func (s *SessionService) DeleteSession(input *session.DeleteSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := s.Client.Session.DeleteSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use JoinSessionShort instead
func (s *SessionService) JoinSession(input *session.JoinSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, forbidden, notFound, internalServerError, err := s.Client.Session.JoinSession(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
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

// Deprecated: Use DeleteSessionLocalDSShort instead
func (s *SessionService) DeleteSessionLocalDS(input *session.DeleteSessionLocalDSParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := s.Client.Session.DeleteSessionLocalDS(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use AddPlayerToSessionShort instead
func (s *SessionService) AddPlayerToSession(input *session.AddPlayerToSessionParams) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := s.Client.Session.AddPlayerToSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use RemovePlayerFromSessionShort instead
func (s *SessionService) RemovePlayerFromSession(input *session.RemovePlayerFromSessionParams) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := s.Client.Session.RemovePlayerFromSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetRecentPlayerShort instead
func (s *SessionService) GetRecentPlayer(input *session.GetRecentPlayerParams) (*sessionbrowserclientmodels.ModelsRecentPlayerQueryResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := s.Client.Session.GetRecentPlayer(input, client.BearerToken(*accessToken.AccessToken))
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

func (s *SessionService) GetTotalActiveSessionShort(input *session.GetTotalActiveSessionParams) (*sessionbrowserclientmodels.ModelsCountActiveSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetTotalActiveSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) GetActiveCustomGameSessionsShort(input *session.GetActiveCustomGameSessionsParams) (*sessionbrowserclientmodels.ModelsActiveCustomGameResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetActiveCustomGameSessionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) GetActiveMatchmakingGameSessionsShort(input *session.GetActiveMatchmakingGameSessionsParams) (*sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetActiveMatchmakingGameSessionsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) AdminGetSessionShort(input *session.AdminGetSessionParams) (*sessionbrowserclientmodels.ModelsAdminSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.AdminGetSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) QuerySessionShort(input *session.QuerySessionParams) (*sessionbrowserclientmodels.ModelsSessionQueryResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.QuerySessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) CreateSessionShort(input *session.CreateSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.CreateSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) GetSessionByUserIDsShort(input *session.GetSessionByUserIDsParams) (*sessionbrowserclientmodels.ModelsSessionByUserIDsResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetSessionByUserIDsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) GetSessionShort(input *session.GetSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) UpdateSessionShort(input *session.UpdateSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.UpdateSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) DeleteSessionShort(input *session.DeleteSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.DeleteSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) JoinSessionShort(input *session.JoinSessionParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.JoinSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) DeleteSessionLocalDSShort(input *session.DeleteSessionLocalDSParams) (*sessionbrowserclientmodels.ModelsSessionResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.DeleteSessionLocalDSShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) AddPlayerToSessionShort(input *session.AddPlayerToSessionParams) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.AddPlayerToSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) RemovePlayerFromSessionShort(input *session.RemovePlayerFromSessionParams) (*sessionbrowserclientmodels.ModelsAddPlayerResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.RemovePlayerFromSessionShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SessionService) GetRecentPlayerShort(input *session.GetRecentPlayerParams) (*sessionbrowserclientmodels.ModelsRecentPlayerQueryResponse, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Session.GetRecentPlayerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
