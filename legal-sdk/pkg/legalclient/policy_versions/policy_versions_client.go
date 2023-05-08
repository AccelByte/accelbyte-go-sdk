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
	UpdatePolicyVersion(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionOK, *UpdatePolicyVersionBadRequest, *UpdatePolicyVersionConflict, error)
	UpdatePolicyVersionShort(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionOK, error)
	PublishPolicyVersion(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionOK, *PublishPolicyVersionBadRequest, *PublishPolicyVersionConflict, error)
	PublishPolicyVersionShort(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionOK, error)
	RetrieveSinglePolicyVersion(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionOK, *RetrieveSinglePolicyVersionNotFound, error)
	RetrieveSinglePolicyVersionShort(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionOK, error)
	CreatePolicyVersion(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionCreated, *CreatePolicyVersionBadRequest, error)
	CreatePolicyVersionShort(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use UpdatePolicyVersionShort instead.

UpdatePolicyVersion update a version of policy
Update a particular policy version.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) UpdatePolicyVersion(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionOK, *UpdatePolicyVersionBadRequest, *UpdatePolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersionOK:
		return v, nil, nil, nil

	case *UpdatePolicyVersionBadRequest:
		return nil, v, nil, nil

	case *UpdatePolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePolicyVersionShort update a version of policy
Update a particular policy version.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) UpdatePolicyVersionShort(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersionOK:
		return v, nil
	case *UpdatePolicyVersionBadRequest:
		return nil, v
	case *UpdatePolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublishPolicyVersionShort instead.

PublishPolicyVersion manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) PublishPolicyVersion(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionOK, *PublishPolicyVersionBadRequest, *PublishPolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersionOK:
		return v, nil, nil, nil

	case *PublishPolicyVersionBadRequest:
		return nil, v, nil, nil

	case *PublishPolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishPolicyVersionShort manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) PublishPolicyVersionShort(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersionOK:
		return v, nil
	case *PublishPolicyVersionBadRequest:
		return nil, v
	case *PublishPolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSinglePolicyVersionShort instead.

RetrieveSinglePolicyVersion retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveSinglePolicyVersion(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionOK, *RetrieveSinglePolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersionOK:
		return v, nil, nil

	case *RetrieveSinglePolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyVersionShort retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveSinglePolicyVersionShort(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersionOK:
		return v, nil
	case *RetrieveSinglePolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePolicyVersionShort instead.

CreatePolicyVersion create a version from country-specific policy
Create a version of a particular country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
*/
func (a *Client) CreatePolicyVersion(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionCreated, *CreatePolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersionCreated:
		return v, nil, nil

	case *CreatePolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyVersionShort create a version from country-specific policy
Create a version of a particular country-specific policy.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
*/
func (a *Client) CreatePolicyVersionShort(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersionCreated:
		return v, nil
	case *CreatePolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
