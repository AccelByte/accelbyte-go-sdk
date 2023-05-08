// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_user_eligibilities

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin user eligibilities API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin user eligibilities API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminRetrieveEligibilities(params *AdminRetrieveEligibilitiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveEligibilitiesOK, *AdminRetrieveEligibilitiesBadRequest, error)
	AdminRetrieveEligibilitiesShort(params *AdminRetrieveEligibilitiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveEligibilitiesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminRetrieveEligibilitiesShort instead.

AdminRetrieveEligibilities check user legal eligibility
Retrieve the active policies and its conformance status by userThis process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:LEGAL", action=2 (READ)
*/
func (a *Client) AdminRetrieveEligibilities(params *AdminRetrieveEligibilitiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveEligibilitiesOK, *AdminRetrieveEligibilitiesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrieveEligibilitiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminRetrieveEligibilities",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrieveEligibilitiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRetrieveEligibilitiesOK:
		return v, nil, nil

	case *AdminRetrieveEligibilitiesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRetrieveEligibilitiesShort check user legal eligibility
Retrieve the active policies and its conformance status by userThis process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:LEGAL", action=2 (READ)
*/
func (a *Client) AdminRetrieveEligibilitiesShort(params *AdminRetrieveEligibilitiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveEligibilitiesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrieveEligibilitiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminRetrieveEligibilities",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrieveEligibilitiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRetrieveEligibilitiesOK:
		return v, nil
	case *AdminRetrieveEligibilitiesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
