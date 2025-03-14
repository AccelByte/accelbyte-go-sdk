// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package concurrent_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new concurrent record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for concurrent record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PutGameRecordConcurrentHandlerV1(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1NoContent, *PutGameRecordConcurrentHandlerV1BadRequest, *PutGameRecordConcurrentHandlerV1Unauthorized, *PutGameRecordConcurrentHandlerV1Forbidden, *PutGameRecordConcurrentHandlerV1PreconditionFailed, *PutGameRecordConcurrentHandlerV1InternalServerError, error)
	PutGameRecordConcurrentHandlerV1Short(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1NoContent, error)
	PutPlayerRecordConcurrentHandlerV1(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1OK, *PutPlayerRecordConcurrentHandlerV1NoContent, *PutPlayerRecordConcurrentHandlerV1BadRequest, *PutPlayerRecordConcurrentHandlerV1Unauthorized, *PutPlayerRecordConcurrentHandlerV1Forbidden, *PutPlayerRecordConcurrentHandlerV1PreconditionFailed, *PutPlayerRecordConcurrentHandlerV1InternalServerError, error)
	PutPlayerRecordConcurrentHandlerV1Short(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1OK, error)
	PutPlayerPublicRecordConcurrentHandlerV1(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1OK, *PutPlayerPublicRecordConcurrentHandlerV1NoContent, *PutPlayerPublicRecordConcurrentHandlerV1BadRequest, *PutPlayerPublicRecordConcurrentHandlerV1Unauthorized, *PutPlayerPublicRecordConcurrentHandlerV1Forbidden, *PutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed, *PutPlayerPublicRecordConcurrentHandlerV1InternalServerError, error)
	PutPlayerPublicRecordConcurrentHandlerV1Short(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PutGameRecordConcurrentHandlerV1Short instead.

PutGameRecordConcurrentHandlerV1 create or replace game record
## Description

This endpoints will create new game record or replace the existing game record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutGameRecordConcurrentHandlerV1(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1NoContent, *PutGameRecordConcurrentHandlerV1BadRequest, *PutGameRecordConcurrentHandlerV1Unauthorized, *PutGameRecordConcurrentHandlerV1Forbidden, *PutGameRecordConcurrentHandlerV1PreconditionFailed, *PutGameRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordConcurrentHandlerV1Params()
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
		ID:                 "putGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordConcurrentHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PutGameRecordConcurrentHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PutGameRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PutGameRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PutGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, v, nil, nil

	case *PutGameRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutGameRecordConcurrentHandlerV1Short create or replace game record
## Description

This endpoints will create new game record or replace the existing game record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutGameRecordConcurrentHandlerV1Short(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordConcurrentHandlerV1NoContent:
		return v, nil
	case *PutGameRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *PutGameRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *PutGameRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *PutGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *PutGameRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutPlayerRecordConcurrentHandlerV1Short instead.

PutPlayerRecordConcurrentHandlerV1 create or replace player private record
## Description

This endpoints will create new player record or replace the existing player record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerRecordConcurrentHandlerV1(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1OK, *PutPlayerRecordConcurrentHandlerV1NoContent, *PutPlayerRecordConcurrentHandlerV1BadRequest, *PutPlayerRecordConcurrentHandlerV1Unauthorized, *PutPlayerRecordConcurrentHandlerV1Forbidden, *PutPlayerRecordConcurrentHandlerV1PreconditionFailed, *PutPlayerRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordConcurrentHandlerV1Params()
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
		ID:                 "putPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordConcurrentHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PutPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerRecordConcurrentHandlerV1Short create or replace player private record
## Description

This endpoints will create new player record or replace the existing player record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerRecordConcurrentHandlerV1Short(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordConcurrentHandlerV1OK:
		return v, nil
	case *PutPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v
	case *PutPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *PutPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *PutPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *PutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *PutPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutPlayerPublicRecordConcurrentHandlerV1Short instead.

PutPlayerPublicRecordConcurrentHandlerV1 create or replace player public record
## Description

This endpoints will create new player public record or replace the existing player public record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerPublicRecordConcurrentHandlerV1(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1OK, *PutPlayerPublicRecordConcurrentHandlerV1NoContent, *PutPlayerPublicRecordConcurrentHandlerV1BadRequest, *PutPlayerPublicRecordConcurrentHandlerV1Unauthorized, *PutPlayerPublicRecordConcurrentHandlerV1Forbidden, *PutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed, *PutPlayerPublicRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordConcurrentHandlerV1Params()
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
		ID:                 "putPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordConcurrentHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1NoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerPublicRecordConcurrentHandlerV1Short create or replace player public record
## Description

This endpoints will create new player public record or replace the existing player public record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerPublicRecordConcurrentHandlerV1Short(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordConcurrentHandlerV1OK:
		return v, nil
	case *PutPlayerPublicRecordConcurrentHandlerV1NoContent:
		return nil, v
	case *PutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *PutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *PutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *PutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *PutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
