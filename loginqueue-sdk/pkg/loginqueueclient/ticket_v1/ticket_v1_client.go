// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package ticket_v1

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ticket v1 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ticket v1 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RefreshTicket(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketOK, *RefreshTicketUnauthorized, *RefreshTicketInternalServerError, error)
	RefreshTicketShort(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketOK, error)
	CancelTicket(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketNoContent, *CancelTicketUnauthorized, *CancelTicketInternalServerError, error)
	CancelTicketShort(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RefreshTicketShort instead.

RefreshTicket refresh ticket
Refresh ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID". When the ticketID is empty or not found the response status will be 401
*/
func (a *Client) RefreshTicket(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketOK, *RefreshTicketUnauthorized, *RefreshTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefreshTicketParams()
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
		ID:                 "refreshTicket",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefreshTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RefreshTicketOK:
		return v, nil, nil, nil

	case *RefreshTicketUnauthorized:
		return nil, v, nil, nil

	case *RefreshTicketInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefreshTicketShort refresh ticket
Refresh ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID". When the ticketID is empty or not found the response status will be 401
*/
func (a *Client) RefreshTicketShort(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefreshTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "refreshTicket",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefreshTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefreshTicketOK:
		return v, nil
	case *RefreshTicketUnauthorized:
		return nil, v
	case *RefreshTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CancelTicketShort instead.

CancelTicket cancel ticket
Cancel ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID"
*/
func (a *Client) CancelTicket(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketNoContent, *CancelTicketUnauthorized, *CancelTicketInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelTicketParams()
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
		ID:                 "cancelTicket",
		Method:             "DELETE",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CancelTicketNoContent:
		return v, nil, nil, nil

	case *CancelTicketUnauthorized:
		return nil, v, nil, nil

	case *CancelTicketInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelTicketShort cancel ticket
Cancel ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID"
*/
func (a *Client) CancelTicketShort(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelTicketParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "cancelTicket",
		Method:             "DELETE",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelTicketNoContent:
		return v, nil
	case *CancelTicketUnauthorized:
		return nil, v
	case *CancelTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
