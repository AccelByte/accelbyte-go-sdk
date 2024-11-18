// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package configuration_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetListOfSecretsV2(params *GetListOfSecretsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV2OK, *GetListOfSecretsV2BadRequest, *GetListOfSecretsV2Unauthorized, *GetListOfSecretsV2Forbidden, *GetListOfSecretsV2NotFound, *GetListOfSecretsV2InternalServerError, error)
	GetListOfSecretsV2Short(params *GetListOfSecretsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV2OK, error)
	SaveSecretV2(params *SaveSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV2OK, *SaveSecretV2BadRequest, *SaveSecretV2Unauthorized, *SaveSecretV2Forbidden, *SaveSecretV2InternalServerError, error)
	SaveSecretV2Short(params *SaveSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV2OK, error)
	UpdateSecretV2(params *UpdateSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV2OK, *UpdateSecretV2BadRequest, *UpdateSecretV2Unauthorized, *UpdateSecretV2Forbidden, *UpdateSecretV2InternalServerError, error)
	UpdateSecretV2Short(params *UpdateSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV2OK, error)
	DeleteSecretV2(params *DeleteSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV2NoContent, *DeleteSecretV2Unauthorized, *DeleteSecretV2Forbidden, *DeleteSecretV2NotFound, *DeleteSecretV2InternalServerError, error)
	DeleteSecretV2Short(params *DeleteSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV2NoContent, error)
	GetListOfVariablesV2(params *GetListOfVariablesV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV2OK, *GetListOfVariablesV2BadRequest, *GetListOfVariablesV2Unauthorized, *GetListOfVariablesV2Forbidden, *GetListOfVariablesV2NotFound, *GetListOfVariablesV2InternalServerError, error)
	GetListOfVariablesV2Short(params *GetListOfVariablesV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV2OK, error)
	SaveVariableV2(params *SaveVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV2OK, *SaveVariableV2BadRequest, *SaveVariableV2Unauthorized, *SaveVariableV2Forbidden, *SaveVariableV2InternalServerError, error)
	SaveVariableV2Short(params *SaveVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV2OK, error)
	UpdateVariableV2(params *UpdateVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV2OK, *UpdateVariableV2BadRequest, *UpdateVariableV2Unauthorized, *UpdateVariableV2Forbidden, *UpdateVariableV2InternalServerError, error)
	UpdateVariableV2Short(params *UpdateVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV2OK, error)
	DeleteVariableV2(params *DeleteVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV2NoContent, *DeleteVariableV2Unauthorized, *DeleteVariableV2Forbidden, *DeleteVariableV2NotFound, *DeleteVariableV2InternalServerError, error)
	DeleteVariableV2Short(params *DeleteVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV2NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetListOfSecretsV2Short instead.

GetListOfSecretsV2 get list of environment secrets
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

Get list of environment secrets per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfSecretsV2(params *GetListOfSecretsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV2OK, *GetListOfSecretsV2BadRequest, *GetListOfSecretsV2Unauthorized, *GetListOfSecretsV2Forbidden, *GetListOfSecretsV2NotFound, *GetListOfSecretsV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfSecretsV2Params()
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
		ID:                 "GetListOfSecretsV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfSecretsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfSecretsV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetListOfSecretsV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetListOfSecretsV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetListOfSecretsV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetListOfSecretsV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetListOfSecretsV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfSecretsV2Short get list of environment secrets
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

Get list of environment secrets per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfSecretsV2Short(params *GetListOfSecretsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfSecretsV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfSecretsV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfSecretsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfSecretsV2OK:
		return v, nil
	case *GetListOfSecretsV2BadRequest:
		return nil, v
	case *GetListOfSecretsV2Unauthorized:
		return nil, v
	case *GetListOfSecretsV2Forbidden:
		return nil, v
	case *GetListOfSecretsV2NotFound:
		return nil, v
	case *GetListOfSecretsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveSecretV2Short instead.

SaveSecretV2 save an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

Save an environment secret.
Request body:
- configName : environment secret name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveSecretV2(params *SaveSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV2OK, *SaveSecretV2BadRequest, *SaveSecretV2Unauthorized, *SaveSecretV2Forbidden, *SaveSecretV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveSecretV2Params()
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
		ID:                 "SaveSecretV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveSecretV2OK:
		return v, nil, nil, nil, nil, nil

	case *SaveSecretV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *SaveSecretV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *SaveSecretV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *SaveSecretV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveSecretV2Short save an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

Save an environment secret.
Request body:
- configName : environment secret name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveSecretV2Short(params *SaveSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveSecretV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveSecretV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveSecretV2OK:
		return v, nil
	case *SaveSecretV2BadRequest:
		return nil, v
	case *SaveSecretV2Unauthorized:
		return nil, v
	case *SaveSecretV2Forbidden:
		return nil, v
	case *SaveSecretV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSecretV2Short instead.

UpdateSecretV2 update an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

Update an environment secret.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateSecretV2(params *UpdateSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV2OK, *UpdateSecretV2BadRequest, *UpdateSecretV2Unauthorized, *UpdateSecretV2Forbidden, *UpdateSecretV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSecretV2Params()
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
		ID:                 "UpdateSecretV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSecretV2OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateSecretV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateSecretV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateSecretV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateSecretV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSecretV2Short update an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

Update an environment secret.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateSecretV2Short(params *UpdateSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSecretV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateSecretV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSecretV2OK:
		return v, nil
	case *UpdateSecretV2BadRequest:
		return nil, v
	case *UpdateSecretV2Unauthorized:
		return nil, v
	case *UpdateSecretV2Forbidden:
		return nil, v
	case *UpdateSecretV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSecretV2Short instead.

DeleteSecretV2 delete an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

Delete an environment secret by its config id
*/
func (a *Client) DeleteSecretV2(params *DeleteSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV2NoContent, *DeleteSecretV2Unauthorized, *DeleteSecretV2Forbidden, *DeleteSecretV2NotFound, *DeleteSecretV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSecretV2Params()
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
		ID:                 "DeleteSecretV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSecretV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteSecretV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteSecretV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteSecretV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteSecretV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSecretV2Short delete an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

Delete an environment secret by its config id
*/
func (a *Client) DeleteSecretV2Short(params *DeleteSecretV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSecretV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteSecretV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSecretV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSecretV2NoContent:
		return v, nil
	case *DeleteSecretV2Unauthorized:
		return nil, v
	case *DeleteSecretV2Forbidden:
		return nil, v
	case *DeleteSecretV2NotFound:
		return nil, v
	case *DeleteSecretV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetListOfVariablesV2Short instead.

GetListOfVariablesV2 get list of environment variables
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

Get list of environment variables per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfVariablesV2(params *GetListOfVariablesV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV2OK, *GetListOfVariablesV2BadRequest, *GetListOfVariablesV2Unauthorized, *GetListOfVariablesV2Forbidden, *GetListOfVariablesV2NotFound, *GetListOfVariablesV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfVariablesV2Params()
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
		ID:                 "GetListOfVariablesV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfVariablesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListOfVariablesV2OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetListOfVariablesV2BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetListOfVariablesV2Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetListOfVariablesV2Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetListOfVariablesV2NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetListOfVariablesV2InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfVariablesV2Short get list of environment variables
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

Get list of environment variables per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfVariablesV2Short(params *GetListOfVariablesV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfVariablesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListOfVariablesV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfVariablesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfVariablesV2OK:
		return v, nil
	case *GetListOfVariablesV2BadRequest:
		return nil, v
	case *GetListOfVariablesV2Unauthorized:
		return nil, v
	case *GetListOfVariablesV2Forbidden:
		return nil, v
	case *GetListOfVariablesV2NotFound:
		return nil, v
	case *GetListOfVariablesV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveVariableV2Short instead.

SaveVariableV2 save an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

Save an environment variable.
Request body:
- configName : environment variable name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveVariableV2(params *SaveVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV2OK, *SaveVariableV2BadRequest, *SaveVariableV2Unauthorized, *SaveVariableV2Forbidden, *SaveVariableV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveVariableV2Params()
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
		ID:                 "SaveVariableV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveVariableV2OK:
		return v, nil, nil, nil, nil, nil

	case *SaveVariableV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *SaveVariableV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *SaveVariableV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *SaveVariableV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveVariableV2Short save an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

Save an environment variable.
Request body:
- configName : environment variable name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveVariableV2Short(params *SaveVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveVariableV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveVariableV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveVariableV2OK:
		return v, nil
	case *SaveVariableV2BadRequest:
		return nil, v
	case *SaveVariableV2Unauthorized:
		return nil, v
	case *SaveVariableV2Forbidden:
		return nil, v
	case *SaveVariableV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateVariableV2Short instead.

UpdateVariableV2 update an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

Update an environment variable.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateVariableV2(params *UpdateVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV2OK, *UpdateVariableV2BadRequest, *UpdateVariableV2Unauthorized, *UpdateVariableV2Forbidden, *UpdateVariableV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateVariableV2Params()
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
		ID:                 "UpdateVariableV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateVariableV2OK:
		return v, nil, nil, nil, nil, nil

	case *UpdateVariableV2BadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateVariableV2Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateVariableV2Forbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateVariableV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateVariableV2Short update an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

Update an environment variable.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateVariableV2Short(params *UpdateVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateVariableV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateVariableV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateVariableV2OK:
		return v, nil
	case *UpdateVariableV2BadRequest:
		return nil, v
	case *UpdateVariableV2Unauthorized:
		return nil, v
	case *UpdateVariableV2Forbidden:
		return nil, v
	case *UpdateVariableV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteVariableV2Short instead.

DeleteVariableV2 delete an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

Delete an environment variable by its config id
*/
func (a *Client) DeleteVariableV2(params *DeleteVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV2NoContent, *DeleteVariableV2Unauthorized, *DeleteVariableV2Forbidden, *DeleteVariableV2NotFound, *DeleteVariableV2InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteVariableV2Params()
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
		ID:                 "DeleteVariableV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteVariableV2NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteVariableV2Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteVariableV2Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteVariableV2NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteVariableV2InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteVariableV2Short delete an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

Delete an environment variable by its config id
*/
func (a *Client) DeleteVariableV2Short(params *DeleteVariableV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteVariableV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteVariableV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteVariableV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteVariableV2NoContent:
		return v, nil
	case *DeleteVariableV2Unauthorized:
		return nil, v
	case *DeleteVariableV2Forbidden:
		return nil, v
	case *DeleteVariableV2NotFound:
		return nil, v
	case *DeleteVariableV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
