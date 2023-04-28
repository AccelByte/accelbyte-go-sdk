// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package pod_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new pod config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for pod config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLowestInstanceSpec(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, *GetLowestInstanceSpecUnauthorized, *GetLowestInstanceSpecInternalServerError, error)
	GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, error)
	GetAllPodConfig(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, *GetAllPodConfigBadRequest, *GetAllPodConfigUnauthorized, *GetAllPodConfigInternalServerError, error)
	GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, error)
	GetPodConfig(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, *GetPodConfigBadRequest, *GetPodConfigUnauthorized, *GetPodConfigNotFound, *GetPodConfigInternalServerError, error)
	GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, error)
	CreatePodConfig(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, *CreatePodConfigBadRequest, *CreatePodConfigUnauthorized, *CreatePodConfigConflict, *CreatePodConfigInternalServerError, error)
	CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, error)
	DeletePodConfig(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, *DeletePodConfigBadRequest, *DeletePodConfigUnauthorized, *DeletePodConfigNotFound, *DeletePodConfigConflict, *DeletePodConfigInternalServerError, error)
	DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, error)
	UpdatePodConfig(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, *UpdatePodConfigBadRequest, *UpdatePodConfigUnauthorized, *UpdatePodConfigNotFound, *UpdatePodConfigConflict, *UpdatePodConfigInternalServerError, error)
	UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetLowestInstanceSpecShort instead.

GetLowestInstanceSpec get lowest instance spec.
Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

Required scope: social

This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).
*/
func (a *Client) GetLowestInstanceSpec(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, *GetLowestInstanceSpecUnauthorized, *GetLowestInstanceSpecInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLowestInstanceSpecParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetLowestInstanceSpec",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/instances/spec/lowest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLowestInstanceSpecReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLowestInstanceSpecOK:
		return v, nil, nil, nil

	case *GetLowestInstanceSpecUnauthorized:
		return nil, v, nil, nil

	case *GetLowestInstanceSpecInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLowestInstanceSpecShort get lowest instance spec.
Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

Required scope: social

This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).
*/
func (a *Client) GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLowestInstanceSpecParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetLowestInstanceSpec",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/instances/spec/lowest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLowestInstanceSpecReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLowestInstanceSpecOK:
		return v, nil
	case *GetLowestInstanceSpecUnauthorized:
		return nil, v
	case *GetLowestInstanceSpecInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllPodConfigShort instead.

GetAllPodConfig get all pod configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all pod configs in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllPodConfig(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, *GetAllPodConfigBadRequest, *GetAllPodConfigUnauthorized, *GetAllPodConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllPodConfigOK:
		return v, nil, nil, nil, nil

	case *GetAllPodConfigBadRequest:
		return nil, v, nil, nil, nil

	case *GetAllPodConfigUnauthorized:
		return nil, nil, v, nil, nil

	case *GetAllPodConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPodConfigShort get all pod configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all pod configs in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAllPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPodConfigOK:
		return v, nil
	case *GetAllPodConfigBadRequest:
		return nil, v
	case *GetAllPodConfigUnauthorized:
		return nil, v
	case *GetAllPodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPodConfigShort instead.

GetPodConfig get pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated server pod config in a namespace
*/
func (a *Client) GetPodConfig(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, *GetPodConfigBadRequest, *GetPodConfigUnauthorized, *GetPodConfigNotFound, *GetPodConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPodConfigOK:
		return v, nil, nil, nil, nil, nil

	case *GetPodConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetPodConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetPodConfigNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetPodConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPodConfigShort get pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated server pod config in a namespace
*/
func (a *Client) GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPodConfigOK:
		return v, nil
	case *GetPodConfigBadRequest:
		return nil, v
	case *GetPodConfigUnauthorized:
		return nil, v
	case *GetPodConfigNotFound:
		return nil, v
	case *GetPodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePodConfigShort instead.

CreatePodConfig create pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers pod config in a namespace.
*/
func (a *Client) CreatePodConfig(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, *CreatePodConfigBadRequest, *CreatePodConfigUnauthorized, *CreatePodConfigConflict, *CreatePodConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreatePodConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePodConfigCreated:
		return v, nil, nil, nil, nil, nil

	case *CreatePodConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreatePodConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreatePodConfigConflict:
		return nil, nil, nil, v, nil, nil

	case *CreatePodConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePodConfigShort create pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers pod config in a namespace.
*/
func (a *Client) CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreatePodConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePodConfigCreated:
		return v, nil
	case *CreatePodConfigBadRequest:
		return nil, v
	case *CreatePodConfigUnauthorized:
		return nil, v
	case *CreatePodConfigConflict:
		return nil, v
	case *CreatePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePodConfigShort instead.

DeletePodConfig delete pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server pod config in a namespace
*/
func (a *Client) DeletePodConfig(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, *DeletePodConfigBadRequest, *DeletePodConfigUnauthorized, *DeletePodConfigNotFound, *DeletePodConfigConflict, *DeletePodConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeletePodConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePodConfigNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeletePodConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeletePodConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeletePodConfigNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeletePodConfigConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *DeletePodConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePodConfigShort delete pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server pod config in a namespace
*/
func (a *Client) DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeletePodConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePodConfigNoContent:
		return v, nil
	case *DeletePodConfigBadRequest:
		return nil, v
	case *DeletePodConfigUnauthorized:
		return nil, v
	case *DeletePodConfigNotFound:
		return nil, v
	case *DeletePodConfigConflict:
		return nil, v
	case *DeletePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePodConfigShort instead.

UpdatePodConfig update pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers pod config in a namespace.
*/
func (a *Client) UpdatePodConfig(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, *UpdatePodConfigBadRequest, *UpdatePodConfigUnauthorized, *UpdatePodConfigNotFound, *UpdatePodConfigConflict, *UpdatePodConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePodConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePodConfigOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdatePodConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdatePodConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdatePodConfigNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdatePodConfigConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdatePodConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePodConfigShort update pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers pod config in a namespace.
*/
func (a *Client) UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePodConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePodConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePodConfigOK:
		return v, nil
	case *UpdatePodConfigBadRequest:
		return nil, v
	case *UpdatePodConfigUnauthorized:
		return nil, v
	case *UpdatePodConfigNotFound:
		return nil, v
	case *UpdatePodConfigConflict:
		return nil, v
	case *UpdatePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
