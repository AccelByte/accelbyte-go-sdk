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
	OldRetrieveLocalizedPolicyVersions(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsOK, error)
	OldRetrieveLocalizedPolicyVersionsShort(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsOK, error)
	OldCreateLocalizedPolicyVersion(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionCreated, *OldCreateLocalizedPolicyVersionBadRequest, *OldCreateLocalizedPolicyVersionConflict, error)
	OldCreateLocalizedPolicyVersionShort(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionCreated, error)
	OldRetrieveSingleLocalizedPolicyVersion(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionOK, *OldRetrieveSingleLocalizedPolicyVersionNotFound, error)
	OldRetrieveSingleLocalizedPolicyVersionShort(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionOK, error)
	OldUpdateLocalizedPolicyVersion(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionOK, *OldUpdateLocalizedPolicyVersionBadRequest, error)
	OldUpdateLocalizedPolicyVersionShort(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionOK, error)
	OldRequestPresignedURL(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLCreated, *OldRequestPresignedURLBadRequest, error)
	OldRequestPresignedURLShort(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLCreated, error)
	OldSetDefaultLocalizedPolicy(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyOK, *OldSetDefaultLocalizedPolicyBadRequest, error)
	OldSetDefaultLocalizedPolicyShort(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyOK, error)
	OldPublicRetrieveSingleLocalizedPolicyVersion(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionOK, *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden, *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound, error)
	OldPublicRetrieveSingleLocalizedPolicyVersionShort(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use OldRetrieveLocalizedPolicyVersionsShort instead.

OldRetrieveLocalizedPolicyVersions retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) OldRetrieveLocalizedPolicyVersions(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveLocalizedPolicyVersionsParams()
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
		ID:                 "oldRetrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveLocalizedPolicyVersionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveLocalizedPolicyVersionsShort retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) OldRetrieveLocalizedPolicyVersionsShort(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveLocalizedPolicyVersionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldRetrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveLocalizedPolicyVersionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldCreateLocalizedPolicyVersionShort instead.

OldCreateLocalizedPolicyVersion create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreateLocalizedPolicyVersion(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionCreated, *OldCreateLocalizedPolicyVersionBadRequest, *OldCreateLocalizedPolicyVersionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreateLocalizedPolicyVersionParams()
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
		ID:                 "oldCreateLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *OldCreateLocalizedPolicyVersionCreated:
		return v, nil, nil, nil

	case *OldCreateLocalizedPolicyVersionBadRequest:
		return nil, v, nil, nil

	case *OldCreateLocalizedPolicyVersionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldCreateLocalizedPolicyVersionShort create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreateLocalizedPolicyVersionShort(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreateLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldCreateLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldCreateLocalizedPolicyVersionCreated:
		return v, nil
	case *OldCreateLocalizedPolicyVersionBadRequest:
		return nil, v
	case *OldCreateLocalizedPolicyVersionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldRetrieveSingleLocalizedPolicyVersionShort instead.

OldRetrieveSingleLocalizedPolicyVersion retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) OldRetrieveSingleLocalizedPolicyVersion(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionOK, *OldRetrieveSingleLocalizedPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "oldRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil, nil

	case *OldRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveSingleLocalizedPolicyVersionShort retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) OldRetrieveSingleLocalizedPolicyVersionShort(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSingleLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil
	case *OldRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldUpdateLocalizedPolicyVersionShort instead.

OldUpdateLocalizedPolicyVersion update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) OldUpdateLocalizedPolicyVersion(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionOK, *OldUpdateLocalizedPolicyVersionBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdateLocalizedPolicyVersionParams()
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
		ID:                 "oldUpdateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldUpdateLocalizedPolicyVersionOK:
		return v, nil, nil

	case *OldUpdateLocalizedPolicyVersionBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldUpdateLocalizedPolicyVersionShort update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) OldUpdateLocalizedPolicyVersionShort(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdateLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldUpdateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldUpdateLocalizedPolicyVersionOK:
		return v, nil
	case *OldUpdateLocalizedPolicyVersionBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldRequestPresignedURLShort instead.

OldRequestPresignedURL request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) OldRequestPresignedURL(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLCreated, *OldRequestPresignedURLBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRequestPresignedURLParams()
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
		ID:                 "oldRequestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldRequestPresignedURLCreated:
		return v, nil, nil

	case *OldRequestPresignedURLBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRequestPresignedURLShort request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) OldRequestPresignedURLShort(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRequestPresignedURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldRequestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRequestPresignedURLCreated:
		return v, nil
	case *OldRequestPresignedURLBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldSetDefaultLocalizedPolicyShort instead.

OldSetDefaultLocalizedPolicy set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) OldSetDefaultLocalizedPolicy(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyOK, *OldSetDefaultLocalizedPolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldSetDefaultLocalizedPolicyParams()
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
		ID:                 "oldSetDefaultLocalizedPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldSetDefaultLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *OldSetDefaultLocalizedPolicyOK:
		return v, nil, nil

	case *OldSetDefaultLocalizedPolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldSetDefaultLocalizedPolicyShort set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) OldSetDefaultLocalizedPolicyShort(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldSetDefaultLocalizedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldSetDefaultLocalizedPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldSetDefaultLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldSetDefaultLocalizedPolicyOK:
		return v, nil
	case *OldSetDefaultLocalizedPolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use OldPublicRetrieveSingleLocalizedPolicyVersionShort instead.

OldPublicRetrieveSingleLocalizedPolicyVersion retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) OldPublicRetrieveSingleLocalizedPolicyVersion(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionOK, *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden, *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublicRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "oldPublicRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublicRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *OldPublicRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil, nil, nil

	case *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden:
		return nil, v, nil, nil

	case *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldPublicRetrieveSingleLocalizedPolicyVersionShort retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) OldPublicRetrieveSingleLocalizedPolicyVersionShort(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublicRetrieveSingleLocalizedPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "oldPublicRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublicRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldPublicRetrieveSingleLocalizedPolicyVersionOK:
		return v, nil
	case *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden:
		return nil, v
	case *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
