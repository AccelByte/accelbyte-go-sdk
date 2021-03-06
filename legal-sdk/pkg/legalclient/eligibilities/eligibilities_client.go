// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package eligibilities

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	RetrieveEligibilitiesPublic(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, error)
	RetrieveEligibilitiesPublicShort(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, error)
	RetrieveEligibilitiesPublicIndirect(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, error)
	RetrieveEligibilitiesPublicIndirectShort(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  RetrieveEligibilitiesPublic checks user legal eligibility

  Retrieve the active policies and its conformance status by user.&lt;br&gt;This process supports cross-namespace checking, that means if the active policy already accepted by the same user in other namespace, then it will be considered as eligible.&lt;br/&gt;&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: login user&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) RetrieveEligibilitiesPublic(params *RetrieveEligibilitiesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicOK, error) {
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  RetrieveEligibilitiesPublicIndirect checks user legal eligibility

  Retrieve the active policies and its conformance status by userThis process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.&lt;br/&gt;&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: login user&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) RetrieveEligibilitiesPublicIndirect(params *RetrieveEligibilitiesPublicIndirectParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveEligibilitiesPublicIndirectOK, error) {
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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
