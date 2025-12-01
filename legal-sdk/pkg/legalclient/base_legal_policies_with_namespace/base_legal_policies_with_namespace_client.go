// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package base_legal_policies_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new base legal policies with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for base legal policies with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllLegalPoliciesByNamespace(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error)
	RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error)
	CreatePolicy(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyCreated, *CreatePolicyBadRequest, *CreatePolicyConflict, *CreatePolicyUnprocessableEntity, error)
	CreatePolicyShort(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyCreated, error)
	RetrieveSinglePolicy(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyOK, *RetrieveSinglePolicyNotFound, error)
	RetrieveSinglePolicyShort(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyOK, error)
	DeleteBasePolicy(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyNoContent, *DeleteBasePolicyBadRequest, error)
	DeleteBasePolicyShort(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyNoContent, error)
	PartialUpdatePolicy(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyOK, *PartialUpdatePolicyBadRequest, error)
	PartialUpdatePolicyShort(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyOK, error)
	RetrievePolicyCountry(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryOK, *RetrievePolicyCountryNotFound, error)
	RetrievePolicyCountryShort(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryOK, error)
	RetrieveAllPoliciesFromBasePolicy(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyOK, *RetrieveAllPoliciesFromBasePolicyNotFound, error)
	RetrieveAllPoliciesFromBasePolicyShort(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyOK, error)
	CreatePolicyUnderBasePolicy(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyCreated, *CreatePolicyUnderBasePolicyBadRequest, error)
	CreatePolicyUnderBasePolicyShort(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyCreated, error)
	RetrieveAllPolicyTypes(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesOK, error)
	RetrieveAllPolicyTypesShort(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllLegalPoliciesByNamespaceShort instead.

RetrieveAllLegalPoliciesByNamespace retrieve base legal policy in the namespace
Retrieve base policies in the namespace. Set `limit = -1` to retrieve all records
*/
func (a *Client) RetrieveAllLegalPoliciesByNamespace(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllLegalPoliciesByNamespaceParams()
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
		ID:                 "retrieveAllLegalPoliciesByNamespace",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllLegalPoliciesByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllLegalPoliciesByNamespaceOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllLegalPoliciesByNamespaceShort retrieve base legal policy in the namespace
Retrieve base policies in the namespace. Set `limit = -1` to retrieve all records
*/
func (a *Client) RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllLegalPoliciesByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllLegalPoliciesByNamespace",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllLegalPoliciesByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllLegalPoliciesByNamespaceOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePolicyShort instead.

CreatePolicy create a base legal policy
Create a legal policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicy(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyCreated, *CreatePolicyBadRequest, *CreatePolicyConflict, *CreatePolicyUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyParams()
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
		ID:                 "createPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyCreated:
		return v, nil, nil, nil, nil

	case *CreatePolicyBadRequest:
		return nil, v, nil, nil, nil

	case *CreatePolicyConflict:
		return nil, nil, v, nil, nil

	case *CreatePolicyUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyShort create a base legal policy
Create a legal policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicyShort(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyCreated:
		return v, nil
	case *CreatePolicyBadRequest:
		return nil, v
	case *CreatePolicyConflict:
		return nil, v
	case *CreatePolicyUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveSinglePolicyShort instead.

RetrieveSinglePolicy retrieve a base legal policy
Retrieve a base policy.
*/
func (a *Client) RetrieveSinglePolicy(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyOK, *RetrieveSinglePolicyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyParams()
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
		ID:                 "retrieveSinglePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyOK:
		return v, nil, nil

	case *RetrieveSinglePolicyNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyShort retrieve a base legal policy
Retrieve a base policy.
*/
func (a *Client) RetrieveSinglePolicyShort(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveSinglePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyOK:
		return v, nil
	case *RetrieveSinglePolicyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteBasePolicyShort instead.

DeleteBasePolicy delete base legal policy
Delete base legal policy.Can only be deleted if match these criteria:


  * Base policy don't have published policy version
  * Policy version under base policy has never been accepted by any user
*/
func (a *Client) DeleteBasePolicy(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyNoContent, *DeleteBasePolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBasePolicyParams()
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
		ID:                 "deleteBasePolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteBasePolicyNoContent:
		return v, nil, nil

	case *DeleteBasePolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBasePolicyShort delete base legal policy
Delete base legal policy.Can only be deleted if match these criteria:


  * Base policy don't have published policy version
  * Policy version under base policy has never been accepted by any user
*/
func (a *Client) DeleteBasePolicyShort(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBasePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteBasePolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBasePolicyNoContent:
		return v, nil
	case *DeleteBasePolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PartialUpdatePolicyShort instead.

PartialUpdatePolicy update base legal policy
Update an existing base policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) PartialUpdatePolicy(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyOK, *PartialUpdatePolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdatePolicyParams()
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
		ID:                 "partialUpdatePolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PartialUpdatePolicyOK:
		return v, nil, nil

	case *PartialUpdatePolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PartialUpdatePolicyShort update base legal policy
Update an existing base policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) PartialUpdatePolicyShort(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdatePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "partialUpdatePolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PartialUpdatePolicyOK:
		return v, nil
	case *PartialUpdatePolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrievePolicyCountryShort instead.

RetrievePolicyCountry retrieve a base legal policy based on a particular country
Retrieve a Base Legal Policy based on a Particular Country.
*/
func (a *Client) RetrievePolicyCountry(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryOK, *RetrievePolicyCountryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePolicyCountryParams()
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
		ID:                 "retrievePolicyCountry",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePolicyCountryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrievePolicyCountryOK:
		return v, nil, nil

	case *RetrievePolicyCountryNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrievePolicyCountryShort retrieve a base legal policy based on a particular country
Retrieve a Base Legal Policy based on a Particular Country.
*/
func (a *Client) RetrievePolicyCountryShort(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePolicyCountryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrievePolicyCountry",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePolicyCountryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePolicyCountryOK:
		return v, nil
	case *RetrievePolicyCountryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllPoliciesFromBasePolicyShort instead.

RetrieveAllPoliciesFromBasePolicy retrieve all policies from base legal policy
Retrieve all policies from Base Legal Policy.
*/
func (a *Client) RetrieveAllPoliciesFromBasePolicy(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyOK, *RetrieveAllPoliciesFromBasePolicyNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPoliciesFromBasePolicyParams()
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
		ID:                 "retrieveAllPoliciesFromBasePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPoliciesFromBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPoliciesFromBasePolicyOK:
		return v, nil, nil

	case *RetrieveAllPoliciesFromBasePolicyNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllPoliciesFromBasePolicyShort retrieve all policies from base legal policy
Retrieve all policies from Base Legal Policy.
*/
func (a *Client) RetrieveAllPoliciesFromBasePolicyShort(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPoliciesFromBasePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllPoliciesFromBasePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPoliciesFromBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPoliciesFromBasePolicyOK:
		return v, nil
	case *RetrieveAllPoliciesFromBasePolicyNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreatePolicyUnderBasePolicyShort instead.

CreatePolicyUnderBasePolicy create policy under base policy
Create policy under base policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP policy requires the countryGroupName and countries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicyUnderBasePolicy(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyCreated, *CreatePolicyUnderBasePolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyUnderBasePolicyParams()
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
		ID:                 "createPolicyUnderBasePolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyUnderBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyUnderBasePolicyCreated:
		return v, nil, nil

	case *CreatePolicyUnderBasePolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyUnderBasePolicyShort create policy under base policy
Create policy under base policy.
Note:


  *  countryType field only accept COUNTRY or COUNTRY_GROUP.
  * COUNTRY_GROUP policy requires the countryGroupName and countries fields to be provided.


* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicyUnderBasePolicyShort(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyUnderBasePolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPolicyUnderBasePolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyUnderBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyUnderBasePolicyCreated:
		return v, nil
	case *CreatePolicyUnderBasePolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllPolicyTypesShort instead.

RetrieveAllPolicyTypes retrieve all policy type
Retrieve all supported policy types.
*/
func (a *Client) RetrieveAllPolicyTypes(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPolicyTypesParams()
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
		ID:                 "retrieveAllPolicyTypes",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policy-types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPolicyTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPolicyTypesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllPolicyTypesShort retrieve all policy type
Retrieve all supported policy types.
*/
func (a *Client) RetrieveAllPolicyTypesShort(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPolicyTypesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllPolicyTypes",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policy-types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPolicyTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPolicyTypesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
