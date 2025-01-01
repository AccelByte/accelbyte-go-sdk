// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package revocation

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new revocation API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for revocation API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRevocationConfig(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigOK, *GetRevocationConfigNotFound, error)
	GetRevocationConfigShort(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigOK, error)
	UpdateRevocationConfig(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error)
	UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error)
	DeleteRevocationConfig(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error)
	DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error)
	QueryRevocationHistories(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error)
	QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error)
	DoRevocation(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, *DoRevocationConflict, error)
	DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetRevocationConfigShort instead.

GetRevocationConfig get revocation configuration
Get revocation configuration.
Other detail info:
                      * Returns : Revocation config
*/
func (a *Client) GetRevocationConfig(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigOK, *GetRevocationConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationConfigParams()
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
		ID:                 "getRevocationConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetRevocationConfigOK:
		return v, nil, nil

	case *GetRevocationConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationConfigShort get revocation configuration
Get revocation configuration.
Other detail info:
                      * Returns : Revocation config
*/
func (a *Client) GetRevocationConfigShort(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getRevocationConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationConfigOK:
		return v, nil
	case *GetRevocationConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRevocationConfigShort instead.

UpdateRevocationConfig update revocation configuration
Update revocation configuration.
Other detail info:
                      * Returns : Revocation config
*/
func (a *Client) UpdateRevocationConfig(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationConfigParams()
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
		ID:                 "updateRevocationConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRevocationConfigShort update revocation configuration
Update revocation configuration.
Other detail info:
                      * Returns : Revocation config
*/
func (a *Client) UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateRevocationConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRevocationConfigShort instead.

DeleteRevocationConfig delete revocation config
Delete revocation config.
*/
func (a *Client) DeleteRevocationConfig(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationConfigParams()
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
		ID:                 "deleteRevocationConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRevocationConfigShort delete revocation config
Delete revocation config.
*/
func (a *Client) DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteRevocationConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryRevocationHistoriesShort instead.

QueryRevocationHistories query revocation histories
Query revocation histories in a namespace.
Other detail info:
                      * Returns : query revocation history
*/
func (a *Client) QueryRevocationHistories(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRevocationHistoriesParams()
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
		ID:                 "queryRevocationHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRevocationHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRevocationHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRevocationHistoriesShort query revocation histories
Query revocation histories in a namespace.
Other detail info:
                      * Returns : query revocation history
*/
func (a *Client) QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRevocationHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRevocationHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRevocationHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRevocationHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DoRevocationShort instead.

DoRevocation do revocation.
Do revocation.
Other detail info:
                      * Returns : revocation results
*/
func (a *Client) DoRevocation(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, *DoRevocationConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDoRevocationParams()
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
		ID:                 "doRevocation",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DoRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DoRevocationOK:
		return v, nil, nil

	case *DoRevocationConflict:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DoRevocationShort do revocation.
Do revocation.
Other detail info:
                      * Returns : revocation results
*/
func (a *Client) DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDoRevocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "doRevocation",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DoRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DoRevocationOK:
		return v, nil
	case *DoRevocationConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
