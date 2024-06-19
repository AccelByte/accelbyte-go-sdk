// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package global_statistic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new global statistic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for global statistic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGlobalStatItems(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, *GetGlobalStatItemsUnauthorized, *GetGlobalStatItemsForbidden, *GetGlobalStatItemsInternalServerError, error)
	GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, error)
	GetGlobalStatItemByStatCode(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, *GetGlobalStatItemByStatCodeUnauthorized, *GetGlobalStatItemByStatCodeForbidden, *GetGlobalStatItemByStatCodeNotFound, *GetGlobalStatItemByStatCodeInternalServerError, error)
	GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, error)
	GetGlobalStatItems1(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, *GetGlobalStatItems1Unauthorized, *GetGlobalStatItems1Forbidden, *GetGlobalStatItems1InternalServerError, error)
	GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, error)
	GetGlobalStatItemByStatCode1(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, *GetGlobalStatItemByStatCode1Unauthorized, *GetGlobalStatItemByStatCode1Forbidden, *GetGlobalStatItemByStatCode1NotFound, *GetGlobalStatItemByStatCode1InternalServerError, error)
	GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetGlobalStatItemsShort instead.

GetGlobalStatItems list global statitems
List global statItems by pagination.
*/
func (a *Client) GetGlobalStatItems(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, *GetGlobalStatItemsUnauthorized, *GetGlobalStatItemsForbidden, *GetGlobalStatItemsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemsParams()
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
		ID:                 "getGlobalStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemsOK:
		return v, nil, nil, nil, nil

	case *GetGlobalStatItemsUnauthorized:
		return nil, v, nil, nil, nil

	case *GetGlobalStatItemsForbidden:
		return nil, nil, v, nil, nil

	case *GetGlobalStatItemsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItemsShort list global statitems
List global statItems by pagination.
*/
func (a *Client) GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGlobalStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemsOK:
		return v, nil
	case *GetGlobalStatItemsUnauthorized:
		return nil, v
	case *GetGlobalStatItemsForbidden:
		return nil, v
	case *GetGlobalStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGlobalStatItemByStatCodeShort instead.

GetGlobalStatItemByStatCode get global statitem by stat code
Get global statItem by stat code.
Other detail info:
              *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCode(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, *GetGlobalStatItemByStatCodeUnauthorized, *GetGlobalStatItemByStatCodeForbidden, *GetGlobalStatItemByStatCodeNotFound, *GetGlobalStatItemByStatCodeInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCodeParams()
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
		ID:                 "getGlobalStatItemByStatCode",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCodeOK:
		return v, nil, nil, nil, nil, nil

	case *GetGlobalStatItemByStatCodeUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetGlobalStatItemByStatCodeForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetGlobalStatItemByStatCodeNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetGlobalStatItemByStatCodeInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItemByStatCodeShort get global statitem by stat code
Get global statItem by stat code.
Other detail info:
              *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGlobalStatItemByStatCode",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCodeOK:
		return v, nil
	case *GetGlobalStatItemByStatCodeUnauthorized:
		return nil, v
	case *GetGlobalStatItemByStatCodeForbidden:
		return nil, v
	case *GetGlobalStatItemByStatCodeNotFound:
		return nil, v
	case *GetGlobalStatItemByStatCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGlobalStatItems1Short instead.

GetGlobalStatItems1 list global statitems
List global statItems by pagination.
Other detail info:
              *  Returns : stat items
*/
func (a *Client) GetGlobalStatItems1(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, *GetGlobalStatItems1Unauthorized, *GetGlobalStatItems1Forbidden, *GetGlobalStatItems1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItems1Params()
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
		ID:                 "getGlobalStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItems1OK:
		return v, nil, nil, nil, nil

	case *GetGlobalStatItems1Unauthorized:
		return nil, v, nil, nil, nil

	case *GetGlobalStatItems1Forbidden:
		return nil, nil, v, nil, nil

	case *GetGlobalStatItems1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItems1Short list global statitems
List global statItems by pagination.
Other detail info:
              *  Returns : stat items
*/
func (a *Client) GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItems1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGlobalStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItems1OK:
		return v, nil
	case *GetGlobalStatItems1Unauthorized:
		return nil, v
	case *GetGlobalStatItems1Forbidden:
		return nil, v
	case *GetGlobalStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGlobalStatItemByStatCode1Short instead.

GetGlobalStatItemByStatCode1 get global statitem by stat code
Get global statItem by stat code.
Other detail info:
              *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCode1(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, *GetGlobalStatItemByStatCode1Unauthorized, *GetGlobalStatItemByStatCode1Forbidden, *GetGlobalStatItemByStatCode1NotFound, *GetGlobalStatItemByStatCode1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCode1Params()
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
		ID:                 "getGlobalStatItemByStatCode_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCode1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCode1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGlobalStatItemByStatCode1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetGlobalStatItemByStatCode1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetGlobalStatItemByStatCode1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetGlobalStatItemByStatCode1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItemByStatCode1Short get global statitem by stat code
Get global statItem by stat code.
Other detail info:
              *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCode1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGlobalStatItemByStatCode_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCode1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCode1OK:
		return v, nil
	case *GetGlobalStatItemByStatCode1Unauthorized:
		return nil, v
	case *GetGlobalStatItemByStatCode1Forbidden:
		return nil, v
	case *GetGlobalStatItemByStatCode1NotFound:
		return nil, v
	case *GetGlobalStatItemByStatCode1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
