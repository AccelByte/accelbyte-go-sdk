// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_user_agreement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin user agreement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin user agreement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	IndirectBulkAcceptVersionedPolicy(params *IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyCreated, error)
	IndirectBulkAcceptVersionedPolicyShort(params *IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use IndirectBulkAcceptVersionedPolicyShort instead.

IndirectBulkAcceptVersionedPolicy admin bulk accept policy versions
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:LEGAL", action=1 (CREATE)
*/
func (a *Client) IndirectBulkAcceptVersionedPolicy(params *IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicyCreated:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IndirectBulkAcceptVersionedPolicyShort admin bulk accept policy versions
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:LEGAL", action=1 (CREATE)
*/
func (a *Client) IndirectBulkAcceptVersionedPolicyShort(params *IndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicyCreated:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
