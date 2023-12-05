// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_concurrent_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin concurrent record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin concurrent record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminPutAdminGameRecordConcurrentHandlerV1(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1NoContent, *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest, *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized, *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden, *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed, *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError, error)
	AdminPutAdminGameRecordConcurrentHandlerV1Short(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1NoContent, error)
	AdminPutGameRecordConcurrentHandlerV1(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1NoContent, *AdminPutGameRecordConcurrentHandlerV1BadRequest, *AdminPutGameRecordConcurrentHandlerV1Unauthorized, *AdminPutGameRecordConcurrentHandlerV1Forbidden, *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed, *AdminPutGameRecordConcurrentHandlerV1InternalServerError, error)
	AdminPutGameRecordConcurrentHandlerV1Short(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1NoContent, error)
	AdminPutAdminPlayerRecordConcurrentHandlerV1(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1OK, *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent, *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest, *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized, *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden, *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed, *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError, error)
	AdminPutAdminPlayerRecordConcurrentHandlerV1Short(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1OK, error)
	AdminPutPlayerRecordConcurrentHandlerV1(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1OK, *AdminPutPlayerRecordConcurrentHandlerV1NoContent, *AdminPutPlayerRecordConcurrentHandlerV1BadRequest, *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized, *AdminPutPlayerRecordConcurrentHandlerV1Forbidden, *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed, *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError, error)
	AdminPutPlayerRecordConcurrentHandlerV1Short(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1OK, error)
	AdminPutPlayerPublicRecordConcurrentHandlerV1(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1OK, *AdminPutPlayerPublicRecordConcurrentHandlerV1NoContent, *AdminPutPlayerPublicRecordConcurrentHandlerV1BadRequest, *AdminPutPlayerPublicRecordConcurrentHandlerV1Unauthorized, *AdminPutPlayerPublicRecordConcurrentHandlerV1Forbidden, *AdminPutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed, *AdminPutPlayerPublicRecordConcurrentHandlerV1InternalServerError, error)
	AdminPutPlayerPublicRecordConcurrentHandlerV1Short(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminPutAdminGameRecordConcurrentHandlerV1Short instead.

AdminPutAdminGameRecordConcurrentHandlerV1 create or replace admin game record
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|---------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new game record or replace the existing game record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
 Request Body Example:




        {
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }






## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminGameRecordConcurrentHandlerV1(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1NoContent, *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest, *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized, *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden, *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed, *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordConcurrentHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminGameRecordConcurrentHandlerV1Short create or replace admin game record
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|---------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new game record or replace the existing game record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
 Request Body Example:




        {
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }






## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminGameRecordConcurrentHandlerV1Short(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordConcurrentHandlerV1NoContent:
		return v, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutGameRecordConcurrentHandlerV1Short instead.

AdminPutGameRecordConcurrentHandlerV1 create or replace game record
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|---------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new game record or replace the existing game record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }






## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutGameRecordConcurrentHandlerV1(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1NoContent, *AdminPutGameRecordConcurrentHandlerV1BadRequest, *AdminPutGameRecordConcurrentHandlerV1Unauthorized, *AdminPutGameRecordConcurrentHandlerV1Forbidden, *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed, *AdminPutGameRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordConcurrentHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminPutGameRecordConcurrentHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminPutGameRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminPutGameRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminPutGameRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutGameRecordConcurrentHandlerV1Short create or replace game record
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|---------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new game record or replace the existing game record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }






## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutGameRecordConcurrentHandlerV1Short(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordConcurrentHandlerV1NoContent:
		return v, nil
	case *AdminPutGameRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *AdminPutGameRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *AdminPutGameRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *AdminPutGameRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutAdminPlayerRecordConcurrentHandlerV1Short instead.

AdminPutAdminPlayerRecordConcurrentHandlerV1 create or replace admin player record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new admin player record or replace the existing admin player record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
 Request Body Example:




        {
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminPlayerRecordConcurrentHandlerV1(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1OK, *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent, *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest, *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized, *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden, *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed, *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminPlayerRecordConcurrentHandlerV1Short create or replace admin player record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new admin player record or replace the existing admin player record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
 Request Body Example:




        {
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminPlayerRecordConcurrentHandlerV1Short(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1OK:
		return v, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerRecordConcurrentHandlerV1Short instead.

AdminPutPlayerRecordConcurrentHandlerV1 create or replace player private record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new player record or replace the existing player record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerRecordConcurrentHandlerV1(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1OK, *AdminPutPlayerRecordConcurrentHandlerV1NoContent, *AdminPutPlayerRecordConcurrentHandlerV1BadRequest, *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized, *AdminPutPlayerRecordConcurrentHandlerV1Forbidden, *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed, *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordConcurrentHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordConcurrentHandlerV1Short create or replace player private record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new player record or replace the existing player record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerRecordConcurrentHandlerV1Short(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordConcurrentHandlerV1OK:
		return v, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1NoContent:
		return nil, v
	case *AdminPutPlayerRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *AdminPutPlayerRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerPublicRecordConcurrentHandlerV1Short instead.

AdminPutPlayerPublicRecordConcurrentHandlerV1 create or replace player public record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
--------------------|------------------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new player public record or replace the existing player public record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerPublicRecordConcurrentHandlerV1(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1OK, *AdminPutPlayerPublicRecordConcurrentHandlerV1NoContent, *AdminPutPlayerPublicRecordConcurrentHandlerV1BadRequest, *AdminPutPlayerPublicRecordConcurrentHandlerV1Unauthorized, *AdminPutPlayerPublicRecordConcurrentHandlerV1Forbidden, *AdminPutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed, *AdminPutPlayerPublicRecordConcurrentHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1NoContent:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerPublicRecordConcurrentHandlerV1Short create or replace player public record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
--------------------|------------------------------------------------------------------------------
Required Scope      | `social`








## Description



This endpoints will create new player public record or replace the existing player public record.

 Replace behaviour:
The existing value will be replaced completely with the new value.

Example
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data2": "new value" }






## Restriction


This is the restriction of Key Naming for the record:
1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }


3. Cannot use empty string in key names
-


    { "": "value" }






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Parameters Notes


1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
 Request Body Example:




        {
            "set_by": "SERVER",
            "value": {},
            "updatedAt": "2022-03-17T10:42:15.444Z"
        }







## Optimistic Concurrency Control



This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerPublicRecordConcurrentHandlerV1Short(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordConcurrentHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1OK:
		return v, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1NoContent:
		return nil, v
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		return nil, v
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		return nil, v
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		return nil, v
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		return nil, v
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
