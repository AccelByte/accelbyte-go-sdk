// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package party

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new party API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for party API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryParties(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesOK, *AdminQueryPartiesBadRequest, *AdminQueryPartiesUnauthorized, *AdminQueryPartiesInternalServerError, error)
	AdminQueryPartiesShort(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesOK, error)
	AdminDeleteBulkParties(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesOK, *AdminDeleteBulkPartiesBadRequest, *AdminDeleteBulkPartiesUnauthorized, *AdminDeleteBulkPartiesForbidden, *AdminDeleteBulkPartiesInternalServerError, error)
	AdminDeleteBulkPartiesShort(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesOK, error)
	AdminSyncNativeSession(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionOK, *AdminSyncNativeSessionBadRequest, *AdminSyncNativeSessionUnauthorized, *AdminSyncNativeSessionForbidden, *AdminSyncNativeSessionInternalServerError, error)
	AdminSyncNativeSessionShort(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionOK, error)
	PublicPartyJoinCode(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, *PublicPartyJoinCodeBadRequest, *PublicPartyJoinCodeUnauthorized, *PublicPartyJoinCodeForbidden, *PublicPartyJoinCodeNotFound, *PublicPartyJoinCodeInternalServerError, error)
	PublicPartyJoinCodeShort(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, error)
	PublicGetParty(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, *PublicGetPartyUnauthorized, *PublicGetPartyNotFound, *PublicGetPartyInternalServerError, error)
	PublicGetPartyShort(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, error)
	PublicUpdateParty(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, *PublicUpdatePartyBadRequest, *PublicUpdatePartyUnauthorized, *PublicUpdatePartyForbidden, *PublicUpdatePartyNotFound, *PublicUpdatePartyConflict, *PublicUpdatePartyInternalServerError, error)
	PublicUpdatePartyShort(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, error)
	PublicPatchUpdateParty(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, *PublicPatchUpdatePartyBadRequest, *PublicPatchUpdatePartyUnauthorized, *PublicPatchUpdatePartyForbidden, *PublicPatchUpdatePartyNotFound, *PublicPatchUpdatePartyConflict, *PublicPatchUpdatePartyInternalServerError, error)
	PublicPatchUpdatePartyShort(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, error)
	PublicGeneratePartyCode(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeOK, *PublicGeneratePartyCodeBadRequest, *PublicGeneratePartyCodeUnauthorized, *PublicGeneratePartyCodeForbidden, *PublicGeneratePartyCodeNotFound, *PublicGeneratePartyCodeInternalServerError, error)
	PublicGeneratePartyCodeShort(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeOK, error)
	PublicRevokePartyCode(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeNoContent, *PublicRevokePartyCodeBadRequest, *PublicRevokePartyCodeUnauthorized, *PublicRevokePartyCodeForbidden, *PublicRevokePartyCodeNotFound, *PublicRevokePartyCodeInternalServerError, error)
	PublicRevokePartyCodeShort(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeNoContent, error)
	PublicPartyInvite(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteCreated, *PublicPartyInviteNoContent, *PublicPartyInviteBadRequest, *PublicPartyInviteUnauthorized, *PublicPartyInviteNotFound, *PublicPartyInviteInternalServerError, error)
	PublicPartyInviteShort(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteCreated, error)
	PublicPromotePartyLeader(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderOK, *PublicPromotePartyLeaderBadRequest, *PublicPromotePartyLeaderUnauthorized, *PublicPromotePartyLeaderForbidden, *PublicPromotePartyLeaderNotFound, *PublicPromotePartyLeaderInternalServerError, error)
	PublicPromotePartyLeaderShort(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderOK, error)
	PublicPartyJoin(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinOK, *PublicPartyJoinBadRequest, *PublicPartyJoinUnauthorized, *PublicPartyJoinForbidden, *PublicPartyJoinNotFound, *PublicPartyJoinInternalServerError, error)
	PublicPartyJoinShort(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinOK, error)
	PublicPartyLeave(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveNoContent, *PublicPartyLeaveUnauthorized, *PublicPartyLeaveNotFound, *PublicPartyLeaveInternalServerError, error)
	PublicPartyLeaveShort(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveNoContent, error)
	PublicPartyReject(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectNoContent, *PublicPartyRejectBadRequest, *PublicPartyRejectUnauthorized, *PublicPartyRejectForbidden, *PublicPartyRejectNotFound, *PublicPartyRejectInternalServerError, error)
	PublicPartyRejectShort(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectNoContent, error)
	PublicPartyCancel(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelNoContent, *PublicPartyCancelBadRequest, *PublicPartyCancelUnauthorized, *PublicPartyCancelForbidden, *PublicPartyCancelNotFound, *PublicPartyCancelInternalServerError, error)
	PublicPartyCancelShort(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelNoContent, error)
	PublicPartyKick(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickOK, *PublicPartyKickBadRequest, *PublicPartyKickUnauthorized, *PublicPartyKickForbidden, *PublicPartyKickNotFound, *PublicPartyKickInternalServerError, error)
	PublicPartyKickShort(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickOK, error)
	PublicCreateParty(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyOK, *PublicCreatePartyBadRequest, *PublicCreatePartyUnauthorized, *PublicCreatePartyInternalServerError, error)
	PublicCreatePartyShort(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyOK, error)
	PublicQueryMyParties(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesOK, *PublicQueryMyPartiesBadRequest, *PublicQueryMyPartiesUnauthorized, *PublicQueryMyPartiesInternalServerError, error)
	PublicQueryMyPartiesShort(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminQueryPartiesShort instead.

AdminQueryParties query parties.
Query parties.
*/
func (a *Client) AdminQueryParties(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesOK, *AdminQueryPartiesBadRequest, *AdminQueryPartiesUnauthorized, *AdminQueryPartiesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPartiesParams()
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
		ID:                 "adminQueryParties",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPartiesOK:
		return v, nil, nil, nil, nil

	case *AdminQueryPartiesBadRequest:
		return nil, v, nil, nil, nil

	case *AdminQueryPartiesUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminQueryPartiesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryPartiesShort query parties.
Query parties.
*/
func (a *Client) AdminQueryPartiesShort(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPartiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryParties",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPartiesOK:
		return v, nil
	case *AdminQueryPartiesBadRequest:
		return nil, v
	case *AdminQueryPartiesUnauthorized:
		return nil, v
	case *AdminQueryPartiesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteBulkPartiesShort instead.

AdminDeleteBulkParties delete bulk parties.
Delete bulk parties.
*/
func (a *Client) AdminDeleteBulkParties(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesOK, *AdminDeleteBulkPartiesBadRequest, *AdminDeleteBulkPartiesUnauthorized, *AdminDeleteBulkPartiesForbidden, *AdminDeleteBulkPartiesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkPartiesParams()
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
		ID:                 "adminDeleteBulkParties",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkPartiesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteBulkPartiesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteBulkPartiesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteBulkPartiesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteBulkPartiesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteBulkPartiesShort delete bulk parties.
Delete bulk parties.
*/
func (a *Client) AdminDeleteBulkPartiesShort(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkPartiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteBulkParties",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkPartiesOK:
		return v, nil
	case *AdminDeleteBulkPartiesBadRequest:
		return nil, v
	case *AdminDeleteBulkPartiesUnauthorized:
		return nil, v
	case *AdminDeleteBulkPartiesForbidden:
		return nil, v
	case *AdminDeleteBulkPartiesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSyncNativeSessionShort instead.

AdminSyncNativeSession trigger user's active party session to native platform.
Trigger user's active party session to native platform.
*/
func (a *Client) AdminSyncNativeSession(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionOK, *AdminSyncNativeSessionBadRequest, *AdminSyncNativeSessionUnauthorized, *AdminSyncNativeSessionForbidden, *AdminSyncNativeSessionInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncNativeSessionParams()
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
		ID:                 "adminSyncNativeSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncNativeSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSyncNativeSessionOK:
		return v, nil, nil, nil, nil, nil

	case *AdminSyncNativeSessionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSyncNativeSessionUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSyncNativeSessionForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSyncNativeSessionInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncNativeSessionShort trigger user's active party session to native platform.
Trigger user's active party session to native platform.
*/
func (a *Client) AdminSyncNativeSessionShort(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncNativeSessionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSyncNativeSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncNativeSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncNativeSessionOK:
		return v, nil
	case *AdminSyncNativeSessionBadRequest:
		return nil, v
	case *AdminSyncNativeSessionUnauthorized:
		return nil, v
	case *AdminSyncNativeSessionForbidden:
		return nil, v
	case *AdminSyncNativeSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyJoinCodeShort instead.

PublicPartyJoinCode join a party by code.
Join a party by code. The user can join a party as long as the code is valid
*/
func (a *Client) PublicPartyJoinCode(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, *PublicPartyJoinCodeBadRequest, *PublicPartyJoinCodeUnauthorized, *PublicPartyJoinCodeForbidden, *PublicPartyJoinCodeNotFound, *PublicPartyJoinCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinCodeParams()
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
		ID:                 "publicPartyJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/users/me/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinCodeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyJoinCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyJoinCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyJoinCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyJoinCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyJoinCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyJoinCodeShort join a party by code.
Join a party by code. The user can join a party as long as the code is valid
*/
func (a *Client) PublicPartyJoinCodeShort(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/users/me/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinCodeOK:
		return v, nil
	case *PublicPartyJoinCodeBadRequest:
		return nil, v
	case *PublicPartyJoinCodeUnauthorized:
		return nil, v
	case *PublicPartyJoinCodeForbidden:
		return nil, v
	case *PublicPartyJoinCodeNotFound:
		return nil, v
	case *PublicPartyJoinCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPartyShort instead.

PublicGetParty get party details.
Get party details.
*/
func (a *Client) PublicGetParty(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, *PublicGetPartyUnauthorized, *PublicGetPartyNotFound, *PublicGetPartyInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPartyParams()
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
		ID:                 "publicGetParty",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPartyOK:
		return v, nil, nil, nil, nil

	case *PublicGetPartyUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetPartyNotFound:
		return nil, nil, v, nil, nil

	case *PublicGetPartyInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPartyShort get party details.
Get party details.
*/
func (a *Client) PublicGetPartyShort(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPartyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetParty",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPartyOK:
		return v, nil
	case *PublicGetPartyUnauthorized:
		return nil, v
	case *PublicGetPartyNotFound:
		return nil, v
	case *PublicGetPartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicUpdatePartyShort instead.

PublicUpdateParty update a party.
Updates party blob, this endpoint will override stored party data.

Join type can only be updated by the party's leader.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicUpdateParty(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, *PublicUpdatePartyBadRequest, *PublicUpdatePartyUnauthorized, *PublicUpdatePartyForbidden, *PublicUpdatePartyNotFound, *PublicUpdatePartyConflict, *PublicUpdatePartyInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePartyParams()
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
		ID:                 "publicUpdateParty",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePartyOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicUpdatePartyBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicUpdatePartyUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicUpdatePartyForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicUpdatePartyNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicUpdatePartyConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicUpdatePartyInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePartyShort update a party.
Updates party blob, this endpoint will override stored party data.

Join type can only be updated by the party's leader.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicUpdatePartyShort(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePartyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateParty",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePartyOK:
		return v, nil
	case *PublicUpdatePartyBadRequest:
		return nil, v
	case *PublicUpdatePartyUnauthorized:
		return nil, v
	case *PublicUpdatePartyForbidden:
		return nil, v
	case *PublicUpdatePartyNotFound:
		return nil, v
	case *PublicUpdatePartyConflict:
		return nil, v
	case *PublicUpdatePartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPatchUpdatePartyShort instead.

PublicPatchUpdateParty patch update a party.
Update specified fields from party data. Note: Join type can only be updated by the party's leader.

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
*/
func (a *Client) PublicPatchUpdateParty(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, *PublicPatchUpdatePartyBadRequest, *PublicPatchUpdatePartyUnauthorized, *PublicPatchUpdatePartyForbidden, *PublicPatchUpdatePartyNotFound, *PublicPatchUpdatePartyConflict, *PublicPatchUpdatePartyInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPatchUpdatePartyParams()
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
		ID:                 "publicPatchUpdateParty",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPatchUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPatchUpdatePartyOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicPatchUpdatePartyBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicPatchUpdatePartyUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicPatchUpdatePartyForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicPatchUpdatePartyNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicPatchUpdatePartyConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicPatchUpdatePartyInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPatchUpdatePartyShort patch update a party.
Update specified fields from party data. Note: Join type can only be updated by the party's leader.

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
*/
func (a *Client) PublicPatchUpdatePartyShort(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPatchUpdatePartyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPatchUpdateParty",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPatchUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPatchUpdatePartyOK:
		return v, nil
	case *PublicPatchUpdatePartyBadRequest:
		return nil, v
	case *PublicPatchUpdatePartyUnauthorized:
		return nil, v
	case *PublicPatchUpdatePartyForbidden:
		return nil, v
	case *PublicPatchUpdatePartyNotFound:
		return nil, v
	case *PublicPatchUpdatePartyConflict:
		return nil, v
	case *PublicPatchUpdatePartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGeneratePartyCodeShort instead.

PublicGeneratePartyCode generate party code.
Generate a new code for the party. Only leader can generate a code.
*/
func (a *Client) PublicGeneratePartyCode(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeOK, *PublicGeneratePartyCodeBadRequest, *PublicGeneratePartyCodeUnauthorized, *PublicGeneratePartyCodeForbidden, *PublicGeneratePartyCodeNotFound, *PublicGeneratePartyCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePartyCodeParams()
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
		ID:                 "publicGeneratePartyCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePartyCodeOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicGeneratePartyCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicGeneratePartyCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicGeneratePartyCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicGeneratePartyCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicGeneratePartyCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratePartyCodeShort generate party code.
Generate a new code for the party. Only leader can generate a code.
*/
func (a *Client) PublicGeneratePartyCodeShort(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePartyCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGeneratePartyCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePartyCodeOK:
		return v, nil
	case *PublicGeneratePartyCodeBadRequest:
		return nil, v
	case *PublicGeneratePartyCodeUnauthorized:
		return nil, v
	case *PublicGeneratePartyCodeForbidden:
		return nil, v
	case *PublicGeneratePartyCodeNotFound:
		return nil, v
	case *PublicGeneratePartyCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRevokePartyCodeShort instead.

PublicRevokePartyCode revoke party code.
Revoke code of the party. Only leader can revoke a code.
*/
func (a *Client) PublicRevokePartyCode(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeNoContent, *PublicRevokePartyCodeBadRequest, *PublicRevokePartyCodeUnauthorized, *PublicRevokePartyCodeForbidden, *PublicRevokePartyCodeNotFound, *PublicRevokePartyCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokePartyCodeParams()
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
		ID:                 "publicRevokePartyCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRevokePartyCodeNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicRevokePartyCodeBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicRevokePartyCodeUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicRevokePartyCodeForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicRevokePartyCodeNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicRevokePartyCodeInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRevokePartyCodeShort revoke party code.
Revoke code of the party. Only leader can revoke a code.
*/
func (a *Client) PublicRevokePartyCodeShort(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokePartyCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicRevokePartyCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRevokePartyCodeNoContent:
		return v, nil
	case *PublicRevokePartyCodeBadRequest:
		return nil, v
	case *PublicRevokePartyCodeUnauthorized:
		return nil, v
	case *PublicRevokePartyCodeForbidden:
		return nil, v
	case *PublicRevokePartyCodeNotFound:
		return nil, v
	case *PublicRevokePartyCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyInviteShort instead.

PublicPartyInvite invite a user to a party.
Invite a user to a party.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the party storage.
*/
func (a *Client) PublicPartyInvite(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteCreated, *PublicPartyInviteNoContent, *PublicPartyInviteBadRequest, *PublicPartyInviteUnauthorized, *PublicPartyInviteNotFound, *PublicPartyInviteInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyInviteParams()
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
		ID:                 "publicPartyInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyInviteCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyInviteNoContent:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyInviteBadRequest:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyInviteUnauthorized:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyInviteNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyInviteInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyInviteShort invite a user to a party.
Invite a user to a party.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the party storage.
*/
func (a *Client) PublicPartyInviteShort(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyInviteParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyInviteCreated:
		return v, nil
	case *PublicPartyInviteNoContent:
		return nil, v
	case *PublicPartyInviteBadRequest:
		return nil, v
	case *PublicPartyInviteUnauthorized:
		return nil, v
	case *PublicPartyInviteNotFound:
		return nil, v
	case *PublicPartyInviteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPromotePartyLeaderShort instead.

PublicPromotePartyLeader promote new party leader.
Promotes a party member to be a party leader. Only leader can promote a new leader.
*/
func (a *Client) PublicPromotePartyLeader(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderOK, *PublicPromotePartyLeaderBadRequest, *PublicPromotePartyLeaderUnauthorized, *PublicPromotePartyLeaderForbidden, *PublicPromotePartyLeaderNotFound, *PublicPromotePartyLeaderInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromotePartyLeaderParams()
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
		ID:                 "publicPromotePartyLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromotePartyLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPromotePartyLeaderOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPromotePartyLeaderBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPromotePartyLeaderUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPromotePartyLeaderForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPromotePartyLeaderNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPromotePartyLeaderInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPromotePartyLeaderShort promote new party leader.
Promotes a party member to be a party leader. Only leader can promote a new leader.
*/
func (a *Client) PublicPromotePartyLeaderShort(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromotePartyLeaderParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPromotePartyLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromotePartyLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPromotePartyLeaderOK:
		return v, nil
	case *PublicPromotePartyLeaderBadRequest:
		return nil, v
	case *PublicPromotePartyLeaderUnauthorized:
		return nil, v
	case *PublicPromotePartyLeaderForbidden:
		return nil, v
	case *PublicPromotePartyLeaderNotFound:
		return nil, v
	case *PublicPromotePartyLeaderInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyJoinShort instead.

PublicPartyJoin join a party.
Join a party. The user can either join a party they have been invited to, or any party with an "open" joinable setting.
*/
func (a *Client) PublicPartyJoin(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinOK, *PublicPartyJoinBadRequest, *PublicPartyJoinUnauthorized, *PublicPartyJoinForbidden, *PublicPartyJoinNotFound, *PublicPartyJoinInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinParams()
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
		ID:                 "publicPartyJoin",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyJoinBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyJoinUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyJoinForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyJoinNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyJoinInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyJoinShort join a party.
Join a party. The user can either join a party they have been invited to, or any party with an "open" joinable setting.
*/
func (a *Client) PublicPartyJoinShort(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyJoin",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinOK:
		return v, nil
	case *PublicPartyJoinBadRequest:
		return nil, v
	case *PublicPartyJoinUnauthorized:
		return nil, v
	case *PublicPartyJoinForbidden:
		return nil, v
	case *PublicPartyJoinNotFound:
		return nil, v
	case *PublicPartyJoinInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyLeaveShort instead.

PublicPartyLeave leave a party.
Leave a party
*/
func (a *Client) PublicPartyLeave(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveNoContent, *PublicPartyLeaveUnauthorized, *PublicPartyLeaveNotFound, *PublicPartyLeaveInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyLeaveParams()
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
		ID:                 "publicPartyLeave",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyLeaveReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyLeaveNoContent:
		return v, nil, nil, nil, nil

	case *PublicPartyLeaveUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicPartyLeaveNotFound:
		return nil, nil, v, nil, nil

	case *PublicPartyLeaveInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyLeaveShort leave a party.
Leave a party
*/
func (a *Client) PublicPartyLeaveShort(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyLeaveParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyLeave",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyLeaveReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyLeaveNoContent:
		return v, nil
	case *PublicPartyLeaveUnauthorized:
		return nil, v
	case *PublicPartyLeaveNotFound:
		return nil, v
	case *PublicPartyLeaveInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyRejectShort instead.

PublicPartyReject reject a party invitation.
Reject a party invitation.
*/
func (a *Client) PublicPartyReject(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectNoContent, *PublicPartyRejectBadRequest, *PublicPartyRejectUnauthorized, *PublicPartyRejectForbidden, *PublicPartyRejectNotFound, *PublicPartyRejectInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyRejectParams()
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
		ID:                 "publicPartyReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyRejectNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyRejectBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyRejectUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyRejectForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyRejectNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyRejectInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyRejectShort reject a party invitation.
Reject a party invitation.
*/
func (a *Client) PublicPartyRejectShort(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyRejectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyRejectNoContent:
		return v, nil
	case *PublicPartyRejectBadRequest:
		return nil, v
	case *PublicPartyRejectUnauthorized:
		return nil, v
	case *PublicPartyRejectForbidden:
		return nil, v
	case *PublicPartyRejectNotFound:
		return nil, v
	case *PublicPartyRejectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyCancelShort instead.

PublicPartyCancel cancel a party invitation.
Cancel a party invitation.
*/
func (a *Client) PublicPartyCancel(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelNoContent, *PublicPartyCancelBadRequest, *PublicPartyCancelUnauthorized, *PublicPartyCancelForbidden, *PublicPartyCancelNotFound, *PublicPartyCancelInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyCancelParams()
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
		ID:                 "publicPartyCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyCancelNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyCancelBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyCancelUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyCancelForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyCancelNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyCancelInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyCancelShort cancel a party invitation.
Cancel a party invitation.
*/
func (a *Client) PublicPartyCancelShort(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyCancelParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyCancelNoContent:
		return v, nil
	case *PublicPartyCancelBadRequest:
		return nil, v
	case *PublicPartyCancelUnauthorized:
		return nil, v
	case *PublicPartyCancelForbidden:
		return nil, v
	case *PublicPartyCancelNotFound:
		return nil, v
	case *PublicPartyCancelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPartyKickShort instead.

PublicPartyKick kick a player from a party.
Kick a player from a party. Requires invoker to be the party leader.
*/
func (a *Client) PublicPartyKick(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickOK, *PublicPartyKickBadRequest, *PublicPartyKickUnauthorized, *PublicPartyKickForbidden, *PublicPartyKickNotFound, *PublicPartyKickInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyKickParams()
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
		ID:                 "publicPartyKick",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyKickReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPartyKickOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPartyKickBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPartyKickUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPartyKickForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPartyKickNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPartyKickInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyKickShort kick a player from a party.
Kick a player from a party. Requires invoker to be the party leader.
*/
func (a *Client) PublicPartyKickShort(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyKickParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicPartyKick",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyKickReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyKickOK:
		return v, nil
	case *PublicPartyKickBadRequest:
		return nil, v
	case *PublicPartyKickUnauthorized:
		return nil, v
	case *PublicPartyKickForbidden:
		return nil, v
	case *PublicPartyKickNotFound:
		return nil, v
	case *PublicPartyKickInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCreatePartyShort instead.

PublicCreateParty create a party.
A join code will be autogenerated if the party is joinable.

A user can be in 1 party at a time, therefore the requester will be removed from their previous party (if any) and automatically added/joined into this newly created party as a leader.

Session configuration name is optional.
Default configuration name if empty:
{
"name": "default",
"type": "NONE",
"joinability": "OPEN",
"minPlayers": 1,
"maxPlayers": 8,
"inviteTimeout": 60,
"inactiveTimeout": 60,
"textChat": false
}
When session configuration "name" is provided, we will refer to the template if these fields are empty:
- textChat
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- type
- joinability
- configurationName
- attributes

Supported platforms:
1. STEAM
2. PSN
3. XBOX

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

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
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicCreateParty(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyOK, *PublicCreatePartyBadRequest, *PublicCreatePartyUnauthorized, *PublicCreatePartyInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreatePartyParams()
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
		ID:                 "publicCreateParty",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/party",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreatePartyOK:
		return v, nil, nil, nil, nil

	case *PublicCreatePartyBadRequest:
		return nil, v, nil, nil, nil

	case *PublicCreatePartyUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicCreatePartyInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreatePartyShort create a party.
A join code will be autogenerated if the party is joinable.

A user can be in 1 party at a time, therefore the requester will be removed from their previous party (if any) and automatically added/joined into this newly created party as a leader.

Session configuration name is optional.
Default configuration name if empty:
{
"name": "default",
"type": "NONE",
"joinability": "OPEN",
"minPlayers": 1,
"maxPlayers": 8,
"inviteTimeout": 60,
"inactiveTimeout": 60,
"textChat": false
}
When session configuration "name" is provided, we will refer to the template if these fields are empty:
- textChat
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- type
- joinability
- configurationName
- attributes

Supported platforms:
1. STEAM
2. PSN
3. XBOX

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

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
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicCreatePartyShort(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreatePartyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateParty",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/party",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreatePartyOK:
		return v, nil
	case *PublicCreatePartyBadRequest:
		return nil, v
	case *PublicCreatePartyUnauthorized:
		return nil, v
	case *PublicCreatePartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicQueryMyPartiesShort instead.

PublicQueryMyParties query my parties. require valid jwt.
Query user's parties. By default, API will return a list of user's active parties.
*/
func (a *Client) PublicQueryMyParties(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesOK, *PublicQueryMyPartiesBadRequest, *PublicQueryMyPartiesUnauthorized, *PublicQueryMyPartiesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyPartiesParams()
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
		ID:                 "publicQueryMyParties",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyPartiesOK:
		return v, nil, nil, nil, nil

	case *PublicQueryMyPartiesBadRequest:
		return nil, v, nil, nil, nil

	case *PublicQueryMyPartiesUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicQueryMyPartiesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryMyPartiesShort query my parties. require valid jwt.
Query user's parties. By default, API will return a list of user's active parties.
*/
func (a *Client) PublicQueryMyPartiesShort(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyPartiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryMyParties",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyPartiesOK:
		return v, nil
	case *PublicQueryMyPartiesBadRequest:
		return nil, v
	case *PublicQueryMyPartiesUnauthorized:
		return nil, v
	case *PublicQueryMyPartiesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
