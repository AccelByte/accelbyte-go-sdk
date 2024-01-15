// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package a_m_s_info

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new a m s info API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for a m s info API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	InfoRegions(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsOK, *InfoRegionsUnauthorized, *InfoRegionsForbidden, *InfoRegionsInternalServerError, error)
	InfoRegionsShort(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsOK, error)
	InfoSupportedInstances(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesOK, *InfoSupportedInstancesUnauthorized, *InfoSupportedInstancesForbidden, *InfoSupportedInstancesInternalServerError, error)
	InfoSupportedInstancesShort(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesOK, error)
	UploadURLGet(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetOK, error)
	UploadURLGetShort(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use InfoRegionsShort instead.

InfoRegions get a list of the available ams regions
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoRegions(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsOK, *InfoRegionsUnauthorized, *InfoRegionsForbidden, *InfoRegionsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoRegionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "InfoRegions",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/regions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoRegionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *InfoRegionsOK:
		return v, nil, nil, nil, nil

	case *InfoRegionsUnauthorized:
		return nil, v, nil, nil, nil

	case *InfoRegionsForbidden:
		return nil, nil, v, nil, nil

	case *InfoRegionsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InfoRegionsShort get a list of the available ams regions
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoRegionsShort(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoRegionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "InfoRegions",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/regions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoRegionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InfoRegionsOK:
		return v, nil
	case *InfoRegionsUnauthorized:
		return nil, v
	case *InfoRegionsForbidden:
		return nil, v
	case *InfoRegionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use InfoSupportedInstancesShort instead.

InfoSupportedInstances get a list of available vm configurations
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoSupportedInstances(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesOK, *InfoSupportedInstancesUnauthorized, *InfoSupportedInstancesForbidden, *InfoSupportedInstancesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoSupportedInstancesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "InfoSupportedInstances",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/supported-instances",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoSupportedInstancesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *InfoSupportedInstancesOK:
		return v, nil, nil, nil, nil

	case *InfoSupportedInstancesUnauthorized:
		return nil, v, nil, nil, nil

	case *InfoSupportedInstancesForbidden:
		return nil, nil, v, nil, nil

	case *InfoSupportedInstancesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InfoSupportedInstancesShort get a list of available vm configurations
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoSupportedInstancesShort(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoSupportedInstancesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "InfoSupportedInstances",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/supported-instances",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoSupportedInstancesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InfoSupportedInstancesOK:
		return v, nil
	case *InfoSupportedInstancesUnauthorized:
		return nil, v
	case *InfoSupportedInstancesForbidden:
		return nil, v
	case *InfoSupportedInstancesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UploadURLGetShort instead.

UploadURLGet get an url for uploading an image
*/
func (a *Client) UploadURLGet(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadURLGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UploadURLGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/upload-url",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadURLGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadURLGetOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadURLGetShort get an url for uploading an image
*/
func (a *Client) UploadURLGetShort(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadURLGetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UploadURLGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/upload-url",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadURLGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadURLGetOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
