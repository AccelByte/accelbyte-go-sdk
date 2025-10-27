// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package policy_versions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policy versions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policy versions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	OldUpdatePolicyVersion(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionOK, *OldUpdatePolicyVersionBadRequest, *OldUpdatePolicyVersionConflict, error)
	OldUpdatePolicyVersionShort(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionOK, error)
	OldPublishPolicyVersion(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionOK, *OldPublishPolicyVersionBadRequest, *OldPublishPolicyVersionConflict, error)
	OldPublishPolicyVersionShort(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionOK, error)
	OldRetrieveSinglePolicyVersion(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionOK, *OldRetrieveSinglePolicyVersionNotFound, error)
	OldRetrieveSinglePolicyVersionShort(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionOK, error)
	OldCreatePolicyVersion(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionCreated, *OldCreatePolicyVersionBadRequest, error)
	OldCreatePolicyVersionShort(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use OldUpdatePolicyVersionShort instead.

OldUpdatePolicyVersion update a version of policy
Update a particular policy version.
*/
func (a *Client) OldUpdatePolicyVersion(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionOK, *OldUpdatePolicyVersionBadRequest, *OldUpdatePolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdatePolicyVersionParams()
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
		ID:                 "oldUpdatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *OldUpdatePolicyVersionOK:
		return v, nil, nil, nil

	case *OldUpdatePolicyVersionBadRequest:
		return nil, v, nil, nil

	case *OldUpdatePolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldUpdatePolicyVersionShort update a version of policy
Update a particular policy version.
*/
func (a *Client) OldUpdatePolicyVersionShort(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldUpdatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldUpdatePolicyVersionOK:
		return v, nil
	case *OldUpdatePolicyVersionBadRequest:
		return nil, v
	case *OldUpdatePolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldPublishPolicyVersionShort instead.

OldPublishPolicyVersion manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) OldPublishPolicyVersion(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionOK, *OldPublishPolicyVersionBadRequest, *OldPublishPolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublishPolicyVersionParams()
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
		ID:                 "oldPublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *OldPublishPolicyVersionOK:
		return v, nil, nil, nil

	case *OldPublishPolicyVersionBadRequest:
		return nil, v, nil, nil

	case *OldPublishPolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldPublishPolicyVersionShort manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) OldPublishPolicyVersionShort(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublishPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldPublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldPublishPolicyVersionOK:
		return v, nil
	case *OldPublishPolicyVersionBadRequest:
		return nil, v
	case *OldPublishPolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldRetrieveSinglePolicyVersionShort instead.

OldRetrieveSinglePolicyVersion retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) OldRetrieveSinglePolicyVersion(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionOK, *OldRetrieveSinglePolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSinglePolicyVersionParams()
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
		ID:                 "oldRetrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSinglePolicyVersionOK:
		return v, nil, nil

	case *OldRetrieveSinglePolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveSinglePolicyVersionShort retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) OldRetrieveSinglePolicyVersionShort(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSinglePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldRetrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSinglePolicyVersionOK:
		return v, nil
	case *OldRetrieveSinglePolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldCreatePolicyVersionShort instead.

OldCreatePolicyVersion create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreatePolicyVersion(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionCreated, *OldCreatePolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreatePolicyVersionParams()
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
		ID:                 "oldCreatePolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldCreatePolicyVersionCreated:
		return v, nil, nil

	case *OldCreatePolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldCreatePolicyVersionShort create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreatePolicyVersionShort(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldCreatePolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldCreatePolicyVersionCreated:
		return v, nil
	case *OldCreatePolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
