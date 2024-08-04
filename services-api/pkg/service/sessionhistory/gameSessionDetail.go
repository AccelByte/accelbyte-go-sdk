// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionhistory

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
	"github.com/go-openapi/runtime/client"
)

type GameSessionDetailService struct {
	Client           *sessionhistoryclient.JusticeSessionhistoryService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdGameSessionDetail *string

func (aaa *GameSessionDetailService) UpdateFlightId(flightId string) {
	tempFlightIdGameSessionDetail = &flightId
}

func (aaa *GameSessionDetailService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminQueryGameSessionDetailShort instead.
func (aaa *GameSessionDetailService) AdminQueryGameSessionDetail(input *game_session_detail.AdminQueryGameSessionDetailParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminQueryGameSessionDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetGameSessionDetailShort instead.
func (aaa *GameSessionDetailService) GetGameSessionDetail(input *game_session_detail.GetGameSessionDetailParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetail, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.GameSessionDetail.GetGameSessionDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminQueryMatchmakingDetailShort instead.
func (aaa *GameSessionDetailService) AdminQueryMatchmakingDetail(input *game_session_detail.AdminQueryMatchmakingDetailParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetailQueryResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminQueryMatchmakingDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminGetMatchmakingDetailBySessionIDShort instead.
func (aaa *GameSessionDetailService) AdminGetMatchmakingDetailBySessionID(input *game_session_detail.AdminGetMatchmakingDetailBySessionIDParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetail, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminGetMatchmakingDetailBySessionID(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminGetMatchmakingDetailByTicketIDShort instead.
func (aaa *GameSessionDetailService) AdminGetMatchmakingDetailByTicketID(input *game_session_detail.AdminGetMatchmakingDetailByTicketIDParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetail, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminGetMatchmakingDetailByTicketID(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminQueryPartyDetailShort instead.
func (aaa *GameSessionDetailService) AdminQueryPartyDetail(input *game_session_detail.AdminQueryPartyDetailParams) (*sessionhistoryclientmodels.ApimodelsPartyDetailQueryResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminQueryPartyDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetPartyDetailShort instead.
func (aaa *GameSessionDetailService) GetPartyDetail(input *game_session_detail.GetPartyDetailParams) (*sessionhistoryclientmodels.ApimodelsPartyDetail, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.GameSessionDetail.GetPartyDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminQueryTicketDetailShort instead.
func (aaa *GameSessionDetailService) AdminQueryTicketDetail(input *game_session_detail.AdminQueryTicketDetailParams) (*sessionhistoryclientmodels.ApimodelsTicketDetailQueryResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminQueryTicketDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use AdminTicketDetailGetByTicketIDShort instead.
func (aaa *GameSessionDetailService) AdminTicketDetailGetByTicketID(input *game_session_detail.AdminTicketDetailGetByTicketIDParams) (*sessionhistoryclientmodels.ApimodelsTicketObservabilityDetail, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.GameSessionDetail.AdminTicketDetailGetByTicketID(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicQueryGameSessionMeShort instead.
func (aaa *GameSessionDetailService) PublicQueryGameSessionMe(input *game_session_detail.PublicQueryGameSessionMeParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, tooManyRequests, internalServerError, err := aaa.Client.GameSessionDetail.PublicQueryGameSessionMe(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if tooManyRequests != nil {
		return nil, tooManyRequests
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminQueryGameSessionDetailShort(input *game_session_detail.AdminQueryGameSessionDetailParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminQueryGameSessionDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) GetGameSessionDetailShort(input *game_session_detail.GetGameSessionDetailParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetail, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.GetGameSessionDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminQueryMatchmakingDetailShort(input *game_session_detail.AdminQueryMatchmakingDetailParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetailQueryResponse, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminQueryMatchmakingDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminGetMatchmakingDetailBySessionIDShort(input *game_session_detail.AdminGetMatchmakingDetailBySessionIDParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetail, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminGetMatchmakingDetailBySessionIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminGetMatchmakingDetailByTicketIDShort(input *game_session_detail.AdminGetMatchmakingDetailByTicketIDParams) (*sessionhistoryclientmodels.ApimodelsMatchmakingDetail, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminGetMatchmakingDetailByTicketIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminQueryPartyDetailShort(input *game_session_detail.AdminQueryPartyDetailParams) (*sessionhistoryclientmodels.ApimodelsPartyDetailQueryResponse, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminQueryPartyDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) GetPartyDetailShort(input *game_session_detail.GetPartyDetailParams) (*sessionhistoryclientmodels.ApimodelsPartyDetail, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.GetPartyDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminQueryTicketDetailShort(input *game_session_detail.AdminQueryTicketDetailParams) (*sessionhistoryclientmodels.ApimodelsTicketDetailQueryResponse, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminQueryTicketDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) AdminTicketDetailGetByTicketIDShort(input *game_session_detail.AdminTicketDetailGetByTicketIDParams) (*sessionhistoryclientmodels.ApimodelsTicketObservabilityDetail, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.AdminTicketDetailGetByTicketIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *GameSessionDetailService) PublicQueryGameSessionMeShort(input *game_session_detail.PublicQueryGameSessionMeParams) (*sessionhistoryclientmodels.ApimodelsGameSessionDetailQueryResponse, error) {
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
	if tempFlightIdGameSessionDetail != nil {
		input.XFlightId = tempFlightIdGameSessionDetail
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GameSessionDetail.PublicQueryGameSessionMeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
