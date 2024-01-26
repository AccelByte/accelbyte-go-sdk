// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package localized_policy_versions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new localized policy versions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for localized policy versions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
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
	SetDefaultPolicy(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyOK, *SetDefaultPolicyBadRequest, error)
	SetDefaultPolicyShort(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyOK, error)
	RetrieveSingleLocalizedPolicyVersion2(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2OK, *RetrieveSingleLocalizedPolicyVersion2NotFound, error)
	RetrieveSingleLocalizedPolicyVersion2Short(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveLocalizedPolicyVersionsShort instead.

RetrieveLocalizedPolicyVersions retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
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
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=1 (CREATE)
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
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
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
Deprecated: 2022-08-10 - Use SetDefaultPolicyShort instead.

SetDefaultPolicy set default localized policy
Update a localized version policy to be the default.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) SetDefaultPolicy(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyOK, *SetDefaultPolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicyParams()
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
		ID:                 "setDefaultPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicyOK:
		return v, nil, nil

	case *SetDefaultPolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultPolicyShort set default localized policy
Update a localized version policy to be the default.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)
*/
func (a *Client) SetDefaultPolicyShort(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "setDefaultPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicyOK:
		return v, nil
	case *SetDefaultPolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSingleLocalizedPolicyVersion2Short instead.

RetrieveSingleLocalizedPolicyVersion2 retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion2(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2OK, *RetrieveSingleLocalizedPolicyVersion2NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion2Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_2",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion2Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion2OK:
		return v, nil, nil

	case *RetrieveSingleLocalizedPolicyVersion2NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion2Short retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion2Short(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSingleLocalizedPolicyVersion_2",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion2Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion2OK:
		return v, nil
	case *RetrieveSingleLocalizedPolicyVersion2NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
