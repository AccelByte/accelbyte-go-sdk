// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package game_session

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new game session API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for game session API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryGameSessions(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsOK, *AdminQueryGameSessionsBadRequest, *AdminQueryGameSessionsUnauthorized, *AdminQueryGameSessionsForbidden, *AdminQueryGameSessionsInternalServerError, error)
	AdminQueryGameSessionsShort(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsOK, error)
	AdminQueryGameSessionsByAttributes(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesOK, *AdminQueryGameSessionsByAttributesBadRequest, *AdminQueryGameSessionsByAttributesUnauthorized, *AdminQueryGameSessionsByAttributesForbidden, *AdminQueryGameSessionsByAttributesInternalServerError, error)
	AdminQueryGameSessionsByAttributesShort(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesOK, error)
	AdminDeleteBulkGameSessions(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsOK, *AdminDeleteBulkGameSessionsBadRequest, *AdminDeleteBulkGameSessionsUnauthorized, *AdminDeleteBulkGameSessionsForbidden, *AdminDeleteBulkGameSessionsInternalServerError, error)
	AdminDeleteBulkGameSessionsShort(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsOK, error)
	AdminSetDSReady(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyNoContent, *AdminSetDSReadyBadRequest, *AdminSetDSReadyUnauthorized, *AdminSetDSReadyForbidden, *AdminSetDSReadyInternalServerError, error)
	AdminSetDSReadyShort(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyNoContent, error)
	AdminUpdateDSInformation(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationNoContent, *AdminUpdateDSInformationBadRequest, *AdminUpdateDSInformationUnauthorized, *AdminUpdateDSInformationForbidden, *AdminUpdateDSInformationNotFound, *AdminUpdateDSInformationInternalServerError, error)
	AdminUpdateDSInformationShort(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationNoContent, error)
	AdminKickGameSessionMember(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberNoContent, *AdminKickGameSessionMemberBadRequest, *AdminKickGameSessionMemberUnauthorized, *AdminKickGameSessionMemberForbidden, *AdminKickGameSessionMemberNotFound, *AdminKickGameSessionMemberInternalServerError, error)
	AdminKickGameSessionMemberShort(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberNoContent, error)
	AdminUpdateGameSessionMember(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberOK, *AdminUpdateGameSessionMemberBadRequest, *AdminUpdateGameSessionMemberUnauthorized, *AdminUpdateGameSessionMemberForbidden, *AdminUpdateGameSessionMemberNotFound, *AdminUpdateGameSessionMemberInternalServerError, error)
	AdminUpdateGameSessionMemberShort(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberOK, error)
	CreateGameSession(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionCreated, *CreateGameSessionBadRequest, *CreateGameSessionUnauthorized, *CreateGameSessionForbidden, *CreateGameSessionInternalServerError, error)
	CreateGameSessionShort(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionCreated, error)
	PublicQueryGameSessionsByAttributes(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesOK, *PublicQueryGameSessionsByAttributesBadRequest, *PublicQueryGameSessionsByAttributesUnauthorized, *PublicQueryGameSessionsByAttributesForbidden, *PublicQueryGameSessionsByAttributesInternalServerError, error)
	PublicQueryGameSessionsByAttributesShort(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesOK, error)
	PublicSessionJoinCode(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeOK, *PublicSessionJoinCodeBadRequest, *PublicSessionJoinCodeUnauthorized, *PublicSessionJoinCodeForbidden, *PublicSessionJoinCodeNotFound, *PublicSessionJoinCodeInternalServerError, error)
	PublicSessionJoinCodeShort(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeOK, error)
	GetGameSessionByPodName(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameOK, *GetGameSessionByPodNameBadRequest, *GetGameSessionByPodNameUnauthorized, *GetGameSessionByPodNameForbidden, *GetGameSessionByPodNameNotFound, *GetGameSessionByPodNameInternalServerError, error)
	GetGameSessionByPodNameShort(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameOK, error)
	GetGameSession(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionOK, *GetGameSessionBadRequest, *GetGameSessionUnauthorized, *GetGameSessionForbidden, *GetGameSessionNotFound, *GetGameSessionInternalServerError, error)
	GetGameSessionShort(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionOK, error)
	UpdateGameSession(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionOK, *UpdateGameSessionBadRequest, *UpdateGameSessionUnauthorized, *UpdateGameSessionForbidden, *UpdateGameSessionNotFound, *UpdateGameSessionConflict, *UpdateGameSessionInternalServerError, error)
	UpdateGameSessionShort(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionOK, error)
	DeleteGameSession(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionNoContent, *DeleteGameSessionUnauthorized, *DeleteGameSessionForbidden, *DeleteGameSessionInternalServerError, error)
	DeleteGameSessionShort(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionNoContent, error)
	PatchUpdateGameSession(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionOK, *PatchUpdateGameSessionBadRequest, *PatchUpdateGameSessionUnauthorized, *PatchUpdateGameSessionForbidden, *PatchUpdateGameSessionNotFound, *PatchUpdateGameSessionConflict, *PatchUpdateGameSessionInternalServerError, error)
	PatchUpdateGameSessionShort(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionOK, error)
	UpdateGameSessionBackfillTicketID(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDOK, *UpdateGameSessionBackfillTicketIDUnauthorized, *UpdateGameSessionBackfillTicketIDForbidden, *UpdateGameSessionBackfillTicketIDNotFound, *UpdateGameSessionBackfillTicketIDInternalServerError, error)
	UpdateGameSessionBackfillTicketIDShort(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDOK, error)
	GameSessionGenerateCode(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeOK, *GameSessionGenerateCodeBadRequest, *GameSessionGenerateCodeUnauthorized, *GameSessionGenerateCodeForbidden, *GameSessionGenerateCodeNotFound, *GameSessionGenerateCodeInternalServerError, error)
	GameSessionGenerateCodeShort(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeOK, error)
	PublicRevokeGameSessionCode(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeNoContent, *PublicRevokeGameSessionCodeBadRequest, *PublicRevokeGameSessionCodeUnauthorized, *PublicRevokeGameSessionCodeForbidden, *PublicRevokeGameSessionCodeNotFound, *PublicRevokeGameSessionCodeInternalServerError, error)
	PublicRevokeGameSessionCodeShort(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeNoContent, error)
	PublicGameSessionInvite(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteCreated, *PublicGameSessionInviteNoContent, *PublicGameSessionInviteBadRequest, *PublicGameSessionInviteUnauthorized, *PublicGameSessionInviteNotFound, *PublicGameSessionInviteInternalServerError, error)
	PublicGameSessionInviteShort(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteCreated, error)
	JoinGameSession(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionOK, *JoinGameSessionBadRequest, *JoinGameSessionUnauthorized, *JoinGameSessionForbidden, *JoinGameSessionNotFound, *JoinGameSessionInternalServerError, error)
	JoinGameSessionShort(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionOK, error)
	PublicPromoteGameSessionLeader(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderOK, *PublicPromoteGameSessionLeaderBadRequest, *PublicPromoteGameSessionLeaderUnauthorized, *PublicPromoteGameSessionLeaderForbidden, *PublicPromoteGameSessionLeaderNotFound, *PublicPromoteGameSessionLeaderInternalServerError, error)
	PublicPromoteGameSessionLeaderShort(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderOK, error)
	LeaveGameSession(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionNoContent, *LeaveGameSessionBadRequest, *LeaveGameSessionUnauthorized, *LeaveGameSessionForbidden, *LeaveGameSessionNotFound, *LeaveGameSessionInternalServerError, error)
	LeaveGameSessionShort(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionNoContent, error)
	PublicKickGameSessionMember(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberNoContent, *PublicKickGameSessionMemberBadRequest, *PublicKickGameSessionMemberUnauthorized, *PublicKickGameSessionMemberForbidden, *PublicKickGameSessionMemberNotFound, *PublicKickGameSessionMemberInternalServerError, error)
	PublicKickGameSessionMemberShort(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberNoContent, error)
	PublicGameSessionReject(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectNoContent, *PublicGameSessionRejectBadRequest, *PublicGameSessionRejectUnauthorized, *PublicGameSessionRejectForbidden, *PublicGameSessionRejectNotFound, *PublicGameSessionRejectInternalServerError, error)
	PublicGameSessionRejectShort(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectNoContent, error)
	GetSessionServerSecret(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretOK, *GetSessionServerSecretBadRequest, *GetSessionServerSecretUnauthorized, *GetSessionServerSecretNotFound, *GetSessionServerSecretInternalServerError, error)
	GetSessionServerSecretShort(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretOK, error)
	AppendTeamGameSession(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionOK, *AppendTeamGameSessionUnauthorized, *AppendTeamGameSessionForbidden, *AppendTeamGameSessionNotFound, *AppendTeamGameSessionInternalServerError, error)
	AppendTeamGameSessionShort(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionOK, error)
	PublicGameSessionCancel(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelNoContent, *PublicGameSessionCancelBadRequest, *PublicGameSessionCancelUnauthorized, *PublicGameSessionCancelForbidden, *PublicGameSessionCancelNotFound, *PublicGameSessionCancelInternalServerError, error)
	PublicGameSessionCancelShort(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelNoContent, error)
	PublicQueryMyGameSessions(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsOK, *PublicQueryMyGameSessionsBadRequest, *PublicQueryMyGameSessionsUnauthorized, *PublicQueryMyGameSessionsInternalServerError, error)
	PublicQueryMyGameSessionsShort(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminQueryGameSessionsShort instead.

AdminQueryGameSessions get all game sessions.
Get all game sessions.
*/
func (a *Client) AdminQueryGameSessions(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsOK, *AdminQueryGameSessionsBadRequest, *AdminQueryGameSessionsUnauthorized, *AdminQueryGameSessionsForbidden, *AdminQueryGameSessionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryGameSessionsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryGameSessionsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryGameSessionsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryGameSessionsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryGameSessionsShort get all game sessions.
Get all game sessions.
*/
func (a *Client) AdminQueryGameSessionsShort(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsOK:
		return v, nil
	case *AdminQueryGameSessionsBadRequest:
		return nil, v
	case *AdminQueryGameSessionsUnauthorized:
		return nil, v
	case *AdminQueryGameSessionsForbidden:
		return nil, v
	case *AdminQueryGameSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminQueryGameSessionsByAttributesShort instead.

AdminQueryGameSessionsByAttributes query game sessions by admin
Query game sessions by admin.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) AdminQueryGameSessionsByAttributes(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesOK, *AdminQueryGameSessionsByAttributesBadRequest, *AdminQueryGameSessionsByAttributesUnauthorized, *AdminQueryGameSessionsByAttributesForbidden, *AdminQueryGameSessionsByAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsByAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsByAttributesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryGameSessionsByAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryGameSessionsByAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryGameSessionsByAttributesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryGameSessionsByAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryGameSessionsByAttributesShort query game sessions by admin
Query game sessions by admin.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) AdminQueryGameSessionsByAttributesShort(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsByAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsByAttributesOK:
		return v, nil
	case *AdminQueryGameSessionsByAttributesBadRequest:
		return nil, v
	case *AdminQueryGameSessionsByAttributesUnauthorized:
		return nil, v
	case *AdminQueryGameSessionsByAttributesForbidden:
		return nil, v
	case *AdminQueryGameSessionsByAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteBulkGameSessionsShort instead.

AdminDeleteBulkGameSessions delete bulk game sessions.
Delete bulk game sessions.
*/
func (a *Client) AdminDeleteBulkGameSessions(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsOK, *AdminDeleteBulkGameSessionsBadRequest, *AdminDeleteBulkGameSessionsUnauthorized, *AdminDeleteBulkGameSessionsForbidden, *AdminDeleteBulkGameSessionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteBulkGameSessions",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkGameSessionsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteBulkGameSessionsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteBulkGameSessionsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteBulkGameSessionsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteBulkGameSessionsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteBulkGameSessionsShort delete bulk game sessions.
Delete bulk game sessions.
*/
func (a *Client) AdminDeleteBulkGameSessionsShort(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteBulkGameSessions",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkGameSessionsOK:
		return v, nil
	case *AdminDeleteBulkGameSessionsBadRequest:
		return nil, v
	case *AdminDeleteBulkGameSessionsUnauthorized:
		return nil, v
	case *AdminDeleteBulkGameSessionsForbidden:
		return nil, v
	case *AdminDeleteBulkGameSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSetDSReadyShort instead.

AdminSetDSReady admin set the ds ready to accept connection
When the session template has ds_manual_set_ready as true. Then the DS need to calls this end point in order to notify game client if the DS is ready to accept any game client connection.
*/
func (a *Client) AdminSetDSReady(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyNoContent, *AdminSetDSReadyBadRequest, *AdminSetDSReadyUnauthorized, *AdminSetDSReadyForbidden, *AdminSetDSReadyInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetDSReadyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetDSReady",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetDSReadyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSetDSReadyNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminSetDSReadyBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSetDSReadyUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSetDSReadyForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSetDSReadyInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetDSReadyShort admin set the ds ready to accept connection
When the session template has ds_manual_set_ready as true. Then the DS need to calls this end point in order to notify game client if the DS is ready to accept any game client connection.
*/
func (a *Client) AdminSetDSReadyShort(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetDSReadyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetDSReady",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetDSReadyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetDSReadyNoContent:
		return v, nil
	case *AdminSetDSReadyBadRequest:
		return nil, v
	case *AdminSetDSReadyUnauthorized:
		return nil, v
	case *AdminSetDSReadyForbidden:
		return nil, v
	case *AdminSetDSReadyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateDSInformationShort instead.

AdminUpdateDSInformation update game session ds information for asynchronous process.
This API is used for create custom DS asynchronously flow and is expected to be called after the service receives response from the Async RPC.
*/
func (a *Client) AdminUpdateDSInformation(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationNoContent, *AdminUpdateDSInformationBadRequest, *AdminUpdateDSInformationUnauthorized, *AdminUpdateDSInformationForbidden, *AdminUpdateDSInformationNotFound, *AdminUpdateDSInformationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateDSInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateDSInformation",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateDSInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateDSInformationNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateDSInformationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateDSInformationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateDSInformationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateDSInformationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateDSInformationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateDSInformationShort update game session ds information for asynchronous process.
This API is used for create custom DS asynchronously flow and is expected to be called after the service receives response from the Async RPC.
*/
func (a *Client) AdminUpdateDSInformationShort(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateDSInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateDSInformation",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateDSInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateDSInformationNoContent:
		return v, nil
	case *AdminUpdateDSInformationBadRequest:
		return nil, v
	case *AdminUpdateDSInformationUnauthorized:
		return nil, v
	case *AdminUpdateDSInformationForbidden:
		return nil, v
	case *AdminUpdateDSInformationNotFound:
		return nil, v
	case *AdminUpdateDSInformationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminKickGameSessionMemberShort instead.

AdminKickGameSessionMember kick member from a game session.
Kick member from a game session.
*/
func (a *Client) AdminKickGameSessionMember(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberNoContent, *AdminKickGameSessionMemberBadRequest, *AdminKickGameSessionMemberUnauthorized, *AdminKickGameSessionMemberForbidden, *AdminKickGameSessionMemberNotFound, *AdminKickGameSessionMemberInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminKickGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminKickGameSessionMemberNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminKickGameSessionMemberBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminKickGameSessionMemberUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminKickGameSessionMemberForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminKickGameSessionMemberNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminKickGameSessionMemberInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminKickGameSessionMemberShort kick member from a game session.
Kick member from a game session.
*/
func (a *Client) AdminKickGameSessionMemberShort(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminKickGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminKickGameSessionMemberNoContent:
		return v, nil
	case *AdminKickGameSessionMemberBadRequest:
		return nil, v
	case *AdminKickGameSessionMemberUnauthorized:
		return nil, v
	case *AdminKickGameSessionMemberForbidden:
		return nil, v
	case *AdminKickGameSessionMemberNotFound:
		return nil, v
	case *AdminKickGameSessionMemberInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateGameSessionMemberShort instead.

AdminUpdateGameSessionMember update status of a game session member.
Update a game session member status.
*/
func (a *Client) AdminUpdateGameSessionMember(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberOK, *AdminUpdateGameSessionMemberBadRequest, *AdminUpdateGameSessionMemberUnauthorized, *AdminUpdateGameSessionMemberForbidden, *AdminUpdateGameSessionMemberNotFound, *AdminUpdateGameSessionMemberInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGameSessionMember",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGameSessionMemberOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateGameSessionMemberBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateGameSessionMemberUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateGameSessionMemberForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateGameSessionMemberNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateGameSessionMemberInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGameSessionMemberShort update status of a game session member.
Update a game session member status.
*/
func (a *Client) AdminUpdateGameSessionMemberShort(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGameSessionMember",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGameSessionMemberOK:
		return v, nil
	case *AdminUpdateGameSessionMemberBadRequest:
		return nil, v
	case *AdminUpdateGameSessionMemberUnauthorized:
		return nil, v
	case *AdminUpdateGameSessionMemberForbidden:
		return nil, v
	case *AdminUpdateGameSessionMemberNotFound:
		return nil, v
	case *AdminUpdateGameSessionMemberInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateGameSessionShort instead.

CreateGameSession create a game session.
Create a game session.
Session configuration "name" is mandatory, this API will refer following values from the session template if they're not provided in the request:
- type
- joinability
- autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- attributes
- dsSource
- tieTeamsSessionLifetime
- matchPool
- clientVersion
- deployment
- serverName
- textChat
- autoJoin
- requestedRegions
- preferredClaimKeys
- fallbackClaimKeys
- customURLGRPC

When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
Only applies when the teams partyId is a game session.

Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
User statuses:
1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
6. KICKED: only party leader can kick a member.
7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

Managing the relation between session and lobby websocket connection:
- Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
- If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
- If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
- The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
- By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
- If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.

When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
- A DS will be requested from AMS instead of DSMC.
- The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
- The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
[preferredClaimKeys.., clientVersion, fallbackClaimKeys...]
- ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
for session override can follow guideline in here https://docs.accelbyte.io/gaming-services/services/extend/override-ags-feature/getting-started-with-session-customization-server-dsm/
*/
func (a *Client) CreateGameSession(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionCreated, *CreateGameSessionBadRequest, *CreateGameSessionUnauthorized, *CreateGameSessionForbidden, *CreateGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateGameSessionCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateGameSessionForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateGameSessionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGameSessionShort create a game session.
Create a game session.
Session configuration "name" is mandatory, this API will refer following values from the session template if they're not provided in the request:
- type
- joinability
- autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- attributes
- dsSource
- tieTeamsSessionLifetime
- matchPool
- clientVersion
- deployment
- serverName
- textChat
- autoJoin
- requestedRegions
- preferredClaimKeys
- fallbackClaimKeys
- customURLGRPC

When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
Only applies when the teams partyId is a game session.

Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
User statuses:
1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
6. KICKED: only party leader can kick a member.
7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

Managing the relation between session and lobby websocket connection:
- Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
- If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
- If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
- The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
- By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
- If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.

When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
- A DS will be requested from AMS instead of DSMC.
- The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
- The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
[preferredClaimKeys.., clientVersion, fallbackClaimKeys...]
- ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
for session override can follow guideline in here https://docs.accelbyte.io/gaming-services/services/extend/override-ags-feature/getting-started-with-session-customization-server-dsm/
*/
func (a *Client) CreateGameSessionShort(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGameSessionCreated:
		return v, nil
	case *CreateGameSessionBadRequest:
		return nil, v
	case *CreateGameSessionUnauthorized:
		return nil, v
	case *CreateGameSessionForbidden:
		return nil, v
	case *CreateGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryGameSessionsByAttributesShort instead.

PublicQueryGameSessionsByAttributes query game sessions
Query game sessions.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) PublicQueryGameSessionsByAttributes(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesOK, *PublicQueryGameSessionsByAttributesBadRequest, *PublicQueryGameSessionsByAttributesUnauthorized, *PublicQueryGameSessionsByAttributesForbidden, *PublicQueryGameSessionsByAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryGameSessionsByAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryGameSessionsByAttributesOK:
		return v, nil, nil, nil, nil, nil

	case *PublicQueryGameSessionsByAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicQueryGameSessionsByAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicQueryGameSessionsByAttributesForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublicQueryGameSessionsByAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryGameSessionsByAttributesShort query game sessions
Query game sessions.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) PublicQueryGameSessionsByAttributesShort(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryGameSessionsByAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryGameSessionsByAttributesOK:
		return v, nil
	case *PublicQueryGameSessionsByAttributesBadRequest:
		return nil, v
	case *PublicQueryGameSessionsByAttributesUnauthorized:
		return nil, v
	case *PublicQueryGameSessionsByAttributesForbidden:
		return nil, v
	case *PublicQueryGameSessionsByAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSessionJoinCodeShort instead.

PublicSessionJoinCode join a session by code.
Join a session by code. The user can join a session as long as the code is valid
*/
func (a *Client) PublicSessionJoinCode(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeOK, *PublicSessionJoinCodeBadRequest, *PublicSessionJoinCodeUnauthorized, *PublicSessionJoinCodeForbidden, *PublicSessionJoinCodeNotFound, *PublicSessionJoinCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSessionJoinCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSessionJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSessionJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSessionJoinCodeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicSessionJoinCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicSessionJoinCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicSessionJoinCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicSessionJoinCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicSessionJoinCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSessionJoinCodeShort join a session by code.
Join a session by code. The user can join a session as long as the code is valid
*/
func (a *Client) PublicSessionJoinCodeShort(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSessionJoinCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSessionJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSessionJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSessionJoinCodeOK:
		return v, nil
	case *PublicSessionJoinCodeBadRequest:
		return nil, v
	case *PublicSessionJoinCodeUnauthorized:
		return nil, v
	case *PublicSessionJoinCodeForbidden:
		return nil, v
	case *PublicSessionJoinCodeNotFound:
		return nil, v
	case *PublicSessionJoinCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameSessionByPodNameShort instead.

GetGameSessionByPodName get game session detail.
Get game session detail by podname.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSessionByPodName(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameOK, *GetGameSessionByPodNameBadRequest, *GetGameSessionByPodNameUnauthorized, *GetGameSessionByPodNameForbidden, *GetGameSessionByPodNameNotFound, *GetGameSessionByPodNameInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionByPodNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameSessionByPodName",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionByPodNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionByPodNameOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetGameSessionByPodNameBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetGameSessionByPodNameUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetGameSessionByPodNameForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetGameSessionByPodNameNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetGameSessionByPodNameInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionByPodNameShort get game session detail.
Get game session detail by podname.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSessionByPodNameShort(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionByPodNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameSessionByPodName",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionByPodNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionByPodNameOK:
		return v, nil
	case *GetGameSessionByPodNameBadRequest:
		return nil, v
	case *GetGameSessionByPodNameUnauthorized:
		return nil, v
	case *GetGameSessionByPodNameForbidden:
		return nil, v
	case *GetGameSessionByPodNameNotFound:
		return nil, v
	case *GetGameSessionByPodNameInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameSessionShort instead.

GetGameSession get game session detail.
Get game session detail.
Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSession(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionOK, *GetGameSessionBadRequest, *GetGameSessionUnauthorized, *GetGameSessionForbidden, *GetGameSessionNotFound, *GetGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameSession",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetGameSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetGameSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetGameSessionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionShort get game session detail.
Get game session detail.
Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSessionShort(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameSession",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionOK:
		return v, nil
	case *GetGameSessionBadRequest:
		return nil, v
	case *GetGameSessionUnauthorized:
		return nil, v
	case *GetGameSessionForbidden:
		return nil, v
	case *GetGameSessionNotFound:
		return nil, v
	case *GetGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGameSessionShort instead.

UpdateGameSession update a game session.
Updates a game session, this endpoint will override stored gamesession data.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
To update DS attributes (clientVersion, deployment, requestedRegions) it will only be applied only as long as no DS has been requested, otherwise ignored.
*/
func (a *Client) UpdateGameSession(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionOK, *UpdateGameSessionBadRequest, *UpdateGameSessionUnauthorized, *UpdateGameSessionForbidden, *UpdateGameSessionNotFound, *UpdateGameSessionConflict, *UpdateGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGameSession",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *UpdateGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *UpdateGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *UpdateGameSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *UpdateGameSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *UpdateGameSessionConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *UpdateGameSessionInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGameSessionShort update a game session.
Updates a game session, this endpoint will override stored gamesession data.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
To update DS attributes (clientVersion, deployment, requestedRegions) it will only be applied only as long as no DS has been requested, otherwise ignored.
*/
func (a *Client) UpdateGameSessionShort(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGameSession",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionOK:
		return v, nil
	case *UpdateGameSessionBadRequest:
		return nil, v
	case *UpdateGameSessionUnauthorized:
		return nil, v
	case *UpdateGameSessionForbidden:
		return nil, v
	case *UpdateGameSessionNotFound:
		return nil, v
	case *UpdateGameSessionConflict:
		return nil, v
	case *UpdateGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGameSessionShort instead.

DeleteGameSession delete a game session.
Delete a game session.
*/
func (a *Client) DeleteGameSession(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionNoContent, *DeleteGameSessionUnauthorized, *DeleteGameSessionForbidden, *DeleteGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameSessionNoContent:
		return v, nil, nil, nil, nil

	case *DeleteGameSessionUnauthorized:
		return nil, v, nil, nil, nil

	case *DeleteGameSessionForbidden:
		return nil, nil, v, nil, nil

	case *DeleteGameSessionInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameSessionShort delete a game session.
Delete a game session.
*/
func (a *Client) DeleteGameSessionShort(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameSessionNoContent:
		return v, nil
	case *DeleteGameSessionUnauthorized:
		return nil, v
	case *DeleteGameSessionForbidden:
		return nil, v
	case *DeleteGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PatchUpdateGameSessionShort instead.

PatchUpdateGameSession patch update a game session.
Update specified fields from game session data.
*/
func (a *Client) PatchUpdateGameSession(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionOK, *PatchUpdateGameSessionBadRequest, *PatchUpdateGameSessionUnauthorized, *PatchUpdateGameSessionForbidden, *PatchUpdateGameSessionNotFound, *PatchUpdateGameSessionConflict, *PatchUpdateGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPatchUpdateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "patchUpdateGameSession",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PatchUpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PatchUpdateGameSessionOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PatchUpdateGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PatchUpdateGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PatchUpdateGameSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PatchUpdateGameSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PatchUpdateGameSessionConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PatchUpdateGameSessionInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PatchUpdateGameSessionShort patch update a game session.
Update specified fields from game session data.
*/
func (a *Client) PatchUpdateGameSessionShort(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPatchUpdateGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "patchUpdateGameSession",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PatchUpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PatchUpdateGameSessionOK:
		return v, nil
	case *PatchUpdateGameSessionBadRequest:
		return nil, v
	case *PatchUpdateGameSessionUnauthorized:
		return nil, v
	case *PatchUpdateGameSessionForbidden:
		return nil, v
	case *PatchUpdateGameSessionNotFound:
		return nil, v
	case *PatchUpdateGameSessionConflict:
		return nil, v
	case *PatchUpdateGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGameSessionBackfillTicketIDShort instead.

UpdateGameSessionBackfillTicketID update game session backfill ticket id .
Update game session backfill ticket id. Will override game session backfill ticket based on given request parameter
*/
func (a *Client) UpdateGameSessionBackfillTicketID(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDOK, *UpdateGameSessionBackfillTicketIDUnauthorized, *UpdateGameSessionBackfillTicketIDForbidden, *UpdateGameSessionBackfillTicketIDNotFound, *UpdateGameSessionBackfillTicketIDInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionBackfillTicketIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGameSessionBackfillTicketID",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionBackfillTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionBackfillTicketIDOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateGameSessionBackfillTicketIDUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *UpdateGameSessionBackfillTicketIDForbidden:
		return nil, nil, v, nil, nil, nil

	case *UpdateGameSessionBackfillTicketIDNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdateGameSessionBackfillTicketIDInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGameSessionBackfillTicketIDShort update game session backfill ticket id .
Update game session backfill ticket id. Will override game session backfill ticket based on given request parameter
*/
func (a *Client) UpdateGameSessionBackfillTicketIDShort(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionBackfillTicketIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGameSessionBackfillTicketID",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionBackfillTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionBackfillTicketIDOK:
		return v, nil
	case *UpdateGameSessionBackfillTicketIDUnauthorized:
		return nil, v
	case *UpdateGameSessionBackfillTicketIDForbidden:
		return nil, v
	case *UpdateGameSessionBackfillTicketIDNotFound:
		return nil, v
	case *UpdateGameSessionBackfillTicketIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GameSessionGenerateCodeShort instead.

GameSessionGenerateCode generate a game session code.
Generate a new code for the game session. Only leader can generate a code.
*/
func (a *Client) GameSessionGenerateCode(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeOK, *GameSessionGenerateCodeBadRequest, *GameSessionGenerateCodeUnauthorized, *GameSessionGenerateCodeForbidden, *GameSessionGenerateCodeNotFound, *GameSessionGenerateCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGameSessionGenerateCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "gameSessionGenerateCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GameSessionGenerateCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GameSessionGenerateCodeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GameSessionGenerateCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GameSessionGenerateCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GameSessionGenerateCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GameSessionGenerateCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GameSessionGenerateCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GameSessionGenerateCodeShort generate a game session code.
Generate a new code for the game session. Only leader can generate a code.
*/
func (a *Client) GameSessionGenerateCodeShort(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGameSessionGenerateCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "gameSessionGenerateCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GameSessionGenerateCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GameSessionGenerateCodeOK:
		return v, nil
	case *GameSessionGenerateCodeBadRequest:
		return nil, v
	case *GameSessionGenerateCodeUnauthorized:
		return nil, v
	case *GameSessionGenerateCodeForbidden:
		return nil, v
	case *GameSessionGenerateCodeNotFound:
		return nil, v
	case *GameSessionGenerateCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRevokeGameSessionCodeShort instead.

PublicRevokeGameSessionCode revoke game session code.
Revoke code of the game session. Only leader can revoke a code.
*/
func (a *Client) PublicRevokeGameSessionCode(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeNoContent, *PublicRevokeGameSessionCodeBadRequest, *PublicRevokeGameSessionCodeUnauthorized, *PublicRevokeGameSessionCodeForbidden, *PublicRevokeGameSessionCodeNotFound, *PublicRevokeGameSessionCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokeGameSessionCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicRevokeGameSessionCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokeGameSessionCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRevokeGameSessionCodeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicRevokeGameSessionCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicRevokeGameSessionCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicRevokeGameSessionCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicRevokeGameSessionCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicRevokeGameSessionCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRevokeGameSessionCodeShort revoke game session code.
Revoke code of the game session. Only leader can revoke a code.
*/
func (a *Client) PublicRevokeGameSessionCodeShort(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokeGameSessionCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicRevokeGameSessionCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokeGameSessionCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRevokeGameSessionCodeNoContent:
		return v, nil
	case *PublicRevokeGameSessionCodeBadRequest:
		return nil, v
	case *PublicRevokeGameSessionCodeUnauthorized:
		return nil, v
	case *PublicRevokeGameSessionCodeForbidden:
		return nil, v
	case *PublicRevokeGameSessionCodeNotFound:
		return nil, v
	case *PublicRevokeGameSessionCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGameSessionInviteShort instead.

PublicGameSessionInvite invite a user to a game session.
Invite a user to a game session.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the game session storage.
*/
func (a *Client) PublicGameSessionInvite(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteCreated, *PublicGameSessionInviteNoContent, *PublicGameSessionInviteBadRequest, *PublicGameSessionInviteUnauthorized, *PublicGameSessionInviteNotFound, *PublicGameSessionInviteInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionInviteParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionInviteCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGameSessionInviteNoContent:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGameSessionInviteBadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGameSessionInviteUnauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGameSessionInviteNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGameSessionInviteInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionInviteShort invite a user to a game session.
Invite a user to a game session.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the game session storage.
*/
func (a *Client) PublicGameSessionInviteShort(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionInviteParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionInviteCreated:
		return v, nil
	case *PublicGameSessionInviteNoContent:
		return nil, v
	case *PublicGameSessionInviteBadRequest:
		return nil, v
	case *PublicGameSessionInviteUnauthorized:
		return nil, v
	case *PublicGameSessionInviteNotFound:
		return nil, v
	case *PublicGameSessionInviteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use JoinGameSessionShort instead.

JoinGameSession join a game session.
Join a game session.
*/
func (a *Client) JoinGameSession(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionOK, *JoinGameSessionBadRequest, *JoinGameSessionUnauthorized, *JoinGameSessionForbidden, *JoinGameSessionNotFound, *JoinGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "joinGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *JoinGameSessionOK:
		return v, nil, nil, nil, nil, nil, nil

	case *JoinGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *JoinGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *JoinGameSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *JoinGameSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *JoinGameSessionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinGameSessionShort join a game session.
Join a game session.
*/
func (a *Client) JoinGameSessionShort(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "joinGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *JoinGameSessionOK:
		return v, nil
	case *JoinGameSessionBadRequest:
		return nil, v
	case *JoinGameSessionUnauthorized:
		return nil, v
	case *JoinGameSessionForbidden:
		return nil, v
	case *JoinGameSessionNotFound:
		return nil, v
	case *JoinGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPromoteGameSessionLeaderShort instead.

PublicPromoteGameSessionLeader promote new game session leader.
Promote game session member to become the new game session leader.

This API requires the NAMESPACE:{namespace}:SESSION:GAME [UPDATE] permission.

This API can be operated by:
- User (game session member) who is the current leader of the game session
- Game Client
- Dedicated Server (DS)

This API will promote game session leader candidate with the following criteria:
- Leader candidate is a member of the game session
- Leader candidate has a "CONNECTED" or "JOINED" status
- If the leader candidate is the current leader, then no promotion process is carried out
*/
func (a *Client) PublicPromoteGameSessionLeader(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderOK, *PublicPromoteGameSessionLeaderBadRequest, *PublicPromoteGameSessionLeaderUnauthorized, *PublicPromoteGameSessionLeaderForbidden, *PublicPromoteGameSessionLeaderNotFound, *PublicPromoteGameSessionLeaderInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromoteGameSessionLeaderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPromoteGameSessionLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromoteGameSessionLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPromoteGameSessionLeaderOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPromoteGameSessionLeaderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPromoteGameSessionLeaderUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPromoteGameSessionLeaderForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPromoteGameSessionLeaderNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPromoteGameSessionLeaderInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPromoteGameSessionLeaderShort promote new game session leader.
Promote game session member to become the new game session leader.

This API requires the NAMESPACE:{namespace}:SESSION:GAME [UPDATE] permission.

This API can be operated by:
- User (game session member) who is the current leader of the game session
- Game Client
- Dedicated Server (DS)

This API will promote game session leader candidate with the following criteria:
- Leader candidate is a member of the game session
- Leader candidate has a "CONNECTED" or "JOINED" status
- If the leader candidate is the current leader, then no promotion process is carried out
*/
func (a *Client) PublicPromoteGameSessionLeaderShort(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromoteGameSessionLeaderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPromoteGameSessionLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromoteGameSessionLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPromoteGameSessionLeaderOK:
		return v, nil
	case *PublicPromoteGameSessionLeaderBadRequest:
		return nil, v
	case *PublicPromoteGameSessionLeaderUnauthorized:
		return nil, v
	case *PublicPromoteGameSessionLeaderForbidden:
		return nil, v
	case *PublicPromoteGameSessionLeaderNotFound:
		return nil, v
	case *PublicPromoteGameSessionLeaderInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use LeaveGameSessionShort instead.

LeaveGameSession leave a game session.
Leave a game session.
*/
func (a *Client) LeaveGameSession(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionNoContent, *LeaveGameSessionBadRequest, *LeaveGameSessionUnauthorized, *LeaveGameSessionForbidden, *LeaveGameSessionNotFound, *LeaveGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLeaveGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "leaveGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LeaveGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *LeaveGameSessionNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *LeaveGameSessionBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *LeaveGameSessionUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *LeaveGameSessionForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *LeaveGameSessionNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *LeaveGameSessionInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LeaveGameSessionShort leave a game session.
Leave a game session.
*/
func (a *Client) LeaveGameSessionShort(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLeaveGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "leaveGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LeaveGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LeaveGameSessionNoContent:
		return v, nil
	case *LeaveGameSessionBadRequest:
		return nil, v
	case *LeaveGameSessionUnauthorized:
		return nil, v
	case *LeaveGameSessionForbidden:
		return nil, v
	case *LeaveGameSessionNotFound:
		return nil, v
	case *LeaveGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicKickGameSessionMemberShort instead.

PublicKickGameSessionMember kick member from a game session, only leader can kick member.
Kick member from a game session, only leader can kick member.
*/
func (a *Client) PublicKickGameSessionMember(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberNoContent, *PublicKickGameSessionMemberBadRequest, *PublicKickGameSessionMemberUnauthorized, *PublicKickGameSessionMemberForbidden, *PublicKickGameSessionMemberNotFound, *PublicKickGameSessionMemberInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicKickGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicKickGameSessionMemberNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicKickGameSessionMemberBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicKickGameSessionMemberUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicKickGameSessionMemberForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicKickGameSessionMemberNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicKickGameSessionMemberInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicKickGameSessionMemberShort kick member from a game session, only leader can kick member.
Kick member from a game session, only leader can kick member.
*/
func (a *Client) PublicKickGameSessionMemberShort(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicKickGameSessionMemberParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicKickGameSessionMemberNoContent:
		return v, nil
	case *PublicKickGameSessionMemberBadRequest:
		return nil, v
	case *PublicKickGameSessionMemberUnauthorized:
		return nil, v
	case *PublicKickGameSessionMemberForbidden:
		return nil, v
	case *PublicKickGameSessionMemberNotFound:
		return nil, v
	case *PublicKickGameSessionMemberInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGameSessionRejectShort instead.

PublicGameSessionReject reject a game session invitation.
Reject a game session invitation.
*/
func (a *Client) PublicGameSessionReject(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectNoContent, *PublicGameSessionRejectBadRequest, *PublicGameSessionRejectUnauthorized, *PublicGameSessionRejectForbidden, *PublicGameSessionRejectNotFound, *PublicGameSessionRejectInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionRejectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionRejectNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGameSessionRejectBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGameSessionRejectUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGameSessionRejectForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGameSessionRejectNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGameSessionRejectInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionRejectShort reject a game session invitation.
Reject a game session invitation.
*/
func (a *Client) PublicGameSessionRejectShort(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionRejectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionRejectNoContent:
		return v, nil
	case *PublicGameSessionRejectBadRequest:
		return nil, v
	case *PublicGameSessionRejectUnauthorized:
		return nil, v
	case *PublicGameSessionRejectForbidden:
		return nil, v
	case *PublicGameSessionRejectNotFound:
		return nil, v
	case *PublicGameSessionRejectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSessionServerSecretShort instead.

GetSessionServerSecret get server secret.

Used by game Client to Get Secret
constraints
- EnableSecret = true
- Type = "DS"
- secret value will only be produced if enableSecret is true and type is DS

if enableSecret = false
- empty secret will be returned as 200 OK

Expected caller of this API
- Game Client to get server secret

In the Response you will get following:
- 200 OK { "secret":  }

If there is error:
- 400 Invalid path parameters
- 401 unauthorized
- 404 StatusNotFound
- 500 Internal server error
*/
func (a *Client) GetSessionServerSecret(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretOK, *GetSessionServerSecretBadRequest, *GetSessionServerSecretUnauthorized, *GetSessionServerSecretNotFound, *GetSessionServerSecretInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionServerSecretParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSessionServerSecret",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionServerSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSessionServerSecretOK:
		return v, nil, nil, nil, nil, nil

	case *GetSessionServerSecretBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetSessionServerSecretUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetSessionServerSecretNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetSessionServerSecretInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionServerSecretShort get server secret.

Used by game Client to Get Secret
constraints
- EnableSecret = true
- Type = "DS"
- secret value will only be produced if enableSecret is true and type is DS

if enableSecret = false
- empty secret will be returned as 200 OK

Expected caller of this API
- Game Client to get server secret

In the Response you will get following:
- 200 OK { "secret":  }

If there is error:
- 400 Invalid path parameters
- 401 unauthorized
- 404 StatusNotFound
- 500 Internal server error
*/
func (a *Client) GetSessionServerSecretShort(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionServerSecretParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSessionServerSecret",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionServerSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionServerSecretOK:
		return v, nil
	case *GetSessionServerSecretBadRequest:
		return nil, v
	case *GetSessionServerSecretUnauthorized:
		return nil, v
	case *GetSessionServerSecretNotFound:
		return nil, v
	case *GetSessionServerSecretInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AppendTeamGameSessionShort instead.

AppendTeamGameSession append new member or team to session. please use patchupdategamesession instead
Append new member or team to session. Please use patchUpdateGameSession instead
*/
func (a *Client) AppendTeamGameSession(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionOK, *AppendTeamGameSessionUnauthorized, *AppendTeamGameSessionForbidden, *AppendTeamGameSessionNotFound, *AppendTeamGameSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAppendTeamGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "appendTeamGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AppendTeamGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AppendTeamGameSessionOK:
		return v, nil, nil, nil, nil, nil

	case *AppendTeamGameSessionUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AppendTeamGameSessionForbidden:
		return nil, nil, v, nil, nil, nil

	case *AppendTeamGameSessionNotFound:
		return nil, nil, nil, v, nil, nil

	case *AppendTeamGameSessionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AppendTeamGameSessionShort append new member or team to session. please use patchupdategamesession instead
Append new member or team to session. Please use patchUpdateGameSession instead
*/
func (a *Client) AppendTeamGameSessionShort(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAppendTeamGameSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "appendTeamGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AppendTeamGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AppendTeamGameSessionOK:
		return v, nil
	case *AppendTeamGameSessionUnauthorized:
		return nil, v
	case *AppendTeamGameSessionForbidden:
		return nil, v
	case *AppendTeamGameSessionNotFound:
		return nil, v
	case *AppendTeamGameSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGameSessionCancelShort instead.

PublicGameSessionCancel cancel a game session invitation.
cancel a game session invitation.
*/
func (a *Client) PublicGameSessionCancel(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelNoContent, *PublicGameSessionCancelBadRequest, *PublicGameSessionCancelUnauthorized, *PublicGameSessionCancelForbidden, *PublicGameSessionCancelNotFound, *PublicGameSessionCancelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionCancelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionCancelNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGameSessionCancelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGameSessionCancelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGameSessionCancelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGameSessionCancelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGameSessionCancelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionCancelShort cancel a game session invitation.
cancel a game session invitation.
*/
func (a *Client) PublicGameSessionCancelShort(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionCancelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGameSessionCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionCancelNoContent:
		return v, nil
	case *PublicGameSessionCancelBadRequest:
		return nil, v
	case *PublicGameSessionCancelUnauthorized:
		return nil, v
	case *PublicGameSessionCancelForbidden:
		return nil, v
	case *PublicGameSessionCancelNotFound:
		return nil, v
	case *PublicGameSessionCancelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryMyGameSessionsShort instead.

PublicQueryMyGameSessions query user's game sessions
Query user's game sessions.
By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) PublicQueryMyGameSessions(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsOK, *PublicQueryMyGameSessionsBadRequest, *PublicQueryMyGameSessionsUnauthorized, *PublicQueryMyGameSessionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryMyGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyGameSessionsOK:
		return v, nil, nil, nil, nil

	case *PublicQueryMyGameSessionsBadRequest:
		return nil, v, nil, nil, nil

	case *PublicQueryMyGameSessionsUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicQueryMyGameSessionsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryMyGameSessionsShort query user's game sessions
Query user's game sessions.
By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) PublicQueryMyGameSessionsShort(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyGameSessionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryMyGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyGameSessionsOK:
		return v, nil
	case *PublicQueryMyGameSessionsBadRequest:
		return nil, v
	case *PublicQueryMyGameSessionsUnauthorized:
		return nil, v
	case *PublicQueryMyGameSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
