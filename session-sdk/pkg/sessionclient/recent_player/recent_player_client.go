// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package recent_player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new recent player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for recent player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetRecentPlayer(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerOK, *AdminGetRecentPlayerBadRequest, *AdminGetRecentPlayerUnauthorized, *AdminGetRecentPlayerNotFound, *AdminGetRecentPlayerInternalServerError, error)
	AdminGetRecentPlayerShort(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerOK, error)
	AdminGetRecentTeamPlayer(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerOK, *AdminGetRecentTeamPlayerBadRequest, *AdminGetRecentTeamPlayerUnauthorized, *AdminGetRecentTeamPlayerNotFound, *AdminGetRecentTeamPlayerInternalServerError, error)
	AdminGetRecentTeamPlayerShort(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerOK, error)
	PublicGetRecentPlayer(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, *PublicGetRecentPlayerBadRequest, *PublicGetRecentPlayerUnauthorized, *PublicGetRecentPlayerNotFound, *PublicGetRecentPlayerInternalServerError, error)
	PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, error)
	PublicGetRecentTeamPlayer(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerOK, *PublicGetRecentTeamPlayerBadRequest, *PublicGetRecentTeamPlayerUnauthorized, *PublicGetRecentTeamPlayerNotFound, *PublicGetRecentTeamPlayerInternalServerError, error)
	PublicGetRecentTeamPlayerShort(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetRecentPlayerShort instead.

AdminGetRecentPlayer query recent player with given user id.
Query recent player with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentPlayer(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerOK, *AdminGetRecentPlayerBadRequest, *AdminGetRecentPlayerUnauthorized, *AdminGetRecentPlayerNotFound, *AdminGetRecentPlayerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentPlayerParams()
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
		ID:                 "adminGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentPlayerOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRecentPlayerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRecentPlayerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRecentPlayerNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRecentPlayerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRecentPlayerShort query recent player with given user id.
Query recent player with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentPlayerShort(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentPlayerOK:
		return v, nil
	case *AdminGetRecentPlayerBadRequest:
		return nil, v
	case *AdminGetRecentPlayerUnauthorized:
		return nil, v
	case *AdminGetRecentPlayerNotFound:
		return nil, v
	case *AdminGetRecentPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetRecentTeamPlayerShort instead.

AdminGetRecentTeamPlayer query recent player who were on the same team with given user id.
Query recent player who were on the same team with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentTeamPlayer(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerOK, *AdminGetRecentTeamPlayerBadRequest, *AdminGetRecentTeamPlayerUnauthorized, *AdminGetRecentTeamPlayerNotFound, *AdminGetRecentTeamPlayerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentTeamPlayerParams()
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
		ID:                 "adminGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentTeamPlayerOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetRecentTeamPlayerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetRecentTeamPlayerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetRecentTeamPlayerNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetRecentTeamPlayerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRecentTeamPlayerShort query recent player who were on the same team with given user id.
Query recent player who were on the same team with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentTeamPlayerShort(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentTeamPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentTeamPlayerOK:
		return v, nil
	case *AdminGetRecentTeamPlayerBadRequest:
		return nil, v
	case *AdminGetRecentTeamPlayerUnauthorized:
		return nil, v
	case *AdminGetRecentTeamPlayerNotFound:
		return nil, v
	case *AdminGetRecentTeamPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetRecentPlayerShort instead.

PublicGetRecentPlayer query user's recent player
Query user's recent player.

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentPlayer(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, *PublicGetRecentPlayerBadRequest, *PublicGetRecentPlayerUnauthorized, *PublicGetRecentPlayerNotFound, *PublicGetRecentPlayerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentPlayerParams()
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
		ID:                 "publicGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentPlayerOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetRecentPlayerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetRecentPlayerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetRecentPlayerNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetRecentPlayerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRecentPlayerShort query user's recent player
Query user's recent player.

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentPlayerOK:
		return v, nil
	case *PublicGetRecentPlayerBadRequest:
		return nil, v
	case *PublicGetRecentPlayerUnauthorized:
		return nil, v
	case *PublicGetRecentPlayerNotFound:
		return nil, v
	case *PublicGetRecentPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetRecentTeamPlayerShort instead.

PublicGetRecentTeamPlayer query user's recent player who were on the same team.
Query user's recent player who were on the same team.

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentTeamPlayer(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerOK, *PublicGetRecentTeamPlayerBadRequest, *PublicGetRecentTeamPlayerUnauthorized, *PublicGetRecentTeamPlayerNotFound, *PublicGetRecentTeamPlayerInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentTeamPlayerParams()
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
		ID:                 "publicGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentTeamPlayerOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetRecentTeamPlayerBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetRecentTeamPlayerUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetRecentTeamPlayerNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetRecentTeamPlayerInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRecentTeamPlayerShort query user's recent player who were on the same team.
Query user's recent player who were on the same team.

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentTeamPlayerShort(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentTeamPlayerParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentTeamPlayerOK:
		return v, nil
	case *PublicGetRecentTeamPlayerBadRequest:
		return nil, v
	case *PublicGetRecentTeamPlayerUnauthorized:
		return nil, v
	case *PublicGetRecentTeamPlayerNotFound:
		return nil, v
	case *PublicGetRecentTeamPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
