// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_chaining_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin chaining operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin chaining operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateChainingOperations(params *AdminCreateChainingOperationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChainingOperationsOK, *AdminCreateChainingOperationsBadRequest, *AdminCreateChainingOperationsUnauthorized, *AdminCreateChainingOperationsForbidden, *AdminCreateChainingOperationsNotFound, *AdminCreateChainingOperationsInternalServerError, error)
	AdminCreateChainingOperationsShort(params *AdminCreateChainingOperationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChainingOperationsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminCreateChainingOperationsShort instead.

AdminCreateChainingOperations to create chaining operation

Create chaining Operations.
This process will run sequentially
1. remove item process
2. consume item process
3. update item process
4. create item process
if toSpecificInventory set as true, then inventoryId field will be mandatory, vice versa

The behavior of each process is same with current admin level endpoint

requestId: Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted,
it will return original successful response
replayed : replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]
*/
func (a *Client) AdminCreateChainingOperations(params *AdminCreateChainingOperationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChainingOperationsOK, *AdminCreateChainingOperationsBadRequest, *AdminCreateChainingOperationsUnauthorized, *AdminCreateChainingOperationsForbidden, *AdminCreateChainingOperationsNotFound, *AdminCreateChainingOperationsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChainingOperationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateChainingOperations",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/chainingOperations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChainingOperationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChainingOperationsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateChainingOperationsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateChainingOperationsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateChainingOperationsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateChainingOperationsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateChainingOperationsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChainingOperationsShort to create chaining operation

Create chaining Operations.
This process will run sequentially
1. remove item process
2. consume item process
3. update item process
4. create item process
if toSpecificInventory set as true, then inventoryId field will be mandatory, vice versa

The behavior of each process is same with current admin level endpoint

requestId: Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted,
it will return original successful response
replayed : replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]
*/
func (a *Client) AdminCreateChainingOperationsShort(params *AdminCreateChainingOperationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChainingOperationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChainingOperationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateChainingOperations",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/chainingOperations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChainingOperationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChainingOperationsOK:
		return v, nil
	case *AdminCreateChainingOperationsBadRequest:
		return nil, v
	case *AdminCreateChainingOperationsUnauthorized:
		return nil, v
	case *AdminCreateChainingOperationsForbidden:
		return nil, v
	case *AdminCreateChainingOperationsNotFound:
		return nil, v
	case *AdminCreateChainingOperationsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
