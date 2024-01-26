// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package a_m_s_qo_s

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new a m s qo s API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for a m s qo s API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QoSRegionsGet(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetOK, *QoSRegionsGetBadRequest, *QoSRegionsGetUnauthorized, *QoSRegionsGetForbidden, *QoSRegionsGetInternalServerError, error)
	QoSRegionsGetShort(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetOK, error)
	QoSRegionsUpdate(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateNoContent, *QoSRegionsUpdateBadRequest, *QoSRegionsUpdateUnauthorized, *QoSRegionsUpdateForbidden, *QoSRegionsUpdateNotFound, *QoSRegionsUpdateInternalServerError, error)
	QoSRegionsUpdateShort(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QoSRegionsGetShort instead.

QoSRegionsGet get a list of available ams qos regions
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [READ]

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS's IP:Port
2. Send string "PING" after connection established
3. Wait for string "PONG" response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
1. Inform the player on these latencies and let player choose preferred region
2. Send the latency list to Matchmaking Service so that player can be matched with other players
in nearby regions
*/
func (a *Client) QoSRegionsGet(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetOK, *QoSRegionsGetBadRequest, *QoSRegionsGetUnauthorized, *QoSRegionsGetForbidden, *QoSRegionsGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsGetParams()
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
		ID:                 "QoSRegionsGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsGetOK:
		return v, nil, nil, nil, nil, nil

	case *QoSRegionsGetBadRequest:
		return nil, v, nil, nil, nil, nil

	case *QoSRegionsGetUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *QoSRegionsGetForbidden:
		return nil, nil, nil, v, nil, nil

	case *QoSRegionsGetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QoSRegionsGetShort get a list of available ams qos regions
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [READ]

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS's IP:Port
2. Send string "PING" after connection established
3. Wait for string "PONG" response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
1. Inform the player on these latencies and let player choose preferred region
2. Send the latency list to Matchmaking Service so that player can be matched with other players
in nearby regions
*/
func (a *Client) QoSRegionsGetShort(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QoSRegionsGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsGetOK:
		return v, nil
	case *QoSRegionsGetBadRequest:
		return nil, v
	case *QoSRegionsGetUnauthorized:
		return nil, v
	case *QoSRegionsGetForbidden:
		return nil, v
	case *QoSRegionsGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QoSRegionsUpdateShort instead.

QoSRegionsUpdate update the status of a qos region
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]

This endpoint updates the registered QoS service's configurable configuration.
*/
func (a *Client) QoSRegionsUpdate(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateNoContent, *QoSRegionsUpdateBadRequest, *QoSRegionsUpdateUnauthorized, *QoSRegionsUpdateForbidden, *QoSRegionsUpdateNotFound, *QoSRegionsUpdateInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsUpdateParams()
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
		ID:                 "QoSRegionsUpdate",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsUpdateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsUpdateNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *QoSRegionsUpdateBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *QoSRegionsUpdateUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *QoSRegionsUpdateForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *QoSRegionsUpdateNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *QoSRegionsUpdateInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QoSRegionsUpdateShort update the status of a qos region
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]

This endpoint updates the registered QoS service's configurable configuration.
*/
func (a *Client) QoSRegionsUpdateShort(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsUpdateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "QoSRegionsUpdate",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsUpdateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsUpdateNoContent:
		return v, nil
	case *QoSRegionsUpdateBadRequest:
		return nil, v
	case *QoSRegionsUpdateUnauthorized:
		return nil, v
	case *QoSRegionsUpdateForbidden:
		return nil, v
	case *QoSRegionsUpdateNotFound:
		return nil, v
	case *QoSRegionsUpdateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
