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
	PublicPartyJoinCode(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, *PublicPartyJoinCodeBadRequest, *PublicPartyJoinCodeUnauthorized, *PublicPartyJoinCodeForbidden, *PublicPartyJoinCodeNotFound, *PublicPartyJoinCodeInternalServerError, error)
	PublicPartyJoinCodeShort(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeOK, error)
	PublicGetParty(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, *PublicGetPartyUnauthorized, *PublicGetPartyNotFound, *PublicGetPartyInternalServerError, error)
	PublicGetPartyShort(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyOK, error)
	PublicUpdateParty(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, *PublicUpdatePartyBadRequest, *PublicUpdatePartyUnauthorized, *PublicUpdatePartyForbidden, *PublicUpdatePartyNotFound, *PublicUpdatePartyInternalServerError, error)
	PublicUpdatePartyShort(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, error)
	PublicPatchUpdateParty(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, *PublicPatchUpdatePartyBadRequest, *PublicPatchUpdatePartyUnauthorized, *PublicPatchUpdatePartyForbidden, *PublicPatchUpdatePartyNotFound, *PublicPatchUpdatePartyInternalServerError, error)
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

AdminQueryParties query parties. requires admin:namespace:{namespace}:session:party [read]
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
AdminQueryPartiesShort query parties. requires admin:namespace:{namespace}:session:party [read]
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
Deprecated: 2022-08-10 - Use PublicPartyJoinCodeShort instead.

PublicPartyJoinCode join a party by code. requires namespace:{namespace}:session:party:player [create]
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
PublicPartyJoinCodeShort join a party by code. requires namespace:{namespace}:session:party:player [create]
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

PublicGetParty get party details. requires namespace:{namespace}:session:party [read]
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
PublicGetPartyShort get party details. requires namespace:{namespace}:session:party [read]
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

PublicUpdateParty update a party. requires namespace:{namespace}:session:party [update]
Updates party blob, this endpoint will override stored party data.

Join type can only be updated by the party's leader.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
*/
func (a *Client) PublicUpdateParty(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyOK, *PublicUpdatePartyBadRequest, *PublicUpdatePartyUnauthorized, *PublicUpdatePartyForbidden, *PublicUpdatePartyNotFound, *PublicUpdatePartyInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePartyOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicUpdatePartyBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicUpdatePartyUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicUpdatePartyForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicUpdatePartyNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicUpdatePartyInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePartyShort update a party. requires namespace:{namespace}:session:party [update]
Updates party blob, this endpoint will override stored party data.

Join type can only be updated by the party's leader.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
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
	case *PublicUpdatePartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicPatchUpdatePartyShort instead.

PublicPatchUpdateParty patch update a party. requires namespace:{namespace}:session:party [update]
Update specified fields from party data. Note: Join type can only be updated by the party's leader.

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
*/
func (a *Client) PublicPatchUpdateParty(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyOK, *PublicPatchUpdatePartyBadRequest, *PublicPatchUpdatePartyUnauthorized, *PublicPatchUpdatePartyForbidden, *PublicPatchUpdatePartyNotFound, *PublicPatchUpdatePartyInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicPatchUpdatePartyOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicPatchUpdatePartyBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicPatchUpdatePartyUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicPatchUpdatePartyForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicPatchUpdatePartyNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicPatchUpdatePartyInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPatchUpdatePartyShort patch update a party. requires namespace:{namespace}:session:party [update]
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
	case *PublicPatchUpdatePartyInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGeneratePartyCodeShort instead.

PublicGeneratePartyCode generate party code. requires namespace:{namespace}:session:party [update]
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
PublicGeneratePartyCodeShort generate party code. requires namespace:{namespace}:session:party [update]
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

PublicRevokePartyCode revoke party code. requires namespace:{namespace}:session:party [update]
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
PublicRevokePartyCodeShort revoke party code. requires namespace:{namespace}:session:party [update]
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

PublicPartyInvite invite a user to a party. requires namespace:{namespace}:session:party:player [create]
Invite a user to a party.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
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
PublicPartyInviteShort invite a user to a party. requires namespace:{namespace}:session:party:player [create]
Invite a user to a party.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
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

PublicPromotePartyLeader promote new party leader. requires namespace:{namespace}:session:party [update]
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
PublicPromotePartyLeaderShort promote new party leader. requires namespace:{namespace}:session:party [update]
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

PublicPartyJoin join a party. requires namespace:{namespace}:session:party:player [create]
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
PublicPartyJoinShort join a party. requires namespace:{namespace}:session:party:player [create]
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

PublicPartyLeave leave a party. requires namespace:{namespace}:session:party:player [delete]
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
PublicPartyLeaveShort leave a party. requires namespace:{namespace}:session:party:player [delete]
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

PublicPartyReject reject a party invitation. requires namespace:{namespace}:session:party:player [delete]
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
PublicPartyRejectShort reject a party invitation. requires namespace:{namespace}:session:party:player [delete]
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
Deprecated: 2022-08-10 - Use PublicPartyKickShort instead.

PublicPartyKick kick a player from a party. requires namespace:{namespace}:session:party:player [delete]
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
PublicPartyKickShort kick a player from a party. requires namespace:{namespace}:session:party:player [delete]
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

PublicCreateParty create a party. requires namespace:{namespace}:session:party [create]
A join code will be autogenerated if the party is joinable.
Creator will be removed from previous party (if any) and automatically join into the created party as a leader.
Party members will be sent invitation to join the party.
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

Supported platforms:
1. STEAM
2. PSN
3. XBOX

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
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
PublicCreatePartyShort create a party. requires namespace:{namespace}:session:party [create]
A join code will be autogenerated if the party is joinable.
Creator will be removed from previous party (if any) and automatically join into the created party as a leader.
Party members will be sent invitation to join the party.
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

Supported platforms:
1. STEAM
2. PSN
3. XBOX

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
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
