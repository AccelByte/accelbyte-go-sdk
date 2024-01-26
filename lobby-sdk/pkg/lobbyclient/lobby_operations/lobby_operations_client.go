// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package lobby_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new lobby operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for lobby operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUpdatePartyAttributesV1(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1OK, *AdminUpdatePartyAttributesV1BadRequest, *AdminUpdatePartyAttributesV1Unauthorized, *AdminUpdatePartyAttributesV1Forbidden, *AdminUpdatePartyAttributesV1NotFound, *AdminUpdatePartyAttributesV1PreconditionFailed, *AdminUpdatePartyAttributesV1InternalServerError, error)
	AdminUpdatePartyAttributesV1Short(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1OK, error)
	AdminJoinPartyV1(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Accepted, *AdminJoinPartyV1BadRequest, *AdminJoinPartyV1Unauthorized, *AdminJoinPartyV1Forbidden, *AdminJoinPartyV1NotFound, *AdminJoinPartyV1PreconditionFailed, *AdminJoinPartyV1InternalServerError, error)
	AdminJoinPartyV1Short(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Accepted, error)
	PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error)
	PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminUpdatePartyAttributesV1Short instead.

AdminUpdatePartyAttributesV1 admin update party attributes
Update party attributes in a namespace.
*/
func (a *Client) AdminUpdatePartyAttributesV1(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1OK, *AdminUpdatePartyAttributesV1BadRequest, *AdminUpdatePartyAttributesV1Unauthorized, *AdminUpdatePartyAttributesV1Forbidden, *AdminUpdatePartyAttributesV1NotFound, *AdminUpdatePartyAttributesV1PreconditionFailed, *AdminUpdatePartyAttributesV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePartyAttributesV1Params()
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
		ID:                 "adminUpdatePartyAttributesV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePartyAttributesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePartyAttributesV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdatePartyAttributesV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdatePartyAttributesV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdatePartyAttributesV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdatePartyAttributesV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdatePartyAttributesV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdatePartyAttributesV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePartyAttributesV1Short admin update party attributes
Update party attributes in a namespace.
*/
func (a *Client) AdminUpdatePartyAttributesV1Short(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePartyAttributesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdatePartyAttributesV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePartyAttributesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePartyAttributesV1OK:
		return v, nil
	case *AdminUpdatePartyAttributesV1BadRequest:
		return nil, v
	case *AdminUpdatePartyAttributesV1Unauthorized:
		return nil, v
	case *AdminUpdatePartyAttributesV1Forbidden:
		return nil, v
	case *AdminUpdatePartyAttributesV1NotFound:
		return nil, v
	case *AdminUpdatePartyAttributesV1PreconditionFailed:
		return nil, v
	case *AdminUpdatePartyAttributesV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminJoinPartyV1Short instead.

AdminJoinPartyV1 admin join a player into a party
Admin join a player into a party.
*/
func (a *Client) AdminJoinPartyV1(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Accepted, *AdminJoinPartyV1BadRequest, *AdminJoinPartyV1Unauthorized, *AdminJoinPartyV1Forbidden, *AdminJoinPartyV1NotFound, *AdminJoinPartyV1PreconditionFailed, *AdminJoinPartyV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminJoinPartyV1Params()
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
		ID:                 "adminJoinPartyV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminJoinPartyV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminJoinPartyV1Accepted:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminJoinPartyV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminJoinPartyV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminJoinPartyV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminJoinPartyV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminJoinPartyV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminJoinPartyV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminJoinPartyV1Short admin join a player into a party
Admin join a player into a party.
*/
func (a *Client) AdminJoinPartyV1Short(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Accepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminJoinPartyV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminJoinPartyV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminJoinPartyV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminJoinPartyV1Accepted:
		return v, nil
	case *AdminJoinPartyV1BadRequest:
		return nil, v
	case *AdminJoinPartyV1Unauthorized:
		return nil, v
	case *AdminJoinPartyV1Forbidden:
		return nil, v
	case *AdminJoinPartyV1NotFound:
		return nil, v
	case *AdminJoinPartyV1PreconditionFailed:
		return nil, v
	case *AdminJoinPartyV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMessagesShort instead.

PublicGetMessages get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessages(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, *PublicGetMessagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
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
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/lobby/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil, nil

	case *PublicGetMessagesInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMessagesShort get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/lobby/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		return v, nil
	case *PublicGetMessagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
