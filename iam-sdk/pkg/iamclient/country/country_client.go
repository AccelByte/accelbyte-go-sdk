// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package country

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new country API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for country API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetCountryListV3(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3OK, *AdminGetCountryListV3Unauthorized, *AdminGetCountryListV3Forbidden, *AdminGetCountryListV3InternalServerError, error)
	AdminGetCountryListV3Short(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3OK, error)
	AdminGetCountryBlacklistV3(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3OK, *AdminGetCountryBlacklistV3Unauthorized, *AdminGetCountryBlacklistV3Forbidden, *AdminGetCountryBlacklistV3InternalServerError, error)
	AdminGetCountryBlacklistV3Short(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3OK, error)
	AdminAddCountryBlacklistV3(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3NoContent, *AdminAddCountryBlacklistV3BadRequest, *AdminAddCountryBlacklistV3Unauthorized, *AdminAddCountryBlacklistV3Forbidden, *AdminAddCountryBlacklistV3InternalServerError, error)
	AdminAddCountryBlacklistV3Short(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3NoContent, error)
	PublicGetCountryListV3(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3OK, *PublicGetCountryListV3InternalServerError, error)
	PublicGetCountryListV3Short(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetCountryListV3Short instead.

AdminGetCountryListV3 get country list
Admin get country list:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [READ]
*/
func (a *Client) AdminGetCountryListV3(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3OK, *AdminGetCountryListV3Unauthorized, *AdminGetCountryListV3Forbidden, *AdminGetCountryListV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryListV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetCountryListV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetCountryListV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetCountryListV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCountryListV3Short get country list
Admin get country list:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [READ]
*/
func (a *Client) AdminGetCountryListV3Short(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryListV3OK:
		return v, nil
	case *AdminGetCountryListV3Unauthorized:
		return nil, v
	case *AdminGetCountryListV3Forbidden:
		return nil, v
	case *AdminGetCountryListV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetCountryBlacklistV3Short instead.

AdminGetCountryBlacklistV3 get country blacklist
Admin get country blacklist:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [READ]
*/
func (a *Client) AdminGetCountryBlacklistV3(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3OK, *AdminGetCountryBlacklistV3Unauthorized, *AdminGetCountryBlacklistV3Forbidden, *AdminGetCountryBlacklistV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryBlacklistV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetCountryBlacklistV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryBlacklistV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetCountryBlacklistV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetCountryBlacklistV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetCountryBlacklistV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCountryBlacklistV3Short get country blacklist
Admin get country blacklist:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [READ]
*/
func (a *Client) AdminGetCountryBlacklistV3Short(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryBlacklistV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetCountryBlacklistV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryBlacklistV3OK:
		return v, nil
	case *AdminGetCountryBlacklistV3Unauthorized:
		return nil, v
	case *AdminGetCountryBlacklistV3Forbidden:
		return nil, v
	case *AdminGetCountryBlacklistV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddCountryBlacklistV3Short instead.

AdminAddCountryBlacklistV3 update country blacklist
Admin update country blacklist:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [UPDATE]
*/
func (a *Client) AdminAddCountryBlacklistV3(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3NoContent, *AdminAddCountryBlacklistV3BadRequest, *AdminAddCountryBlacklistV3Unauthorized, *AdminAddCountryBlacklistV3Forbidden, *AdminAddCountryBlacklistV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddCountryBlacklistV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddCountryBlacklistV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddCountryBlacklistV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminAddCountryBlacklistV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminAddCountryBlacklistV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminAddCountryBlacklistV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminAddCountryBlacklistV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddCountryBlacklistV3Short update country blacklist
Admin update country blacklist:

Required Permission: ADMIN:NAMESPACE:{namespace}:MISC [UPDATE]
*/
func (a *Client) AdminAddCountryBlacklistV3Short(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddCountryBlacklistV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddCountryBlacklistV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddCountryBlacklistV3NoContent:
		return v, nil
	case *AdminAddCountryBlacklistV3BadRequest:
		return nil, v
	case *AdminAddCountryBlacklistV3Unauthorized:
		return nil, v
	case *AdminAddCountryBlacklistV3Forbidden:
		return nil, v
	case *AdminAddCountryBlacklistV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCountryListV3Short instead.

PublicGetCountryListV3 get country list
Public get country list, will filter out countries in black list
*/
func (a *Client) PublicGetCountryListV3(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3OK, *PublicGetCountryListV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryListV3OK:
		return v, nil, nil

	case *PublicGetCountryListV3InternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryListV3Short get country list
Public get country list, will filter out countries in black list
*/
func (a *Client) PublicGetCountryListV3Short(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryListV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryListV3OK:
		return v, nil
	case *PublicGetCountryListV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
