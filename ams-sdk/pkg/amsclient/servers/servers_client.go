// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package servers

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	FleetServerHistory(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, *FleetServerHistoryBadRequest, *FleetServerHistoryUnauthorized, *FleetServerHistoryForbidden, *FleetServerHistoryInternalServerError, error)
	FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, error)
	FleetServerInfo(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, *FleetServerInfoUnauthorized, *FleetServerInfoForbidden, *FleetServerInfoNotFound, *FleetServerInfoInternalServerError, error)
	FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, error)
	FleetServerConnectionInfo(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, *FleetServerConnectionInfoUnauthorized, *FleetServerConnectionInfoForbidden, *FleetServerConnectionInfoNotFound, *FleetServerConnectionInfoInternalServerError, error)
	FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, error)
	ServerHistory(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, *ServerHistoryBadRequest, *ServerHistoryUnauthorized, *ServerHistoryForbidden, *ServerHistoryInternalServerError, error)
	ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use FleetServerHistoryShort instead.

FleetServerHistory get history records of a dedicated server in a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerHistory(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, *FleetServerHistoryBadRequest, *FleetServerHistoryUnauthorized, *FleetServerHistoryForbidden, *FleetServerHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerHistoryParams()
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
		ID:                 "FleetServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FleetServerHistoryOK:
		return v, nil, nil, nil, nil, nil

	case *FleetServerHistoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *FleetServerHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *FleetServerHistoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *FleetServerHistoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerHistoryShort get history records of a dedicated server in a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "FleetServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerHistoryOK:
		return v, nil
	case *FleetServerHistoryBadRequest:
		return nil, v
	case *FleetServerHistoryUnauthorized:
		return nil, v
	case *FleetServerHistoryForbidden:
		return nil, v
	case *FleetServerHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FleetServerInfoShort instead.

FleetServerInfo get information about a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerInfo(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, *FleetServerInfoUnauthorized, *FleetServerInfoForbidden, *FleetServerInfoNotFound, *FleetServerInfoInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerInfoParams()
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
		ID:                 "FleetServerInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FleetServerInfoOK:
		return v, nil, nil, nil, nil, nil

	case *FleetServerInfoUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *FleetServerInfoForbidden:
		return nil, nil, v, nil, nil, nil

	case *FleetServerInfoNotFound:
		return nil, nil, nil, v, nil, nil

	case *FleetServerInfoInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerInfoShort get information about a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "FleetServerInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerInfoOK:
		return v, nil
	case *FleetServerInfoUnauthorized:
		return nil, v
	case *FleetServerInfoForbidden:
		return nil, v
	case *FleetServerInfoNotFound:
		return nil, v
	case *FleetServerInfoInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FleetServerConnectionInfoShort instead.

FleetServerConnectionInfo get connection info for a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]
*/
func (a *Client) FleetServerConnectionInfo(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, *FleetServerConnectionInfoUnauthorized, *FleetServerConnectionInfoForbidden, *FleetServerConnectionInfoNotFound, *FleetServerConnectionInfoInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerConnectionInfoParams()
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
		ID:                 "FleetServerConnectionInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerConnectionInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FleetServerConnectionInfoOK:
		return v, nil, nil, nil, nil, nil

	case *FleetServerConnectionInfoUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *FleetServerConnectionInfoForbidden:
		return nil, nil, v, nil, nil, nil

	case *FleetServerConnectionInfoNotFound:
		return nil, nil, nil, v, nil, nil

	case *FleetServerConnectionInfoInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerConnectionInfoShort get connection info for a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]
*/
func (a *Client) FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerConnectionInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "FleetServerConnectionInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerConnectionInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerConnectionInfoOK:
		return v, nil
	case *FleetServerConnectionInfoUnauthorized:
		return nil, v
	case *FleetServerConnectionInfoForbidden:
		return nil, v
	case *FleetServerConnectionInfoNotFound:
		return nil, v
	case *FleetServerConnectionInfoInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ServerHistoryShort instead.

ServerHistory get history records of a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) ServerHistory(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, *ServerHistoryBadRequest, *ServerHistoryUnauthorized, *ServerHistoryForbidden, *ServerHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHistoryParams()
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
		ID:                 "ServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ServerHistoryOK:
		return v, nil, nil, nil, nil, nil

	case *ServerHistoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *ServerHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *ServerHistoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *ServerHistoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ServerHistoryShort get history records of a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ServerHistoryOK:
		return v, nil
	case *ServerHistoryBadRequest:
		return nil, v
	case *ServerHistoryUnauthorized:
		return nil, v
	case *ServerHistoryForbidden:
		return nil, v
	case *ServerHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
