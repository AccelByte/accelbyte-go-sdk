// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package eligibilities

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new eligibilities API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for eligibilities API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveEligibilitiesPublic(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, *RetrieveEligibilitiesPublicBadRequest, *RetrieveEligibilitiesPublicNotFound, error)
	RetrieveEligibilitiesPublicShort(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, error)
	RetrieveEligibilitiesPublicIndirect(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, *RetrieveEligibilitiesPublicIndirectBadRequest, error)
	RetrieveEligibilitiesPublicIndirectShort(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveEligibilitiesPublicShort instead.

RetrieveEligibilitiesPublic check user legal eligibility
Retrieve the active policies and its conformance status by user.
This process supports cross-namespace checking, that means if the active policy already accepted by the same user in other namespace, then it will be considered as eligible.

Other detail info:
      * Required permission : login user
*/
func (a *Client) RetrieveEligibilitiesPublic(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, *RetrieveEligibilitiesPublicBadRequest, *RetrieveEligibilitiesPublicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveEligibilitiesPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveEligibilitiesPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/eligibilities/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveEligibilitiesPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveEligibilitiesPublicOK:
		return v, nil, nil, nil

	case *RetrieveEligibilitiesPublicBadRequest:
		return nil, v, nil, nil

	case *RetrieveEligibilitiesPublicNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveEligibilitiesPublicShort check user legal eligibility
Retrieve the active policies and its conformance status by user.
This process supports cross-namespace checking, that means if the active policy already accepted by the same user in other namespace, then it will be considered as eligible.

Other detail info:
      * Required permission : login user
*/
func (a *Client) RetrieveEligibilitiesPublicShort(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveEligibilitiesPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveEligibilitiesPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/eligibilities/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveEligibilitiesPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveEligibilitiesPublicOK:
		return v, nil
	case *RetrieveEligibilitiesPublicBadRequest:
		return nil, v
	case *RetrieveEligibilitiesPublicNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveEligibilitiesPublicIndirectShort instead.

RetrieveEligibilitiesPublicIndirect check user legal eligibility
Retrieve the active policies and its conformance status by userThis process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

Other detail info:
      * Required permission : login user
*/
func (a *Client) RetrieveEligibilitiesPublicIndirect(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, *RetrieveEligibilitiesPublicIndirectBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveEligibilitiesPublicIndirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveEligibilitiesPublicIndirect",
		Method:             "GET",
		PathPattern:        "/agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveEligibilitiesPublicIndirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveEligibilitiesPublicIndirectOK:
		return v, nil, nil

	case *RetrieveEligibilitiesPublicIndirectBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveEligibilitiesPublicIndirectShort check user legal eligibility
Retrieve the active policies and its conformance status by userThis process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

Other detail info:
      * Required permission : login user
*/
func (a *Client) RetrieveEligibilitiesPublicIndirectShort(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveEligibilitiesPublicIndirectParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveEligibilitiesPublicIndirect",
		Method:             "GET",
		PathPattern:        "/agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveEligibilitiesPublicIndirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveEligibilitiesPublicIndirectOK:
		return v, nil
	case *RetrieveEligibilitiesPublicIndirectBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
