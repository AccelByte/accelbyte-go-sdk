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
	RetrieveLocalizedPolicyVersions1(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1OK, error)
	RetrieveLocalizedPolicyVersions1Short(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1OK, error)
	CreateLocalizedPolicyVersion1(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Created, *CreateLocalizedPolicyVersion1BadRequest, *CreateLocalizedPolicyVersion1Conflict, error)
	CreateLocalizedPolicyVersion1Short(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Created, error)
	RetrieveSingleLocalizedPolicyVersion1(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1OK, *RetrieveSingleLocalizedPolicyVersion1NotFound, error)
	RetrieveSingleLocalizedPolicyVersion1Short(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1OK, error)
	UpdateLocalizedPolicyVersion1(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1OK, *UpdateLocalizedPolicyVersion1BadRequest, error)
	UpdateLocalizedPolicyVersion1Short(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1OK, error)
	RequestPresignedURL1(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Created, *RequestPresignedURL1BadRequest, error)
	RequestPresignedURL1Short(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Created, error)
	SetDefaultPolicy1(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error)
	SetDefaultPolicy1Short(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error)
	RetrieveSingleLocalizedPolicyVersion3(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3OK, *RetrieveSingleLocalizedPolicyVersion3NotFound, error)
	RetrieveSingleLocalizedPolicyVersion3Short(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveLocalizedPolicyVersions1Short instead.

RetrieveLocalizedPolicyVersions1 retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveLocalizedPolicyVersions1(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersions1Params()
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
		ID:                 "retrieveLocalizedPolicyVersions_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersions1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersions1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLocalizedPolicyVersions1Short retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveLocalizedPolicyVersions1Short(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersions1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLocalizedPolicyVersions_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersions1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersions1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateLocalizedPolicyVersion1Short instead.

CreateLocalizedPolicyVersion1 create a localized version from country-specific policy
Create a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) CreateLocalizedPolicyVersion1(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Created, *CreateLocalizedPolicyVersion1BadRequest, *CreateLocalizedPolicyVersion1Conflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersion1Params()
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
		ID:                 "createLocalizedPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersion1Created:
		return v, nil, nil, nil

	case *CreateLocalizedPolicyVersion1BadRequest:
		return nil, v, nil, nil

	case *CreateLocalizedPolicyVersion1Conflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLocalizedPolicyVersion1Short create a localized version from country-specific policy
Create a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) CreateLocalizedPolicyVersion1Short(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createLocalizedPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersion1Created:
		return v, nil
	case *CreateLocalizedPolicyVersion1BadRequest:
		return nil, v
	case *CreateLocalizedPolicyVersion1Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSingleLocalizedPolicyVersion1Short instead.

RetrieveSingleLocalizedPolicyVersion1 retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion1(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1OK, *RetrieveSingleLocalizedPolicyVersion1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion1Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion1OK:
		return v, nil, nil

	case *RetrieveSingleLocalizedPolicyVersion1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion1Short retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion1Short(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSingleLocalizedPolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion1OK:
		return v, nil
	case *RetrieveSingleLocalizedPolicyVersion1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLocalizedPolicyVersion1Short instead.

UpdateLocalizedPolicyVersion1 update a localized version from country-specific policy
Update a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) UpdateLocalizedPolicyVersion1(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1OK, *UpdateLocalizedPolicyVersion1BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersion1Params()
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
		ID:                 "updateLocalizedPolicyVersion_1",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersion1OK:
		return v, nil, nil

	case *UpdateLocalizedPolicyVersion1BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizedPolicyVersion1Short update a localized version from country-specific policy
Update a version of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) UpdateLocalizedPolicyVersion1Short(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLocalizedPolicyVersion_1",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersion1OK:
		return v, nil
	case *UpdateLocalizedPolicyVersion1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RequestPresignedURL1Short instead.

RequestPresignedURL1 request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) RequestPresignedURL1(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Created, *RequestPresignedURL1BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURL1Params()
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
		ID:                 "requestPresignedURL_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURL1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURL1Created:
		return v, nil, nil

	case *RequestPresignedURL1BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestPresignedURL1Short request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) RequestPresignedURL1Short(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURL1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "requestPresignedURL_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURL1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURL1Created:
		return v, nil
	case *RequestPresignedURL1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SetDefaultPolicy1Short instead.

SetDefaultPolicy1 set default localized policy
Update a localized version policy to be the default.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) SetDefaultPolicy1(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicy1Params()
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
		ID:                 "setDefaultPolicy_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicy1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultPolicy1Short set default localized policy
Update a localized version policy to be the default.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) SetDefaultPolicy1Short(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicy1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "setDefaultPolicy_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicy1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSingleLocalizedPolicyVersion3Short instead.

RetrieveSingleLocalizedPolicyVersion3 retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion3(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3OK, *RetrieveSingleLocalizedPolicyVersion3NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion3Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_3",
		Method:             "GET",
		PathPattern:        "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion3OK:
		return v, nil, nil

	case *RetrieveSingleLocalizedPolicyVersion3NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion3Short retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion3Short(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSingleLocalizedPolicyVersion_3",
		Method:             "GET",
		PathPattern:        "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion3OK:
		return v, nil
	case *RetrieveSingleLocalizedPolicyVersion3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
