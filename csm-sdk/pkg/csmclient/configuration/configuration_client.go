// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetListOfSecretsV1(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1OK, *GetListOfSecretsV1BadRequest, *GetListOfSecretsV1Unauthorized, *GetListOfSecretsV1Forbidden, *GetListOfSecretsV1NotFound, *GetListOfSecretsV1InternalServerError, error)
	GetListOfSecretsV1Short(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1OK, error)
	SaveSecretV1(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1OK, *SaveSecretV1BadRequest, *SaveSecretV1Unauthorized, *SaveSecretV1Forbidden, *SaveSecretV1InternalServerError, error)
	SaveSecretV1Short(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1OK, error)
	UpdateSecretV1(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1OK, *UpdateSecretV1BadRequest, *UpdateSecretV1Unauthorized, *UpdateSecretV1Forbidden, *UpdateSecretV1InternalServerError, error)
	UpdateSecretV1Short(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1OK, error)
	DeleteSecretV1(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1NoContent, *DeleteSecretV1Unauthorized, *DeleteSecretV1Forbidden, *DeleteSecretV1NotFound, *DeleteSecretV1InternalServerError, error)
	DeleteSecretV1Short(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1NoContent, error)
	GetListOfVariablesV1(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1OK, *GetListOfVariablesV1BadRequest, *GetListOfVariablesV1Unauthorized, *GetListOfVariablesV1Forbidden, *GetListOfVariablesV1NotFound, *GetListOfVariablesV1InternalServerError, error)
	GetListOfVariablesV1Short(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1OK, error)
	SaveVariableV1(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1OK, *SaveVariableV1BadRequest, *SaveVariableV1Unauthorized, *SaveVariableV1Forbidden, *SaveVariableV1InternalServerError, error)
	SaveVariableV1Short(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1OK, error)
	UpdateVariableV1(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1OK, *UpdateVariableV1BadRequest, *UpdateVariableV1Unauthorized, *UpdateVariableV1Forbidden, *UpdateVariableV1InternalServerError, error)
	UpdateVariableV1Short(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1OK, error)
	DeleteVariableV1(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1NoContent, *DeleteVariableV1Unauthorized, *DeleteVariableV1Forbidden, *DeleteVariableV1NotFound, *DeleteVariableV1InternalServerError, error)
	DeleteVariableV1Short(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetListOfSecretsV1Short instead.

GetListOfSecretsV1 get list of environment secrets
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

Get list of environment secrets per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfSecretsV1(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1OK, *GetListOfSecretsV1BadRequest, *GetListOfSecretsV1Unauthorized, *GetListOfSecretsV1Forbidden, *GetListOfSecretsV1NotFound, *GetListOfSecretsV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfSecretsV1Params()
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
		ID:                 "GetListOfSecretsV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfSecretsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfSecretsV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetListOfSecretsV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetListOfSecretsV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetListOfSecretsV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetListOfSecretsV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetListOfSecretsV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfSecretsV1Short get list of environment secrets
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

Get list of environment secrets per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfSecretsV1Short(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfSecretsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfSecretsV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfSecretsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfSecretsV1OK:
		return v, nil
	case *GetListOfSecretsV1BadRequest:
		return nil, v
	case *GetListOfSecretsV1Unauthorized:
		return nil, v
	case *GetListOfSecretsV1Forbidden:
		return nil, v
	case *GetListOfSecretsV1NotFound:
		return nil, v
	case *GetListOfSecretsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveSecretV1Short instead.

SaveSecretV1 save an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

Save an environment secret.
Request body:
- configName : environment secret name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveSecretV1(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1OK, *SaveSecretV1BadRequest, *SaveSecretV1Unauthorized, *SaveSecretV1Forbidden, *SaveSecretV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveSecretV1Params()
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
		ID:                 "SaveSecretV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveSecretV1OK:
		return v, nil, nil, nil, nil, nil

	case *SaveSecretV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *SaveSecretV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *SaveSecretV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *SaveSecretV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveSecretV1Short save an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

Save an environment secret.
Request body:
- configName : environment secret name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveSecretV1Short(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveSecretV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveSecretV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveSecretV1OK:
		return v, nil
	case *SaveSecretV1BadRequest:
		return nil, v
	case *SaveSecretV1Unauthorized:
		return nil, v
	case *SaveSecretV1Forbidden:
		return nil, v
	case *SaveSecretV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSecretV1Short instead.

UpdateSecretV1 update an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

Update an environment secret.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateSecretV1(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1OK, *UpdateSecretV1BadRequest, *UpdateSecretV1Unauthorized, *UpdateSecretV1Forbidden, *UpdateSecretV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSecretV1Params()
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
		ID:                 "UpdateSecretV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSecretV1OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateSecretV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateSecretV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateSecretV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateSecretV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSecretV1Short update an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

Update an environment secret.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateSecretV1Short(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSecretV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateSecretV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSecretV1OK:
		return v, nil
	case *UpdateSecretV1BadRequest:
		return nil, v
	case *UpdateSecretV1Unauthorized:
		return nil, v
	case *UpdateSecretV1Forbidden:
		return nil, v
	case *UpdateSecretV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSecretV1Short instead.

DeleteSecretV1 delete an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

Delete an environment secret.
*/
func (a *Client) DeleteSecretV1(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1NoContent, *DeleteSecretV1Unauthorized, *DeleteSecretV1Forbidden, *DeleteSecretV1NotFound, *DeleteSecretV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSecretV1Params()
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
		ID:                 "DeleteSecretV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSecretV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteSecretV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteSecretV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteSecretV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteSecretV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSecretV1Short delete an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

Delete an environment secret.
*/
func (a *Client) DeleteSecretV1Short(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSecretV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSecretV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSecretV1NoContent:
		return v, nil
	case *DeleteSecretV1Unauthorized:
		return nil, v
	case *DeleteSecretV1Forbidden:
		return nil, v
	case *DeleteSecretV1NotFound:
		return nil, v
	case *DeleteSecretV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListOfVariablesV1Short instead.

GetListOfVariablesV1 get list of environment variables
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

Get list of environment variables per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfVariablesV1(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1OK, *GetListOfVariablesV1BadRequest, *GetListOfVariablesV1Unauthorized, *GetListOfVariablesV1Forbidden, *GetListOfVariablesV1NotFound, *GetListOfVariablesV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfVariablesV1Params()
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
		ID:                 "GetListOfVariablesV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfVariablesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfVariablesV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetListOfVariablesV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetListOfVariablesV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetListOfVariablesV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetListOfVariablesV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetListOfVariablesV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfVariablesV1Short get list of environment variables
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

Get list of environment variables per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfVariablesV1Short(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfVariablesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfVariablesV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfVariablesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfVariablesV1OK:
		return v, nil
	case *GetListOfVariablesV1BadRequest:
		return nil, v
	case *GetListOfVariablesV1Unauthorized:
		return nil, v
	case *GetListOfVariablesV1Forbidden:
		return nil, v
	case *GetListOfVariablesV1NotFound:
		return nil, v
	case *GetListOfVariablesV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveVariableV1Short instead.

SaveVariableV1 save an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

Save an environment variable.
Request body:
- configName : environment variable name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveVariableV1(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1OK, *SaveVariableV1BadRequest, *SaveVariableV1Unauthorized, *SaveVariableV1Forbidden, *SaveVariableV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveVariableV1Params()
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
		ID:                 "SaveVariableV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveVariableV1OK:
		return v, nil, nil, nil, nil, nil

	case *SaveVariableV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *SaveVariableV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *SaveVariableV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *SaveVariableV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveVariableV1Short save an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

Save an environment variable.
Request body:
- configName : environment variable name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveVariableV1Short(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveVariableV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveVariableV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveVariableV1OK:
		return v, nil
	case *SaveVariableV1BadRequest:
		return nil, v
	case *SaveVariableV1Unauthorized:
		return nil, v
	case *SaveVariableV1Forbidden:
		return nil, v
	case *SaveVariableV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateVariableV1Short instead.

UpdateVariableV1 update an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

Update an environment variable.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateVariableV1(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1OK, *UpdateVariableV1BadRequest, *UpdateVariableV1Unauthorized, *UpdateVariableV1Forbidden, *UpdateVariableV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateVariableV1Params()
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
		ID:                 "UpdateVariableV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateVariableV1OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateVariableV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateVariableV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateVariableV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateVariableV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateVariableV1Short update an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

Update an environment variable.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateVariableV1Short(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateVariableV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateVariableV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateVariableV1OK:
		return v, nil
	case *UpdateVariableV1BadRequest:
		return nil, v
	case *UpdateVariableV1Unauthorized:
		return nil, v
	case *UpdateVariableV1Forbidden:
		return nil, v
	case *UpdateVariableV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteVariableV1Short instead.

DeleteVariableV1 delete an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

Delete an environment variable.
*/
func (a *Client) DeleteVariableV1(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1NoContent, *DeleteVariableV1Unauthorized, *DeleteVariableV1Forbidden, *DeleteVariableV1NotFound, *DeleteVariableV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteVariableV1Params()
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
		ID:                 "DeleteVariableV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteVariableV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteVariableV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteVariableV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteVariableV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteVariableV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteVariableV1Short delete an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

Delete an environment variable.
*/
func (a *Client) DeleteVariableV1Short(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteVariableV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteVariableV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteVariableV1NoContent:
		return v, nil
	case *DeleteVariableV1Unauthorized:
		return nil, v
	case *DeleteVariableV1Forbidden:
		return nil, v
	case *DeleteVariableV1NotFound:
		return nil, v
	case *DeleteVariableV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
