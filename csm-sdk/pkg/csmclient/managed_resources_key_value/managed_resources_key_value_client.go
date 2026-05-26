// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package managed_resources_key_value

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources key value API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources key value API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateKeyValueCredentialV2(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2OK, *CreateKeyValueCredentialV2BadRequest, *CreateKeyValueCredentialV2Unauthorized, *CreateKeyValueCredentialV2Forbidden, *CreateKeyValueCredentialV2NotFound, *CreateKeyValueCredentialV2Conflict, *CreateKeyValueCredentialV2InternalServerError, *CreateKeyValueCredentialV2ServiceUnavailable, error)
	CreateKeyValueCredentialV2Short(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2OK, error)
	GetIntegrationAppKeyValueClusterV2(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2OK, *GetIntegrationAppKeyValueClusterV2BadRequest, *GetIntegrationAppKeyValueClusterV2Unauthorized, *GetIntegrationAppKeyValueClusterV2Forbidden, *GetIntegrationAppKeyValueClusterV2NotFound, *GetIntegrationAppKeyValueClusterV2InternalServerError, error)
	GetIntegrationAppKeyValueClusterV2Short(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2OK, error)
	IntegrateAppKeyValueClusterV2(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2OK, *IntegrateAppKeyValueClusterV2BadRequest, *IntegrateAppKeyValueClusterV2Unauthorized, *IntegrateAppKeyValueClusterV2Forbidden, *IntegrateAppKeyValueClusterV2NotFound, *IntegrateAppKeyValueClusterV2Conflict, *IntegrateAppKeyValueClusterV2InternalServerError, error)
	IntegrateAppKeyValueClusterV2Short(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2OK, error)
	RemoveIntegrationAppKeyValueClusterV2(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2NoContent, *RemoveIntegrationAppKeyValueClusterV2BadRequest, *RemoveIntegrationAppKeyValueClusterV2Unauthorized, *RemoveIntegrationAppKeyValueClusterV2Forbidden, *RemoveIntegrationAppKeyValueClusterV2NotFound, *RemoveIntegrationAppKeyValueClusterV2InternalServerError, error)
	RemoveIntegrationAppKeyValueClusterV2Short(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2NoContent, error)
	GetKeyValueClusterV2(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2OK, *GetKeyValueClusterV2BadRequest, *GetKeyValueClusterV2Unauthorized, *GetKeyValueClusterV2Forbidden, *GetKeyValueClusterV2NotFound, *GetKeyValueClusterV2InternalServerError, error)
	GetKeyValueClusterV2Short(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2OK, error)
	ListKeyValueClusterV2(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2OK, *ListKeyValueClusterV2BadRequest, *ListKeyValueClusterV2Unauthorized, *ListKeyValueClusterV2Forbidden, *ListKeyValueClusterV2InternalServerError, error)
	ListKeyValueClusterV2Short(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2OK, error)
	CreateKeyValueClusterV2(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Created, *CreateKeyValueClusterV2BadRequest, *CreateKeyValueClusterV2Unauthorized, *CreateKeyValueClusterV2Forbidden, *CreateKeyValueClusterV2Conflict, *CreateKeyValueClusterV2InternalServerError, error)
	CreateKeyValueClusterV2Short(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Created, error)
	GetKeyValueClusterLimitConfigV2(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2OK, *GetKeyValueClusterLimitConfigV2BadRequest, *GetKeyValueClusterLimitConfigV2Unauthorized, *GetKeyValueClusterLimitConfigV2Forbidden, *GetKeyValueClusterLimitConfigV2InternalServerError, error)
	GetKeyValueClusterLimitConfigV2Short(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2OK, error)
	UpdateKeyValueClusterV2(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2OK, *UpdateKeyValueClusterV2BadRequest, *UpdateKeyValueClusterV2Unauthorized, *UpdateKeyValueClusterV2Forbidden, *UpdateKeyValueClusterV2NotFound, *UpdateKeyValueClusterV2InternalServerError, error)
	UpdateKeyValueClusterV2Short(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2OK, error)
	DeleteKeyValueClusterV2(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2OK, *DeleteKeyValueClusterV2Unauthorized, *DeleteKeyValueClusterV2Forbidden, *DeleteKeyValueClusterV2NotFound, *DeleteKeyValueClusterV2Conflict, *DeleteKeyValueClusterV2InternalServerError, error)
	DeleteKeyValueClusterV2Short(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2OK, error)
	GetListIntegratedAppKeyValueClusterV2(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2OK, *GetListIntegratedAppKeyValueClusterV2Unauthorized, *GetListIntegratedAppKeyValueClusterV2Forbidden, *GetListIntegratedAppKeyValueClusterV2NotFound, *GetListIntegratedAppKeyValueClusterV2InternalServerError, error)
	GetListIntegratedAppKeyValueClusterV2Short(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateKeyValueCredentialV2Short instead.

CreateKeyValueCredentialV2 generate a new credential for an extend app integrated with a keyvalue cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CREDENTIALS [CREATE]`

Generates a new credential for an extend app that is already integrated with a KeyValue cluster.
Replaces the old credential. Integration status will transition to MODIFYING, then READY when complete.
If the same username and password are provided, returns the existing credential (idempotent).

Acknowledgement for secure credential handling is only required at integrate-app; not needed for this endpoint.
*/
func (a *Client) CreateKeyValueCredentialV2(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2OK, *CreateKeyValueCredentialV2BadRequest, *CreateKeyValueCredentialV2Unauthorized, *CreateKeyValueCredentialV2Forbidden, *CreateKeyValueCredentialV2NotFound, *CreateKeyValueCredentialV2Conflict, *CreateKeyValueCredentialV2InternalServerError, *CreateKeyValueCredentialV2ServiceUnavailable, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueCredentialV2Params()
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
		ID:                 "CreateKeyValueCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueCredentialV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *CreateKeyValueCredentialV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *CreateKeyValueCredentialV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *CreateKeyValueCredentialV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *CreateKeyValueCredentialV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *CreateKeyValueCredentialV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *CreateKeyValueCredentialV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *CreateKeyValueCredentialV2ServiceUnavailable:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateKeyValueCredentialV2Short generate a new credential for an extend app integrated with a keyvalue cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CREDENTIALS [CREATE]`

Generates a new credential for an extend app that is already integrated with a KeyValue cluster.
Replaces the old credential. Integration status will transition to MODIFYING, then READY when complete.
If the same username and password are provided, returns the existing credential (idempotent).

Acknowledgement for secure credential handling is only required at integrate-app; not needed for this endpoint.
*/
func (a *Client) CreateKeyValueCredentialV2Short(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueCredentialV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateKeyValueCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueCredentialV2OK:
		return v, nil
	case *CreateKeyValueCredentialV2BadRequest:
		return nil, v
	case *CreateKeyValueCredentialV2Unauthorized:
		return nil, v
	case *CreateKeyValueCredentialV2Forbidden:
		return nil, v
	case *CreateKeyValueCredentialV2NotFound:
		return nil, v
	case *CreateKeyValueCredentialV2Conflict:
		return nil, v
	case *CreateKeyValueCredentialV2InternalServerError:
		return nil, v
	case *CreateKeyValueCredentialV2ServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetIntegrationAppKeyValueClusterV2Short instead.

GetIntegrationAppKeyValueClusterV2 get an extend app integration
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [READ]`

Get integration of an extend app with a cluster.
*/
func (a *Client) GetIntegrationAppKeyValueClusterV2(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2OK, *GetIntegrationAppKeyValueClusterV2BadRequest, *GetIntegrationAppKeyValueClusterV2Unauthorized, *GetIntegrationAppKeyValueClusterV2Forbidden, *GetIntegrationAppKeyValueClusterV2NotFound, *GetIntegrationAppKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIntegrationAppKeyValueClusterV2Params()
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
		ID:                 "GetIntegrationAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetIntegrationAppKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetIntegrationAppKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetIntegrationAppKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetIntegrationAppKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetIntegrationAppKeyValueClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetIntegrationAppKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIntegrationAppKeyValueClusterV2Short get an extend app integration
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [READ]`

Get integration of an extend app with a cluster.
*/
func (a *Client) GetIntegrationAppKeyValueClusterV2Short(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIntegrationAppKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetIntegrationAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIntegrationAppKeyValueClusterV2OK:
		return v, nil
	case *GetIntegrationAppKeyValueClusterV2BadRequest:
		return nil, v
	case *GetIntegrationAppKeyValueClusterV2Unauthorized:
		return nil, v
	case *GetIntegrationAppKeyValueClusterV2Forbidden:
		return nil, v
	case *GetIntegrationAppKeyValueClusterV2NotFound:
		return nil, v
	case *GetIntegrationAppKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IntegrateAppKeyValueClusterV2Short instead.

IntegrateAppKeyValueClusterV2 integrate extend app with keyvalue cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [CREATE]`

Integrate an Extend App with an existing KeyValue cluster. Injects REDIS_HOST, REDIS_PORT, REDIS_USERNAME, REDIS_PASSWORD to the app config.
*/
func (a *Client) IntegrateAppKeyValueClusterV2(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2OK, *IntegrateAppKeyValueClusterV2BadRequest, *IntegrateAppKeyValueClusterV2Unauthorized, *IntegrateAppKeyValueClusterV2Forbidden, *IntegrateAppKeyValueClusterV2NotFound, *IntegrateAppKeyValueClusterV2Conflict, *IntegrateAppKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIntegrateAppKeyValueClusterV2Params()
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
		ID:                 "IntegrateAppKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IntegrateAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *IntegrateAppKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *IntegrateAppKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *IntegrateAppKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *IntegrateAppKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *IntegrateAppKeyValueClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *IntegrateAppKeyValueClusterV2Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *IntegrateAppKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IntegrateAppKeyValueClusterV2Short integrate extend app with keyvalue cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [CREATE]`

Integrate an Extend App with an existing KeyValue cluster. Injects REDIS_HOST, REDIS_PORT, REDIS_USERNAME, REDIS_PASSWORD to the app config.
*/
func (a *Client) IntegrateAppKeyValueClusterV2Short(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIntegrateAppKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "IntegrateAppKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IntegrateAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IntegrateAppKeyValueClusterV2OK:
		return v, nil
	case *IntegrateAppKeyValueClusterV2BadRequest:
		return nil, v
	case *IntegrateAppKeyValueClusterV2Unauthorized:
		return nil, v
	case *IntegrateAppKeyValueClusterV2Forbidden:
		return nil, v
	case *IntegrateAppKeyValueClusterV2NotFound:
		return nil, v
	case *IntegrateAppKeyValueClusterV2Conflict:
		return nil, v
	case *IntegrateAppKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RemoveIntegrationAppKeyValueClusterV2Short instead.

RemoveIntegrationAppKeyValueClusterV2 remove integration of an extend app from a cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [DELETE]`

Remove integration of an extend app with a cluster. Removes key-value env/secret from app, deletes credential and AWS user.
*/
func (a *Client) RemoveIntegrationAppKeyValueClusterV2(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2NoContent, *RemoveIntegrationAppKeyValueClusterV2BadRequest, *RemoveIntegrationAppKeyValueClusterV2Unauthorized, *RemoveIntegrationAppKeyValueClusterV2Forbidden, *RemoveIntegrationAppKeyValueClusterV2NotFound, *RemoveIntegrationAppKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveIntegrationAppKeyValueClusterV2Params()
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
		ID:                 "RemoveIntegrationAppKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RemoveIntegrationAppKeyValueClusterV2NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *RemoveIntegrationAppKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *RemoveIntegrationAppKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *RemoveIntegrationAppKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *RemoveIntegrationAppKeyValueClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *RemoveIntegrationAppKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveIntegrationAppKeyValueClusterV2Short remove integration of an extend app from a cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [DELETE]`

Remove integration of an extend app with a cluster. Removes key-value env/secret from app, deletes credential and AWS user.
*/
func (a *Client) RemoveIntegrationAppKeyValueClusterV2Short(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveIntegrationAppKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RemoveIntegrationAppKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveIntegrationAppKeyValueClusterV2NoContent:
		return v, nil
	case *RemoveIntegrationAppKeyValueClusterV2BadRequest:
		return nil, v
	case *RemoveIntegrationAppKeyValueClusterV2Unauthorized:
		return nil, v
	case *RemoveIntegrationAppKeyValueClusterV2Forbidden:
		return nil, v
	case *RemoveIntegrationAppKeyValueClusterV2NotFound:
		return nil, v
	case *RemoveIntegrationAppKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetKeyValueClusterV2Short instead.

GetKeyValueClusterV2 get key-value cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get Key-Value cluster information returns the Key-Value cluster related information by given studio/publisher namespace.

`status` field - indicates the Key-Value cluster status.
*/
func (a *Client) GetKeyValueClusterV2(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2OK, *GetKeyValueClusterV2BadRequest, *GetKeyValueClusterV2Unauthorized, *GetKeyValueClusterV2Forbidden, *GetKeyValueClusterV2NotFound, *GetKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterV2Params()
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
		ID:                 "GetKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetKeyValueClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyValueClusterV2Short get key-value cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get Key-Value cluster information returns the Key-Value cluster related information by given studio/publisher namespace.

`status` field - indicates the Key-Value cluster status.
*/
func (a *Client) GetKeyValueClusterV2Short(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterV2OK:
		return v, nil
	case *GetKeyValueClusterV2BadRequest:
		return nil, v
	case *GetKeyValueClusterV2Unauthorized:
		return nil, v
	case *GetKeyValueClusterV2Forbidden:
		return nil, v
	case *GetKeyValueClusterV2NotFound:
		return nil, v
	case *GetKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListKeyValueClusterV2Short instead.

ListKeyValueClusterV2 list key-value clusters
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

List Key-Value clusters by studio/publisher namespace.
If `refresh=true`, the service will sync cluster status from the provider (cached).
*/
func (a *Client) ListKeyValueClusterV2(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2OK, *ListKeyValueClusterV2BadRequest, *ListKeyValueClusterV2Unauthorized, *ListKeyValueClusterV2Forbidden, *ListKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeyValueClusterV2Params()
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
		ID:                 "ListKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil

	case *ListKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *ListKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListKeyValueClusterV2Short list key-value clusters
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

List Key-Value clusters by studio/publisher namespace.
If `refresh=true`, the service will sync cluster status from the provider (cached).
*/
func (a *Client) ListKeyValueClusterV2Short(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListKeyValueClusterV2OK:
		return v, nil
	case *ListKeyValueClusterV2BadRequest:
		return nil, v
	case *ListKeyValueClusterV2Unauthorized:
		return nil, v
	case *ListKeyValueClusterV2Forbidden:
		return nil, v
	case *ListKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateKeyValueClusterV2Short instead.

CreateKeyValueClusterV2 creates key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [CREATE]`

Provision Key-Value cluster using AWS Valkey Serverless that can be used by extend apps in game namespace within the studio.

Cluster limits:
- Private cloud: up to 10 clusters per studio namespace
- Shared cloud: 1 cluster per studio namespace

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateKeyValueClusterV2(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Created, *CreateKeyValueClusterV2BadRequest, *CreateKeyValueClusterV2Unauthorized, *CreateKeyValueClusterV2Forbidden, *CreateKeyValueClusterV2Conflict, *CreateKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueClusterV2Params()
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
		ID:                 "CreateKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueClusterV2Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateKeyValueClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateKeyValueClusterV2Short creates key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [CREATE]`

Provision Key-Value cluster using AWS Valkey Serverless that can be used by extend apps in game namespace within the studio.

Cluster limits:
- Private cloud: up to 10 clusters per studio namespace
- Shared cloud: 1 cluster per studio namespace

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateKeyValueClusterV2Short(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueClusterV2Created:
		return v, nil
	case *CreateKeyValueClusterV2BadRequest:
		return nil, v
	case *CreateKeyValueClusterV2Unauthorized:
		return nil, v
	case *CreateKeyValueClusterV2Forbidden:
		return nil, v
	case *CreateKeyValueClusterV2Conflict:
		return nil, v
	case *CreateKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetKeyValueClusterLimitConfigV2Short instead.

GetKeyValueClusterLimitConfigV2 get key-value cluster limit config
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get Key-Value cluster limit config.
*/
func (a *Client) GetKeyValueClusterLimitConfigV2(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2OK, *GetKeyValueClusterLimitConfigV2BadRequest, *GetKeyValueClusterLimitConfigV2Unauthorized, *GetKeyValueClusterLimitConfigV2Forbidden, *GetKeyValueClusterLimitConfigV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterLimitConfigV2Params()
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
		ID:                 "GetKeyValueClusterLimitConfigV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterLimitConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterLimitConfigV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetKeyValueClusterLimitConfigV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetKeyValueClusterLimitConfigV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetKeyValueClusterLimitConfigV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetKeyValueClusterLimitConfigV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyValueClusterLimitConfigV2Short get key-value cluster limit config
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get Key-Value cluster limit config.
*/
func (a *Client) GetKeyValueClusterLimitConfigV2Short(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterLimitConfigV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetKeyValueClusterLimitConfigV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterLimitConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterLimitConfigV2OK:
		return v, nil
	case *GetKeyValueClusterLimitConfigV2BadRequest:
		return nil, v
	case *GetKeyValueClusterLimitConfigV2Unauthorized:
		return nil, v
	case *GetKeyValueClusterLimitConfigV2Forbidden:
		return nil, v
	case *GetKeyValueClusterLimitConfigV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateKeyValueClusterV2Short instead.

UpdateKeyValueClusterV2 update key-value cluster configuration
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [UPDATE]`

Update Key-Value cluster configuration (maxDataStorageGB, maxECPUPerSecond, profileName).
Only allowed when cluster status is AVAILABLE. Process is asynchronous; poll Get Cluster for updated status.
*/
func (a *Client) UpdateKeyValueClusterV2(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2OK, *UpdateKeyValueClusterV2BadRequest, *UpdateKeyValueClusterV2Unauthorized, *UpdateKeyValueClusterV2Forbidden, *UpdateKeyValueClusterV2NotFound, *UpdateKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyValueClusterV2Params()
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
		ID:                 "UpdateKeyValueClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateKeyValueClusterV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateKeyValueClusterV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateKeyValueClusterV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateKeyValueClusterV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateKeyValueClusterV2Short update key-value cluster configuration
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [UPDATE]`

Update Key-Value cluster configuration (maxDataStorageGB, maxECPUPerSecond, profileName).
Only allowed when cluster status is AVAILABLE. Process is asynchronous; poll Get Cluster for updated status.
*/
func (a *Client) UpdateKeyValueClusterV2Short(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateKeyValueClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyValueClusterV2OK:
		return v, nil
	case *UpdateKeyValueClusterV2BadRequest:
		return nil, v
	case *UpdateKeyValueClusterV2Unauthorized:
		return nil, v
	case *UpdateKeyValueClusterV2Forbidden:
		return nil, v
	case *UpdateKeyValueClusterV2NotFound:
		return nil, v
	case *UpdateKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteKeyValueClusterV2Short instead.

DeleteKeyValueClusterV2 delete key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [DELETE]`

Delete Key-Value cluster. Only allowed when cluster status is AVAILABLE or CREATE-FAILED.
Force-deletes all active integrations. Returns resource with status DELETING.
*/
func (a *Client) DeleteKeyValueClusterV2(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2OK, *DeleteKeyValueClusterV2Unauthorized, *DeleteKeyValueClusterV2Forbidden, *DeleteKeyValueClusterV2NotFound, *DeleteKeyValueClusterV2Conflict, *DeleteKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteKeyValueClusterV2Params()
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
		ID:                 "DeleteKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteKeyValueClusterV2Unauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteKeyValueClusterV2Forbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteKeyValueClusterV2NotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteKeyValueClusterV2Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteKeyValueClusterV2Short delete key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [DELETE]`

Delete Key-Value cluster. Only allowed when cluster status is AVAILABLE or CREATE-FAILED.
Force-deletes all active integrations. Returns resource with status DELETING.
*/
func (a *Client) DeleteKeyValueClusterV2Short(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteKeyValueClusterV2OK:
		return v, nil
	case *DeleteKeyValueClusterV2Unauthorized:
		return nil, v
	case *DeleteKeyValueClusterV2Forbidden:
		return nil, v
	case *DeleteKeyValueClusterV2NotFound:
		return nil, v
	case *DeleteKeyValueClusterV2Conflict:
		return nil, v
	case *DeleteKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListIntegratedAppKeyValueClusterV2Short instead.

GetListIntegratedAppKeyValueClusterV2 get list extend apps integrated with a key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get the list of Extend Apps integrated with a specific Key-Value cluster. Only active integrations are returned.
*/
func (a *Client) GetListIntegratedAppKeyValueClusterV2(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2OK, *GetListIntegratedAppKeyValueClusterV2Unauthorized, *GetListIntegratedAppKeyValueClusterV2Forbidden, *GetListIntegratedAppKeyValueClusterV2NotFound, *GetListIntegratedAppKeyValueClusterV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListIntegratedAppKeyValueClusterV2Params()
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
		ID:                 "GetListIntegratedAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListIntegratedAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListIntegratedAppKeyValueClusterV2OK:
		return v, nil, nil, nil, nil, nil

	case *GetListIntegratedAppKeyValueClusterV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetListIntegratedAppKeyValueClusterV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetListIntegratedAppKeyValueClusterV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetListIntegratedAppKeyValueClusterV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListIntegratedAppKeyValueClusterV2Short get list extend apps integrated with a key-value cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

Get the list of Extend Apps integrated with a specific Key-Value cluster. Only active integrations are returned.
*/
func (a *Client) GetListIntegratedAppKeyValueClusterV2Short(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListIntegratedAppKeyValueClusterV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListIntegratedAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListIntegratedAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListIntegratedAppKeyValueClusterV2OK:
		return v, nil
	case *GetListIntegratedAppKeyValueClusterV2Unauthorized:
		return nil, v
	case *GetListIntegratedAppKeyValueClusterV2Forbidden:
		return nil, v
	case *GetListIntegratedAppKeyValueClusterV2NotFound:
		return nil, v
	case *GetListIntegratedAppKeyValueClusterV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
