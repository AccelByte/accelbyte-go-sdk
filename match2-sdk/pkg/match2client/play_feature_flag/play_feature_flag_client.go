// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package play_feature_flag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new play feature flag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for play feature flag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPlayFeatureFlag(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagOK, *AdminGetPlayFeatureFlagUnauthorized, *AdminGetPlayFeatureFlagForbidden, *AdminGetPlayFeatureFlagInternalServerError, error)
	AdminGetPlayFeatureFlagShort(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagOK, error)
	AdminUpsertPlayFeatureFlag(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagOK, *AdminUpsertPlayFeatureFlagBadRequest, *AdminUpsertPlayFeatureFlagUnauthorized, *AdminUpsertPlayFeatureFlagForbidden, *AdminUpsertPlayFeatureFlagInternalServerError, error)
	AdminUpsertPlayFeatureFlagShort(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagOK, error)
	AdminDeletePlayFeatureFlag(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagNoContent, *AdminDeletePlayFeatureFlagUnauthorized, *AdminDeletePlayFeatureFlagForbidden, *AdminDeletePlayFeatureFlagInternalServerError, error)
	AdminDeletePlayFeatureFlagShort(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayFeatureFlagShort instead.

AdminGetPlayFeatureFlag admin play feature flag
Get matchmaking Play Feature Flag.
*/
func (a *Client) AdminGetPlayFeatureFlag(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagOK, *AdminGetPlayFeatureFlagUnauthorized, *AdminGetPlayFeatureFlagForbidden, *AdminGetPlayFeatureFlagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayFeatureFlagParams()
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
		ID:                 "adminGetPlayFeatureFlag",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayFeatureFlagOK:
		return v, nil, nil, nil, nil

	case *AdminGetPlayFeatureFlagUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetPlayFeatureFlagForbidden:
		return nil, nil, v, nil, nil

	case *AdminGetPlayFeatureFlagInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayFeatureFlagShort admin play feature flag
Get matchmaking Play Feature Flag.
*/
func (a *Client) AdminGetPlayFeatureFlagShort(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayFeatureFlagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayFeatureFlag",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayFeatureFlagOK:
		return v, nil
	case *AdminGetPlayFeatureFlagUnauthorized:
		return nil, v
	case *AdminGetPlayFeatureFlagForbidden:
		return nil, v
	case *AdminGetPlayFeatureFlagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpsertPlayFeatureFlagShort instead.

AdminUpsertPlayFeatureFlag admin upsert play feature flag
Upsert matchmaking Play Feature Flag.
*/
func (a *Client) AdminUpsertPlayFeatureFlag(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagOK, *AdminUpsertPlayFeatureFlagBadRequest, *AdminUpsertPlayFeatureFlagUnauthorized, *AdminUpsertPlayFeatureFlagForbidden, *AdminUpsertPlayFeatureFlagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpsertPlayFeatureFlagParams()
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
		ID:                 "adminUpsertPlayFeatureFlag",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpsertPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpsertPlayFeatureFlagOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpsertPlayFeatureFlagBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpsertPlayFeatureFlagUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpsertPlayFeatureFlagForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpsertPlayFeatureFlagInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpsertPlayFeatureFlagShort admin upsert play feature flag
Upsert matchmaking Play Feature Flag.
*/
func (a *Client) AdminUpsertPlayFeatureFlagShort(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpsertPlayFeatureFlagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpsertPlayFeatureFlag",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpsertPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpsertPlayFeatureFlagOK:
		return v, nil
	case *AdminUpsertPlayFeatureFlagBadRequest:
		return nil, v
	case *AdminUpsertPlayFeatureFlagUnauthorized:
		return nil, v
	case *AdminUpsertPlayFeatureFlagForbidden:
		return nil, v
	case *AdminUpsertPlayFeatureFlagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlayFeatureFlagShort instead.

AdminDeletePlayFeatureFlag admin delete play feature flag

Delete matchmaking Play Feature Flag.
Deleting the current namespace's custom config only removes it from the database, the system will then use the environment variable defined in the ConfigMap instead.
*/
func (a *Client) AdminDeletePlayFeatureFlag(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagNoContent, *AdminDeletePlayFeatureFlagUnauthorized, *AdminDeletePlayFeatureFlagForbidden, *AdminDeletePlayFeatureFlagInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayFeatureFlagParams()
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
		ID:                 "adminDeletePlayFeatureFlag",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayFeatureFlagNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeletePlayFeatureFlagUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeletePlayFeatureFlagForbidden:
		return nil, nil, v, nil, nil

	case *AdminDeletePlayFeatureFlagInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayFeatureFlagShort admin delete play feature flag

Delete matchmaking Play Feature Flag.
Deleting the current namespace's custom config only removes it from the database, the system will then use the environment variable defined in the ConfigMap instead.
*/
func (a *Client) AdminDeletePlayFeatureFlagShort(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayFeatureFlagParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayFeatureFlag",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayFeatureFlagNoContent:
		return v, nil
	case *AdminDeletePlayFeatureFlagUnauthorized:
		return nil, v
	case *AdminDeletePlayFeatureFlagForbidden:
		return nil, v
	case *AdminDeletePlayFeatureFlagInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
