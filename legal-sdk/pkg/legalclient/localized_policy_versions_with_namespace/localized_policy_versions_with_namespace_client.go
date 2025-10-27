// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new localized policy versions with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for localized policy versions with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeleteLocalizedPolicy(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyNoContent, *DeleteLocalizedPolicyBadRequest, error)
	DeleteLocalizedPolicyShort(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyNoContent, error)
	RetrieveLocalizedPolicyVersions(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsOK, error)
	RetrieveLocalizedPolicyVersionsShort(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsOK, error)
	CreateLocalizedPolicyVersion(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionCreated, *CreateLocalizedPolicyVersionBadRequest, *CreateLocalizedPolicyVersionConflict, error)
	CreateLocalizedPolicyVersionShort(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionCreated, error)
	RetrieveSingleLocalizedPolicyVersion(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionOK, *RetrieveSingleLocalizedPolicyVersionNotFound, error)
	RetrieveSingleLocalizedPolicyVersionShort(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionOK, error)
	UpdateLocalizedPolicyVersion(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionOK, *UpdateLocalizedPolicyVersionBadRequest, error)
	UpdateLocalizedPolicyVersionShort(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionOK, error)
	RequestPresignedURL(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLCreated, *RequestPresignedURLBadRequest, error)
	RequestPresignedURLShort(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLCreated, error)
	SetDefaultLocalizedPolicy(params *SetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultLocalizedPolicyOK, error)
	SetDefaultLocalizedPolicyShort(params *SetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultLocalizedPolicyOK, error)
	PublicRetrieveSingleLocalizedPolicyVersion(params *PublicRetrieveSingleLocalizedPolicyVersionParams) (*PublicRetrieveSingleLocalizedPolicyVersionOK, *PublicRetrieveSingleLocalizedPolicyVersionForbidden, *PublicRetrieveSingleLocalizedPolicyVersionNotFound, error)
	PublicRetrieveSingleLocalizedPolicyVersionShort(params *PublicRetrieveSingleLocalizedPolicyVersionParams) (*PublicRetrieveSingleLocalizedPolicyVersionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use DeleteLocalizedPolicyShort instead.

DeleteLocalizedPolicy delete localized policy
Delete localized version policy.
Can only be deleted if match these criteria:


  * Policy Version that this localized policy version belongs to is not active
  * Has never been accepted by any user
*/
func (a *Client) DeleteLocalizedPolicy(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyNoContent, *DeleteLocalizedPolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalizedPolicyParams()
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
		ID:                 "deleteLocalizedPolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalizedPolicyNoContent:
		return v, nil, nil

	case *DeleteLocalizedPolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLocalizedPolicyShort delete localized policy
Delete localized version policy.
Can only be deleted if match these criteria:


  * Policy Version that this localized policy version belongs to is not active
  * Has never been accepted by any user
*/
func (a *Client) DeleteLocalizedPolicyShort(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalizedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteLocalizedPolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalizedPolicyNoContent:
		return v, nil
	case *DeleteLocalizedPolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveLocalizedPolicyVersionsShort instead.

RetrieveLocalizedPolicyVersions retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) RetrieveLocalizedPolicyVersions(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersionsParams()
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
		ID:                 "retrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLocalizedPolicyVersionsShort retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) RetrieveLocalizedPolicyVersionsShort(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateLocalizedPolicyVersionShort instead.

CreateLocalizedPolicyVersion create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreateLocalizedPolicyVersion(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionCreated, *CreateLocalizedPolicyVersionBadRequest, *CreateLocalizedPolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersionParams()
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
		ID:                 "createLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersionCreated:
		return v, nil, nil, nil

	case *CreateLocalizedPolicyVersionBadRequest:
		return nil, v, nil, nil

	case *CreateLocalizedPolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLocalizedPolicyVersionShort create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreateLocalizedPolicyVersionShort(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersionCreated:
		return v, nil
	case *CreateLocalizedPolicyVersionBadRequest:
		return nil, v
	case *CreateLocalizedPolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSingleLocalizedPolicyVersionShort instead.

RetrieveSingleLocalizedPolicyVersion retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionOK, *RetrieveSingleLocalizedPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersionOK:
		return v, nil, nil

	case *RetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersionShort retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersionShort(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersionOK:
		return v, nil
	case *RetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLocalizedPolicyVersionShort instead.

UpdateLocalizedPolicyVersion update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) UpdateLocalizedPolicyVersion(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionOK, *UpdateLocalizedPolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersionParams()
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
		ID:                 "updateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersionOK:
		return v, nil, nil

	case *UpdateLocalizedPolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizedPolicyVersionShort update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) UpdateLocalizedPolicyVersionShort(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersionOK:
		return v, nil
	case *UpdateLocalizedPolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestPresignedURLShort instead.

RequestPresignedURL request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) RequestPresignedURL(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLCreated, *RequestPresignedURLBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURLParams()
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
		ID:                 "requestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURLCreated:
		return v, nil, nil

	case *RequestPresignedURLBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestPresignedURLShort request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) RequestPresignedURLShort(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "requestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURLCreated:
		return v, nil
	case *RequestPresignedURLBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetDefaultLocalizedPolicyShort instead.

SetDefaultLocalizedPolicy set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) SetDefaultLocalizedPolicy(params *SetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultLocalizedPolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultLocalizedPolicyParams()
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
		ID:                 "setDefaultLocalizedPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultLocalizedPolicyOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultLocalizedPolicyShort set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) SetDefaultLocalizedPolicyShort(params *SetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultLocalizedPolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultLocalizedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "setDefaultLocalizedPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultLocalizedPolicyOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRetrieveSingleLocalizedPolicyVersionShort instead.

PublicRetrieveSingleLocalizedPolicyVersion retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) PublicRetrieveSingleLocalizedPolicyVersion(params *PublicRetrieveSingleLocalizedPolicyVersionParams) (*PublicRetrieveSingleLocalizedPolicyVersionOK, *PublicRetrieveSingleLocalizedPolicyVersionForbidden, *PublicRetrieveSingleLocalizedPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "publicRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil, nil, nil

	case *PublicRetrieveSingleLocalizedPolicyVersionForbidden:
		return nil, v, nil, nil

	case *PublicRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRetrieveSingleLocalizedPolicyVersionShort retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) PublicRetrieveSingleLocalizedPolicyVersionShort(params *PublicRetrieveSingleLocalizedPolicyVersionParams) (*PublicRetrieveSingleLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRetrieveSingleLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil
	case *PublicRetrieveSingleLocalizedPolicyVersionForbidden:
		return nil, v
	case *PublicRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
