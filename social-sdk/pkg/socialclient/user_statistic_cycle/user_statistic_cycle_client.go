// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package user_statistic_cycle

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user statistic cycle API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user statistic cycle API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserStatCycleItems(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, *GetUserStatCycleItemsUnauthorized, *GetUserStatCycleItemsForbidden, *GetUserStatCycleItemsNotFound, *GetUserStatCycleItemsUnprocessableEntity, *GetUserStatCycleItemsInternalServerError, error)
	GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, error)
	PublicListMyStatCycleItems(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsOK, *PublicListMyStatCycleItemsUnauthorized, *PublicListMyStatCycleItemsForbidden, *PublicListMyStatCycleItemsNotFound, *PublicListMyStatCycleItemsUnprocessableEntity, *PublicListMyStatCycleItemsInternalServerError, error)
	PublicListMyStatCycleItemsShort(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsOK, error)
	GetUserStatCycleItems1(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, *GetUserStatCycleItems1Unauthorized, *GetUserStatCycleItems1Forbidden, *GetUserStatCycleItems1NotFound, *GetUserStatCycleItems1UnprocessableEntity, *GetUserStatCycleItems1InternalServerError, error)
	GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserStatCycleItemsShort instead.

GetUserStatCycleItems list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, *GetUserStatCycleItemsUnauthorized, *GetUserStatCycleItemsForbidden, *GetUserStatCycleItemsNotFound, *GetUserStatCycleItemsUnprocessableEntity, *GetUserStatCycleItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItemsParams()
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
		ID:                 "getUserStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItemsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetUserStatCycleItemsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *GetUserStatCycleItemsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *GetUserStatCycleItemsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *GetUserStatCycleItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *GetUserStatCycleItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatCycleItemsShort list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItemsOK:
		return v, nil
	case *GetUserStatCycleItemsUnauthorized:
		return nil, v
	case *GetUserStatCycleItemsForbidden:
		return nil, v
	case *GetUserStatCycleItemsNotFound:
		return nil, v
	case *GetUserStatCycleItemsUnprocessableEntity:
		return nil, v
	case *GetUserStatCycleItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListMyStatCycleItemsShort instead.

PublicListMyStatCycleItems list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) PublicListMyStatCycleItems(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsOK, *PublicListMyStatCycleItemsUnauthorized, *PublicListMyStatCycleItemsForbidden, *PublicListMyStatCycleItemsNotFound, *PublicListMyStatCycleItemsUnprocessableEntity, *PublicListMyStatCycleItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatCycleItemsParams()
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
		ID:                 "publicListMyStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatCycleItemsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicListMyStatCycleItemsUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicListMyStatCycleItemsForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicListMyStatCycleItemsNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicListMyStatCycleItemsUnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicListMyStatCycleItemsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListMyStatCycleItemsShort list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) PublicListMyStatCycleItemsShort(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatCycleItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListMyStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatCycleItemsOK:
		return v, nil
	case *PublicListMyStatCycleItemsUnauthorized:
		return nil, v
	case *PublicListMyStatCycleItemsForbidden:
		return nil, v
	case *PublicListMyStatCycleItemsNotFound:
		return nil, v
	case *PublicListMyStatCycleItemsUnprocessableEntity:
		return nil, v
	case *PublicListMyStatCycleItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetUserStatCycleItems1Short instead.

GetUserStatCycleItems1 list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems1(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, *GetUserStatCycleItems1Unauthorized, *GetUserStatCycleItems1Forbidden, *GetUserStatCycleItems1NotFound, *GetUserStatCycleItems1UnprocessableEntity, *GetUserStatCycleItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItems1Params()
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
		ID:                 "getUserStatCycleItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItems1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetUserStatCycleItems1Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *GetUserStatCycleItems1Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *GetUserStatCycleItems1NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *GetUserStatCycleItems1UnprocessableEntity:
		return nil, nil, nil, nil, v, nil, nil

	case *GetUserStatCycleItems1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatCycleItems1Short list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
                      *  Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserStatCycleItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItems1OK:
		return v, nil
	case *GetUserStatCycleItems1Unauthorized:
		return nil, v
	case *GetUserStatCycleItems1Forbidden:
		return nil, v
	case *GetUserStatCycleItems1NotFound:
		return nil, v
	case *GetUserStatCycleItems1UnprocessableEntity:
		return nil, v
	case *GetUserStatCycleItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
