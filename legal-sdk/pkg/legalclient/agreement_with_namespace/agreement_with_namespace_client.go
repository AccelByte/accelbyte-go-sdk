// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package agreement_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new agreement with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for agreement with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAcceptedAgreementsForMultiUsers(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error)
	RetrieveAcceptedAgreementsForMultiUsersShort(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error)
	RetrieveAcceptedAgreements1(params *RetrieveAcceptedAgreements1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreements1OK, error)
	RetrieveAcceptedAgreements1Short(params *RetrieveAcceptedAgreements1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreements1OK, error)
	RetrieveAllUsersByPolicyVersion1(params *RetrieveAllUsersByPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersion1OK, *RetrieveAllUsersByPolicyVersion1NotFound, error)
	RetrieveAllUsersByPolicyVersion1Short(params *RetrieveAllUsersByPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersion1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use RetrieveAcceptedAgreementsForMultiUsersShort instead.

RetrieveAcceptedAgreementsForMultiUsers retrieve accepted legal agreements for multi users
This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game accountOther detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreementsForMultiUsers(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsForMultiUsersParams()
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
		ID:                 "retrieveAcceptedAgreementsForMultiUsers",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsForMultiUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsForMultiUsersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreementsForMultiUsersShort retrieve accepted legal agreements for multi users
This API will return all accepted Legal Agreements for each user, including agreements of game users if publisher user has corresponding game accountOther detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreementsForMultiUsersShort(params *RetrieveAcceptedAgreementsForMultiUsersParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsForMultiUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsForMultiUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreementsForMultiUsers",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsForMultiUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsForMultiUsersOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAcceptedAgreements1Short instead.

RetrieveAcceptedAgreements1 retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreements1(params *RetrieveAcceptedAgreements1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreements1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreements1Params()
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
		ID:                 "retrieveAcceptedAgreements_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreements1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreements1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreements1Short retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreements1Short(params *RetrieveAcceptedAgreements1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreements1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreements1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreements_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreements1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreements1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllUsersByPolicyVersion1Short instead.

RetrieveAllUsersByPolicyVersion1 retrieve all users accepting legal agreements
This API will return all users who has accepted a specific policy version.Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAllUsersByPolicyVersion1(params *RetrieveAllUsersByPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersion1OK, *RetrieveAllUsersByPolicyVersion1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersion1Params()
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
		ID:                 "retrieveAllUsersByPolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersion1OK:
		return v, nil, nil

	case *RetrieveAllUsersByPolicyVersion1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllUsersByPolicyVersion1Short retrieve all users accepting legal agreements
This API will return all users who has accepted a specific policy version.Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAllUsersByPolicyVersion1Short(params *RetrieveAllUsersByPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersion1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersion1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllUsersByPolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersion1OK:
		return v, nil
	case *RetrieveAllUsersByPolicyVersion1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
