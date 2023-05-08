// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package rule_sets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new rule sets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for rule sets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RuleSetList(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListOK, *RuleSetListUnauthorized, *RuleSetListForbidden, *RuleSetListInternalServerError, error)
	RuleSetListShort(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListOK, error)
	CreateRuleSet(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetCreated, *CreateRuleSetBadRequest, *CreateRuleSetUnauthorized, *CreateRuleSetForbidden, *CreateRuleSetConflict, *CreateRuleSetInternalServerError, error)
	CreateRuleSetShort(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetCreated, error)
	RuleSetDetails(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsOK, *RuleSetDetailsUnauthorized, *RuleSetDetailsForbidden, *RuleSetDetailsInternalServerError, error)
	RuleSetDetailsShort(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsOK, error)
	UpdateRuleSet(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetOK, *UpdateRuleSetBadRequest, *UpdateRuleSetUnauthorized, *UpdateRuleSetForbidden, *UpdateRuleSetNotFound, *UpdateRuleSetInternalServerError, error)
	UpdateRuleSetShort(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetOK, error)
	DeleteRuleSet(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetNoContent, *DeleteRuleSetUnauthorized, *DeleteRuleSetForbidden, *DeleteRuleSetNotFound, *DeleteRuleSetInternalServerError, error)
	DeleteRuleSetShort(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RuleSetListShort instead.

RuleSetList list existing rule sets
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [READ]

Required Scope: social

List rule sets.
*/
func (a *Client) RuleSetList(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListOK, *RuleSetListUnauthorized, *RuleSetListForbidden, *RuleSetListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RuleSetList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RuleSetListOK:
		return v, nil, nil, nil, nil

	case *RuleSetListUnauthorized:
		return nil, v, nil, nil, nil

	case *RuleSetListForbidden:
		return nil, nil, v, nil, nil

	case *RuleSetListInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RuleSetListShort list existing rule sets
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [READ]

Required Scope: social

List rule sets.
*/
func (a *Client) RuleSetListShort(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RuleSetList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RuleSetListOK:
		return v, nil
	case *RuleSetListUnauthorized:
		return nil, v
	case *RuleSetListForbidden:
		return nil, v
	case *RuleSetListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateRuleSetShort instead.

CreateRuleSet create a match rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [CREATE]

Required Scope: social

Creates a new rules set.

A rule set has a name and contains arbitrary data which is meaningful to some particular match function(s)
The name is used for a match pool to select the ruleset data that should be sent to the match function when matchmaking in that pool.

To use custom rules set please set enable_custom_match_function=true. Default (false).
*/
func (a *Client) CreateRuleSet(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetCreated, *CreateRuleSetBadRequest, *CreateRuleSetUnauthorized, *CreateRuleSetForbidden, *CreateRuleSetConflict, *CreateRuleSetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateRuleSet",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateRuleSetCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateRuleSetBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateRuleSetUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateRuleSetForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateRuleSetConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateRuleSetInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRuleSetShort create a match rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [CREATE]

Required Scope: social

Creates a new rules set.

A rule set has a name and contains arbitrary data which is meaningful to some particular match function(s)
The name is used for a match pool to select the ruleset data that should be sent to the match function when matchmaking in that pool.

To use custom rules set please set enable_custom_match_function=true. Default (false).
*/
func (a *Client) CreateRuleSetShort(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateRuleSet",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRuleSetCreated:
		return v, nil
	case *CreateRuleSetBadRequest:
		return nil, v
	case *CreateRuleSetUnauthorized:
		return nil, v
	case *CreateRuleSetForbidden:
		return nil, v
	case *CreateRuleSetConflict:
		return nil, v
	case *CreateRuleSetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RuleSetDetailsShort instead.

RuleSetDetails get details for a specific rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [READ]

Required Scope: social

Get details for a specific rule set
*/
func (a *Client) RuleSetDetails(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsOK, *RuleSetDetailsUnauthorized, *RuleSetDetailsForbidden, *RuleSetDetailsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RuleSetDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RuleSetDetailsOK:
		return v, nil, nil, nil, nil

	case *RuleSetDetailsUnauthorized:
		return nil, v, nil, nil, nil

	case *RuleSetDetailsForbidden:
		return nil, nil, v, nil, nil

	case *RuleSetDetailsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RuleSetDetailsShort get details for a specific rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [READ]

Required Scope: social

Get details for a specific rule set
*/
func (a *Client) RuleSetDetailsShort(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RuleSetDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RuleSetDetailsOK:
		return v, nil
	case *RuleSetDetailsUnauthorized:
		return nil, v
	case *RuleSetDetailsForbidden:
		return nil, v
	case *RuleSetDetailsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRuleSetShort instead.

UpdateRuleSet update a match rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [UPDATE]

Required Scope: social

Updates an existing matchmaking rule set.

To use custom rules set please set enable_custom_match_function=true. Default (false).
*/
func (a *Client) UpdateRuleSet(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetOK, *UpdateRuleSetBadRequest, *UpdateRuleSetUnauthorized, *UpdateRuleSetForbidden, *UpdateRuleSetNotFound, *UpdateRuleSetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRuleSet",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRuleSetOK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateRuleSetBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateRuleSetUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateRuleSetForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateRuleSetNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateRuleSetInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRuleSetShort update a match rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [UPDATE]

Required Scope: social

Updates an existing matchmaking rule set.

To use custom rules set please set enable_custom_match_function=true. Default (false).
*/
func (a *Client) UpdateRuleSetShort(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateRuleSet",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRuleSetOK:
		return v, nil
	case *UpdateRuleSetBadRequest:
		return nil, v
	case *UpdateRuleSetUnauthorized:
		return nil, v
	case *UpdateRuleSetForbidden:
		return nil, v
	case *UpdateRuleSetNotFound:
		return nil, v
	case *UpdateRuleSetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRuleSetShort instead.

DeleteRuleSet delete a rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [DELETE]

Required Scope: social

Deletes an existing rule set.
*/
func (a *Client) DeleteRuleSet(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetNoContent, *DeleteRuleSetUnauthorized, *DeleteRuleSetForbidden, *DeleteRuleSetNotFound, *DeleteRuleSetInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRuleSet",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteRuleSetNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteRuleSetUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteRuleSetForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteRuleSetNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteRuleSetInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRuleSetShort delete a rule set
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:RULES [DELETE]

Required Scope: social

Deletes an existing rule set.
*/
func (a *Client) DeleteRuleSetShort(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRuleSetParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteRuleSet",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRuleSetNoContent:
		return v, nil
	case *DeleteRuleSetUnauthorized:
		return nil, v
	case *DeleteRuleSetForbidden:
		return nil, v
	case *DeleteRuleSetNotFound:
		return nil, v
	case *DeleteRuleSetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
