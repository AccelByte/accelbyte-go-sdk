// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package gametelemetry_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new gametelemetry operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for gametelemetry operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInternalServerError, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInsufficientStorage, error)
	ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent, error)
	ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError, error)
	ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK, error)
	ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutNotFound, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutUnprocessableEntity, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutInternalServerError, error)
	ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort instead.

ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost protected save events
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint send events into designated streaming pipeline and each request can contain single or multiple events.


Format of the event:

- **EventNamespace (required)**: Namespace of the relevant game with domain name format.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: accelbyte



- **EventName (required)**: Name of the event.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: player_killed, mission_accomplished



- **Payload (required)**: An arbitrary json with the payload of the said event.


Default maximum payload size is 1MB



- **ClientTimestamp (optional)**: Timestamp of the event captured by the client SDK.

- **DeviceType (optional)**: The device type of the user.
*/
func (a *Client) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInternalServerError, *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInsufficientStorage, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams()
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
		ID:                 "protected_save_events_game_telemetry_v1_protected_events_post",
		Method:             "POST",
		PathPattern:        "/game-telemetry/v1/protected/events",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent:
		return v, nil, nil, nil, nil

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity:
		return nil, v, nil, nil, nil

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInternalServerError:
		return nil, nil, v, nil, nil

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInsufficientStorage:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort protected save events
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint send events into designated streaming pipeline and each request can contain single or multiple events.


Format of the event:

- **EventNamespace (required)**: Namespace of the relevant game with domain name format.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: accelbyte



- **EventName (required)**: Name of the event.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: player_killed, mission_accomplished



- **Payload (required)**: An arbitrary json with the payload of the said event.


Default maximum payload size is 1MB



- **ClientTimestamp (optional)**: Timestamp of the event captured by the client SDK.

- **DeviceType (optional)**: The device type of the user.
*/
func (a *Client) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "protected_save_events_game_telemetry_v1_protected_events_post",
		Method:             "POST",
		PathPattern:        "/game-telemetry/v1/protected/events",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent:
		return v, nil
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity:
		return nil, v
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInternalServerError:
		return nil, v
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInsufficientStorage:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort instead.

ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet protected get playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint retrieves player's total playtime in Steam for a specific game (AppId) and store them in service's cache.

Players' Steam account must be set into public to enable the service fetch their total playtime data.
*/
func (a *Client) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity, *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams()
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
		ID:                 "protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get",
		Method:             "GET",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK:
		return v, nil, nil, nil, nil

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound:
		return nil, v, nil, nil, nil

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity:
		return nil, nil, v, nil, nil

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort protected get playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint retrieves player's total playtime in Steam for a specific game (AppId) and store them in service's cache.

Players' Steam account must be set into public to enable the service fetch their total playtime data.
*/
func (a *Client) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get",
		Method:             "GET",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK:
		return v, nil
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound:
		return nil, v
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity:
		return nil, v
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort instead.

ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut protected update playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint update player's total playtime in a specific game (AppId) from service's cache.
*/
func (a *Client) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePut(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutNotFound, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutUnprocessableEntity, *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams()
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
		ID:                 "protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put",
		Method:             "PUT",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK:
		return v, nil, nil, nil, nil

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutNotFound:
		return nil, v, nil, nil, nil

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutUnprocessableEntity:
		return nil, nil, v, nil, nil

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort protected update playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint update player's total playtime in a specific game (AppId) from service's cache.
*/
func (a *Client) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put",
		Method:             "PUT",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK:
		return v, nil
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutNotFound:
		return nil, v
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutUnprocessableEntity:
		return nil, v
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
