// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package third_party_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new third party credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for third party credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllThirdPartyLoginPlatformCredentialV3(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, error)
	RetrieveThirdPartyLoginPlatformCredentialV3(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, error)
	AddThirdPartyLoginPlatformCredentialV3(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, *AddThirdPartyLoginPlatformCredentialV3BadRequest, *AddThirdPartyLoginPlatformCredentialV3Unauthorized, *AddThirdPartyLoginPlatformCredentialV3Forbidden, *AddThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, error)
	DeleteThirdPartyLoginPlatformCredentialV3(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized, *DeleteThirdPartyLoginPlatformCredentialV3Forbidden, *DeleteThirdPartyLoginPlatformCredentialV3NotFound, *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, error)
	UpdateThirdPartyLoginPlatformCredentialV3(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, *UpdateThirdPartyLoginPlatformCredentialV3BadRequest, *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized, *UpdateThirdPartyLoginPlatformCredentialV3Forbidden, *UpdateThirdPartyLoginPlatformCredentialV3NotFound, *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError, error)
	UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, error)
	UpdateThirdPartyLoginPlatformDomainV3(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, *UpdateThirdPartyLoginPlatformDomainV3BadRequest, *UpdateThirdPartyLoginPlatformDomainV3Unauthorized, *UpdateThirdPartyLoginPlatformDomainV3Forbidden, *UpdateThirdPartyLoginPlatformDomainV3NotFound, *UpdateThirdPartyLoginPlatformDomainV3InternalServerError, error)
	UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, error)
	DeleteThirdPartyLoginPlatformDomainV3(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, *DeleteThirdPartyLoginPlatformDomainV3BadRequest, *DeleteThirdPartyLoginPlatformDomainV3Unauthorized, *DeleteThirdPartyLoginPlatformDomainV3Forbidden, *DeleteThirdPartyLoginPlatformDomainV3NotFound, *DeleteThirdPartyLoginPlatformDomainV3InternalServerError, error)
	DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, error)
	PartialUpdateThirdPartyLoginPlatformDomainV3(params *PartialUpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdateThirdPartyLoginPlatformDomainV3OK, *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest, *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized, *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden, *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound, *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError, error)
	PartialUpdateThirdPartyLoginPlatformDomainV3Short(params *PartialUpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdateThirdPartyLoginPlatformDomainV3OK, error)
	AdminCheckThirdPartyLoginPlatformAvailabilityV3(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden, error)
	AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, error)
	GetThirdPartyLoginPlatformDefaultsV3(params *GetThirdPartyLoginPlatformDefaultsV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyLoginPlatformDefaultsV3OK, error)
	GetThirdPartyLoginPlatformDefaultsV3Short(params *GetThirdPartyLoginPlatformDefaultsV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyLoginPlatformDefaultsV3OK, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, error)
	RetrieveActiveOIDCClientsPublicV3(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, *RetrieveActiveOIDCClientsPublicV3NotFound, *RetrieveActiveOIDCClientsPublicV3InternalServerError, error)
	RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveAllThirdPartyLoginPlatformCredentialV3 get all third party platform credential
Retrieves all third-party platform credentials.
*/
func (a *Client) RetrieveAllThirdPartyLoginPlatformCredentialV3(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllThirdPartyLoginPlatformCredentialV3Short get all third party platform credential
Retrieves all third-party platform credentials.
*/
func (a *Client) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveAllActiveThirdPartyLoginPlatformCredentialV3 get all active third party platform active credential
Retrieves all active third-party platform credentials.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short get all active third party platform active credential
Retrieves all active third-party platform credentials.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveThirdPartyLoginPlatformCredentialV3Short instead.

RetrieveThirdPartyLoginPlatformCredentialV3 retrieve third party platform credential
Retrieves the third-party platform credential for the specified platform.
*/
func (a *Client) RetrieveThirdPartyLoginPlatformCredentialV3(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized, *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden, *RetrieveThirdPartyLoginPlatformCredentialV3NotFound, *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveThirdPartyLoginPlatformCredentialV3Short retrieve third party platform credential
Retrieves the third-party platform credential for the specified platform.
*/
func (a *Client) RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddThirdPartyLoginPlatformCredentialV3Short instead.

AddThirdPartyLoginPlatformCredentialV3 add third party platform credential
Creates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.
*/
func (a *Client) AddThirdPartyLoginPlatformCredentialV3(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, *AddThirdPartyLoginPlatformCredentialV3BadRequest, *AddThirdPartyLoginPlatformCredentialV3Unauthorized, *AddThirdPartyLoginPlatformCredentialV3Forbidden, *AddThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "AddThirdPartyLoginPlatformCredentialV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddThirdPartyLoginPlatformCredentialV3Created:
		return v, nil, nil, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AddThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddThirdPartyLoginPlatformCredentialV3Short add third party platform credential
Creates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.
*/
func (a *Client) AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddThirdPartyLoginPlatformCredentialV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddThirdPartyLoginPlatformCredentialV3Created:
		return v, nil
	case *AddThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *AddThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteThirdPartyLoginPlatformCredentialV3Short instead.

DeleteThirdPartyLoginPlatformCredentialV3 delete third party platform credential
Deletes the third-party platform credential for the specified platform.
*/
func (a *Client) DeleteThirdPartyLoginPlatformCredentialV3(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized, *DeleteThirdPartyLoginPlatformCredentialV3Forbidden, *DeleteThirdPartyLoginPlatformCredentialV3NotFound, *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformCredentialV3NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformCredentialV3Short delete third party platform credential
Deletes the third-party platform credential for the specified platform.
*/
func (a *Client) DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteThirdPartyLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformCredentialV3NoContent:
		return v, nil
	case *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateThirdPartyLoginPlatformCredentialV3Short instead.

UpdateThirdPartyLoginPlatformCredentialV3 update third party platform credential
Updates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.
*/
func (a *Client) UpdateThirdPartyLoginPlatformCredentialV3(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, *UpdateThirdPartyLoginPlatformCredentialV3BadRequest, *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized, *UpdateThirdPartyLoginPlatformCredentialV3Forbidden, *UpdateThirdPartyLoginPlatformCredentialV3NotFound, *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformCredentialV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformCredentialV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformCredentialV3Short update third party platform credential
Updates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.
*/
func (a *Client) UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformCredentialV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateThirdPartyLoginPlatformCredentialV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformCredentialV3OK:
		return v, nil
	case *UpdateThirdPartyLoginPlatformCredentialV3BadRequest:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Forbidden:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3NotFound:
		return nil, v
	case *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateThirdPartyLoginPlatformDomainV3Short instead.

UpdateThirdPartyLoginPlatformDomainV3 set third party platform credential domain
This is the API to set 3rd Platform domain.
This API is a create-or-update behavior. If it is update, it is a replacement behavior.
*/
func (a *Client) UpdateThirdPartyLoginPlatformDomainV3(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, *UpdateThirdPartyLoginPlatformDomainV3BadRequest, *UpdateThirdPartyLoginPlatformDomainV3Unauthorized, *UpdateThirdPartyLoginPlatformDomainV3Forbidden, *UpdateThirdPartyLoginPlatformDomainV3NotFound, *UpdateThirdPartyLoginPlatformDomainV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformDomainV3Short set third party platform credential domain
This is the API to set 3rd Platform domain.
This API is a create-or-update behavior. If it is update, it is a replacement behavior.
*/
func (a *Client) UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformDomainV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil
	case *UpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, v
	case *UpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteThirdPartyLoginPlatformDomainV3Short instead.

DeleteThirdPartyLoginPlatformDomainV3 unregister third party platform credential domain
This is the API to unregister 3rd Platform domain.
If there is a ssoGroups in request body, then this request wil only delete the sso group from the target domain, it will not delete domain.
*/
func (a *Client) DeleteThirdPartyLoginPlatformDomainV3(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, *DeleteThirdPartyLoginPlatformDomainV3BadRequest, *DeleteThirdPartyLoginPlatformDomainV3Unauthorized, *DeleteThirdPartyLoginPlatformDomainV3Forbidden, *DeleteThirdPartyLoginPlatformDomainV3NotFound, *DeleteThirdPartyLoginPlatformDomainV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformDomainV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformDomainV3NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformDomainV3Short unregister third party platform credential domain
This is the API to unregister 3rd Platform domain.
If there is a ssoGroups in request body, then this request wil only delete the sso group from the target domain, it will not delete domain.
*/
func (a *Client) DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformDomainV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteThirdPartyLoginPlatformDomainV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformDomainV3NoContent:
		return v, nil
	case *DeleteThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3NotFound:
		return nil, v
	case *DeleteThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PartialUpdateThirdPartyLoginPlatformDomainV3Short instead.

PartialUpdateThirdPartyLoginPlatformDomainV3 partial update third party platform credential domain
This is the API to patch update 3rd Platform domain.
This API is a create or partial-update behavior. If it is update, it is a partial update behavior.

**Request body:** Partial domain configuration update. Only provided fields will be updated.
*/
func (a *Client) PartialUpdateThirdPartyLoginPlatformDomainV3(params *PartialUpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdateThirdPartyLoginPlatformDomainV3OK, *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest, *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized, *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden, *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound, *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdateThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "PartialUpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PartialUpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PartialUpdateThirdPartyLoginPlatformDomainV3Short partial update third party platform credential domain
This is the API to patch update 3rd Platform domain.
This API is a create or partial-update behavior. If it is update, it is a partial update behavior.

**Request body:** Partial domain configuration update. Only provided fields will be updated.
*/
func (a *Client) PartialUpdateThirdPartyLoginPlatformDomainV3Short(params *PartialUpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdateThirdPartyLoginPlatformDomainV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdateThirdPartyLoginPlatformDomainV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PartialUpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PartialUpdateThirdPartyLoginPlatformDomainV3OK:
		return v, nil
	case *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest:
		return nil, v
	case *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		return nil, v
	case *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden:
		return nil, v
	case *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound:
		return nil, v
	case *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCheckThirdPartyLoginPlatformAvailabilityV3Short instead.

AdminCheckThirdPartyLoginPlatformAvailabilityV3 check 3rd party platform availability
This is the API to check specific 3rd party platform availability.
Passing platform group name or it's member will return same platform availability data
Supported third party platform and platform group:
- PSN group(psn)
- ps4web
- ps4
- ps5
*/
func (a *Client) AdminCheckThirdPartyLoginPlatformAvailabilityV3(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized, *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params()
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
		ID:                 "AdminCheckThirdPartyLoginPlatformAvailabilityV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK:
		return v, nil, nil, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest:
		return nil, v, nil, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCheckThirdPartyLoginPlatformAvailabilityV3Short check 3rd party platform availability
This is the API to check specific 3rd party platform availability.
Passing platform group name or it's member will return same platform availability data
Supported third party platform and platform group:
- PSN group(psn)
- ps4web
- ps4
- ps5
*/
func (a *Client) AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCheckThirdPartyLoginPlatformAvailabilityV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK:
		return v, nil
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest:
		return nil, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized:
		return nil, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetThirdPartyLoginPlatformDefaultsV3Short instead.

GetThirdPartyLoginPlatformDefaultsV3 get third party platform defaults
Returns the built-in default configuration values for a given platform.
*/
func (a *Client) GetThirdPartyLoginPlatformDefaultsV3(params *GetThirdPartyLoginPlatformDefaultsV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyLoginPlatformDefaultsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyLoginPlatformDefaultsV3Params()
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
		ID:                 "GetThirdPartyLoginPlatformDefaultsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/defaults",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyLoginPlatformDefaultsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyLoginPlatformDefaultsV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyLoginPlatformDefaultsV3Short get third party platform defaults
Returns the built-in default configuration values for a given platform.
*/
func (a *Client) GetThirdPartyLoginPlatformDefaultsV3Short(params *GetThirdPartyLoginPlatformDefaultsV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyLoginPlatformDefaultsV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyLoginPlatformDefaultsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetThirdPartyLoginPlatformDefaultsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/defaults",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyLoginPlatformDefaultsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyLoginPlatformDefaultsV3OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short instead.

RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 get all active third party platform credentials
Retrieves all active third-party platform credentials for the namespace.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound, *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK:
		return v, nil, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden:
		return nil, nil, v, nil, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound:
		return nil, nil, nil, v, nil, nil

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short get all active third party platform credentials
Retrieves all active third-party platform credentials for the namespace.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK:
		return v, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound:
		return nil, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveActiveOIDCClientsPublicV3Short instead.

RetrieveActiveOIDCClientsPublicV3 get active oidc platform credentials by client id
Retrieves all active OIDC platform credentials filtered by client ID.
*/
func (a *Client) RetrieveActiveOIDCClientsPublicV3(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, *RetrieveActiveOIDCClientsPublicV3NotFound, *RetrieveActiveOIDCClientsPublicV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveActiveOIDCClientsPublicV3Params()
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
		ID:                 "RetrieveActiveOIDCClientsPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/oidc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveActiveOIDCClientsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveActiveOIDCClientsPublicV3OK:
		return v, nil, nil, nil

	case *RetrieveActiveOIDCClientsPublicV3NotFound:
		return nil, v, nil, nil

	case *RetrieveActiveOIDCClientsPublicV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveActiveOIDCClientsPublicV3Short get active oidc platform credentials by client id
Retrieves all active OIDC platform credentials filtered by client ID.
*/
func (a *Client) RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveActiveOIDCClientsPublicV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrieveActiveOIDCClientsPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/oidc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveActiveOIDCClientsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveActiveOIDCClientsPublicV3OK:
		return v, nil
	case *RetrieveActiveOIDCClientsPublicV3NotFound:
		return nil, v
	case *RetrieveActiveOIDCClientsPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
