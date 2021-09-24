// Code generated by go-swagger; DO NOT EDIT.

package policies

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policies API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policies API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveLatestPolicies(params *RetrieveLatestPoliciesParams) (*RetrieveLatestPoliciesOK, error)

	RetrieveLatestPoliciesByNamespaceAndCountryPublic(params *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) (*RetrieveLatestPoliciesByNamespaceAndCountryPublicOK, error)

	RetrieveLatestPoliciesPublic(params *RetrieveLatestPoliciesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLatestPoliciesPublicOK, *RetrieveLatestPoliciesPublicNotFound, error)

	RetrievePolicies(params *RetrievePoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePoliciesOK, error)

	SetDefaultPolicy1(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error)

	UpdatePolicy(params *UpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  RetrieveLatestPolicies retrieves latest policies by country

  Retrieve all active latest policies based on a country.<br>Other detail info: <ul><li><i>Leave the policyType empty if you want to be responded with all policy type</i></li><li><i>Fill the tags if you want to filter the responded policy by tags</i></li><li><i>Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist</i></li></ul>
*/
func (a *Client) RetrieveLatestPolicies(params *RetrieveLatestPoliciesParams) (*RetrieveLatestPoliciesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLatestPolicies",
		Method:             "GET",
		PathPattern:        "/public/policies/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  RetrieveLatestPoliciesByNamespaceAndCountryPublic retrieves latest policies by namespace and country

  Retrieve all active latest policies based on a namespace and country.<br>Other detail info: <ul><li><i>Leave the policyType empty if you want to be responded with all policy type</i></li><li><i>Fill the tags if you want to filter the responded policy by tags</i></li><li><i>Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist</i></li><li><i>Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:<ul><li>Document 1 (default): Region US (default), UA</li><li>Document 2 (default): Region US (default)</li><li>Document 3 (default): Region US (default)</li><li>User: Region UA</li><li>Query: alwaysIncludeDefault: true</li><li>Response: Document 1 (UA), Document 2 (US), Document 3 (US)</li></ul>
*/
func (a *Client) RetrieveLatestPoliciesByNamespaceAndCountryPublic(params *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) (*RetrieveLatestPoliciesByNamespaceAndCountryPublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLatestPoliciesByNamespaceAndCountryPublic",
		Method:             "GET",
		PathPattern:        "/public/policies/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesByNamespaceAndCountryPublicReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  RetrieveLatestPoliciesPublic retrieves latest policies by namespace and country

  Retrieve all active latest policies based on a namespace and country. The country will be read from user token.<br>Other detail info: <ul><li><i>Leave the policyType empty if you want to be responded with all policy type</i></li><li><i>Fill the tags if you want to filter the responded policy by tags</i></li><li><i>Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist</i></li><li><i>Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:<ul><li>Document 1 (default): Region US (default), UA</li><li>Document 2 (default): Region US (default)</li><li>Document 3 (default): Region US (default)</li><li>User: Region UA</li><li>Query: alwaysIncludeDefault: true</li><li>Response: Document 1 (UA), Document 2 (US), Document 3 (US)</li></ul></i></li><li><i>Required permission: login user </i></li></ul>
*/
func (a *Client) RetrieveLatestPoliciesPublic(params *RetrieveLatestPoliciesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLatestPoliciesPublicOK, *RetrieveLatestPoliciesPublicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveLatestPoliciesPublic",
		Method:             "GET",
		PathPattern:        "/public/policies/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesPublicOK:
		return v, nil, nil
	case *RetrieveLatestPoliciesPublicNotFound:
		return nil, v, nil
	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  RetrievePolicies retrieves policies by country

  Retrieve all active policies based on a country.<br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)</li></ul>
*/
func (a *Client) RetrievePolicies(params *RetrievePoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePoliciesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePoliciesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrievePolicies",
		Method:             "GET",
		PathPattern:        "/admin/policies/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &RetrievePoliciesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePoliciesOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SetDefaultPolicy1 sets default policy

  Update a policy to be the default.<br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)</li></ul>
*/
func (a *Client) SetDefaultPolicy1(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicy1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "setDefaultPolicy_1",
		Method:             "PATCH",
		PathPattern:        "/admin/policies/{policyId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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
  UpdatePolicy updates country specific policy

  Update country-specific policy.<br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)</li></ul>
*/
func (a *Client) UpdatePolicy(params *UpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePolicy",
		Method:             "PATCH",
		PathPattern:        "/admin/policies/{policyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &UpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}