// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package policies_with_namespace_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policies with namespace v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policies with namespace v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveLatestPoliciesByNamespaceAndCountryPublic1(params *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) (*RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK, error)
	RetrieveLatestPoliciesByNamespaceAndCountryPublic1Short(params *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) (*RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveLatestPoliciesByNamespaceAndCountryPublic1Short instead.

RetrieveLatestPoliciesByNamespaceAndCountryPublic1 retrieve latest policies by namespace and country
This API is used to list all the related doc in register page, include optional & mandatory (when env config APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=true).
Other detail info: Here are the result of different cases
        * Document 1, Region US (default, mandatory), UA (optional); clientID: [client_A]
        * Document 2, Region US (default, optional), UA (mandatory); clientID: [client_A]
        * Document 3, Region UA (default, mandatory); clientID: [client_A]
        * Document 4, Region US (default, optional); clientID: [client_A]
        * Document 5, Region US (default, optional); clientID: [client_B]
        * Document 6, Region CA (mandatory, optional), UA (optional); clientID: [client_B]
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region CA + client_A
        * Response: Document 1 (US, mandatory), Document 2 (US, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional), Document 6 (UA, optional)
        * Query by: Region CN + client_B
        * Response: Document 5 (US, optional), Document 6 (CA, mandatory)
Note: If APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=false the behavior will be same with `/agreement/public/policies/namespaces/{namespace}/countries/{country_code}?defaultOnEmpty=true&visibleOnly;=true`;Here are the result of different cases
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional)
*/
func (a *Client) RetrieveLatestPoliciesByNamespaceAndCountryPublic1(params *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) (*RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1Params()
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
		ID:                 "retrieveLatestPoliciesByNamespaceAndCountryPublic_1",
		Method:             "GET",
		PathPattern:        "/agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLatestPoliciesByNamespaceAndCountryPublic1Short retrieve latest policies by namespace and country
This API is used to list all the related doc in register page, include optional & mandatory (when env config APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=true).
Other detail info: Here are the result of different cases
          * Document 1, Region US (default, mandatory), UA (optional); clientID: [client_A]
          * Document 2, Region US (default, optional), UA (mandatory); clientID: [client_A]
          * Document 3, Region UA (default, mandatory); clientID: [client_A]
          * Document 4, Region US (default, optional); clientID: [client_A]
          * Document 5, Region US (default, optional); clientID: [client_B]
          * Document 6, Region CA (mandatory, optional), UA (optional); clientID: [client_B]
          * Query by: Region UA + client_A
          * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
          * Query by: Region CA + client_A
          * Response: Document 1 (US, mandatory), Document 2 (US, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
          * Query by: Region UA + client_B
          * Response: Document 5 (US, optional), Document 6 (UA, optional)
          * Query by: Region CN + client_B
          * Response: Document 5 (US, optional), Document 6 (CA, mandatory)
Note: If APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=false the behavior will be same with `/agreement/public/policies/namespaces/{namespace}/countries/{country_code}?defaultOnEmpty=true&visibleOnly;=true`;Here are the result of different cases
          * Query by: Region UA + client_A
          * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory)
          * Query by: Region UA + client_B
          * Response: Document 5 (US, optional)
*/
func (a *Client) RetrieveLatestPoliciesByNamespaceAndCountryPublic1Short(params *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) (*RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLatestPoliciesByNamespaceAndCountryPublic_1",
		Method:             "GET",
		PathPattern:        "/agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
