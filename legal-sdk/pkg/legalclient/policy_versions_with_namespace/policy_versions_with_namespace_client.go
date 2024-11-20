// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package policy_versions_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policy versions with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policy versions with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeletePolicyVersion(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionNoContent, *DeletePolicyVersionBadRequest, error)
	DeletePolicyVersionShort(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionNoContent, error)
	UpdatePolicyVersion1(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1OK, *UpdatePolicyVersion1BadRequest, *UpdatePolicyVersion1Conflict, error)
	UpdatePolicyVersion1Short(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1OK, error)
	PublishPolicyVersion1(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1OK, *PublishPolicyVersion1BadRequest, *PublishPolicyVersion1Conflict, error)
	PublishPolicyVersion1Short(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1OK, error)
	UnpublishPolicyVersion(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionNoContent, *UnpublishPolicyVersionBadRequest, error)
	UnpublishPolicyVersionShort(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionNoContent, error)
	RetrieveSinglePolicyVersion1(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1OK, *RetrieveSinglePolicyVersion1NotFound, error)
	RetrieveSinglePolicyVersion1Short(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1OK, error)
	CreatePolicyVersion1(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Created, *CreatePolicyVersion1BadRequest, error)
	CreatePolicyVersion1Short(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use DeletePolicyVersionShort instead.

DeletePolicyVersion delete a version of policy
Delete a policy version from policy.Can only be deleted if match these criteria:


  * Policy version is not published
  * Policy version has never been accepted by any user
*/
func (a *Client) DeletePolicyVersion(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionNoContent, *DeletePolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePolicyVersionParams()
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
		ID:                 "deletePolicyVersion",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePolicyVersionNoContent:
		return v, nil, nil

	case *DeletePolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePolicyVersionShort delete a version of policy
Delete a policy version from policy.Can only be deleted if match these criteria:


  * Policy version is not published
  * Policy version has never been accepted by any user
*/
func (a *Client) DeletePolicyVersionShort(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePolicyVersion",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePolicyVersionNoContent:
		return v, nil
	case *DeletePolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePolicyVersion1Short instead.

UpdatePolicyVersion1 update a version of policy
Update a particular policy version.
*/
func (a *Client) UpdatePolicyVersion1(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1OK, *UpdatePolicyVersion1BadRequest, *UpdatePolicyVersion1Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersion1Params()
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
		ID:                 "updatePolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersion1OK:
		return v, nil, nil, nil

	case *UpdatePolicyVersion1BadRequest:
		return nil, v, nil, nil

	case *UpdatePolicyVersion1Conflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePolicyVersion1Short update a version of policy
Update a particular policy version.
*/
func (a *Client) UpdatePolicyVersion1Short(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersion1OK:
		return v, nil
	case *UpdatePolicyVersion1BadRequest:
		return nil, v
	case *UpdatePolicyVersion1Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublishPolicyVersion1Short instead.

PublishPolicyVersion1 manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) PublishPolicyVersion1(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1OK, *PublishPolicyVersion1BadRequest, *PublishPolicyVersion1Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersion1Params()
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
		ID:                 "publishPolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersion1OK:
		return v, nil, nil, nil

	case *PublishPolicyVersion1BadRequest:
		return nil, v, nil, nil

	case *PublishPolicyVersion1Conflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishPolicyVersion1Short manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) PublishPolicyVersion1Short(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishPolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersion1OK:
		return v, nil
	case *PublishPolicyVersion1BadRequest:
		return nil, v
	case *PublishPolicyVersion1Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UnpublishPolicyVersionShort instead.

UnpublishPolicyVersion un-publish version from policy
Un-publish a policy version from policy.Can only be un-publish if match these criteria:


  * Policy version has never been accepted by any user
*/
func (a *Client) UnpublishPolicyVersion(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionNoContent, *UnpublishPolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishPolicyVersionParams()
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
		ID:                 "unpublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UnpublishPolicyVersionNoContent:
		return v, nil, nil

	case *UnpublishPolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnpublishPolicyVersionShort un-publish version from policy
Un-publish a policy version from policy.Can only be un-publish if match these criteria:


  * Policy version has never been accepted by any user
*/
func (a *Client) UnpublishPolicyVersionShort(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unpublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnpublishPolicyVersionNoContent:
		return v, nil
	case *UnpublishPolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSinglePolicyVersion1Short instead.

RetrieveSinglePolicyVersion1 retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) RetrieveSinglePolicyVersion1(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1OK, *RetrieveSinglePolicyVersion1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersion1Params()
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
		ID:                 "retrieveSinglePolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersion1OK:
		return v, nil, nil

	case *RetrieveSinglePolicyVersion1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyVersion1Short retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) RetrieveSinglePolicyVersion1Short(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSinglePolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersion1OK:
		return v, nil
	case *RetrieveSinglePolicyVersion1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePolicyVersion1Short instead.

CreatePolicyVersion1 create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreatePolicyVersion1(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Created, *CreatePolicyVersion1BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersion1Params()
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
		ID:                 "createPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersion1Created:
		return v, nil, nil

	case *CreatePolicyVersion1BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyVersion1Short create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreatePolicyVersion1Short(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersion1Created:
		return v, nil
	case *CreatePolicyVersion1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
