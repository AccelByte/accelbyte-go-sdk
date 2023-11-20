// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_game_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public game record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public game record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGameRecordsBulk(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkOK, *GetGameRecordsBulkBadRequest, *GetGameRecordsBulkUnauthorized, *GetGameRecordsBulkForbidden, *GetGameRecordsBulkNotFound, *GetGameRecordsBulkInternalServerError, error)
	GetGameRecordsBulkShort(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkOK, error)
	GetGameRecordHandlerV1(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, *GetGameRecordHandlerV1BadRequest, *GetGameRecordHandlerV1Unauthorized, *GetGameRecordHandlerV1Forbidden, *GetGameRecordHandlerV1NotFound, *GetGameRecordHandlerV1InternalServerError, error)
	GetGameRecordHandlerV1Short(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, error)
	PutGameRecordHandlerV1(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, *PutGameRecordHandlerV1BadRequest, *PutGameRecordHandlerV1Unauthorized, *PutGameRecordHandlerV1Forbidden, *PutGameRecordHandlerV1InternalServerError, error)
	PutGameRecordHandlerV1Short(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, error)
	PostGameRecordHandlerV1(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, *PostGameRecordHandlerV1BadRequest, *PostGameRecordHandlerV1Unauthorized, *PostGameRecordHandlerV1Forbidden, *PostGameRecordHandlerV1InternalServerError, error)
	PostGameRecordHandlerV1Short(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, error)
	DeleteGameRecordHandlerV1(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, *DeleteGameRecordHandlerV1BadRequest, *DeleteGameRecordHandlerV1Unauthorized, *DeleteGameRecordHandlerV1Forbidden, *DeleteGameRecordHandlerV1InternalServerError, error)
	DeleteGameRecordHandlerV1Short(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetGameRecordsBulkShort instead.

GetGameRecordsBulk bulk get game records
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------
Required Scope      | `social`





Bulk get game records. Maximum key per request 20.
*/
func (a *Client) GetGameRecordsBulk(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkOK, *GetGameRecordsBulkBadRequest, *GetGameRecordsBulkUnauthorized, *GetGameRecordsBulkForbidden, *GetGameRecordsBulkNotFound, *GetGameRecordsBulkInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordsBulkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameRecordsBulk",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordsBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordsBulkOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetGameRecordsBulkBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetGameRecordsBulkUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetGameRecordsBulkForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetGameRecordsBulkNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetGameRecordsBulkInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameRecordsBulkShort bulk get game records
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------
Required Scope      | `social`





Bulk get game records. Maximum key per request 20.
*/
func (a *Client) GetGameRecordsBulkShort(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordsBulkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameRecordsBulk",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordsBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordsBulkOK:
		return v, nil
	case *GetGameRecordsBulkBadRequest:
		return nil, v
	case *GetGameRecordsBulkUnauthorized:
		return nil, v
	case *GetGameRecordsBulkForbidden:
		return nil, v
	case *GetGameRecordsBulkNotFound:
		return nil, v
	case *GetGameRecordsBulkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameRecordHandlerV1Short instead.

GetGameRecordHandlerV1 get game record
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------
Required Scope      | `social`




Get game record by its key.
*/
func (a *Client) GetGameRecordHandlerV1(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, *GetGameRecordHandlerV1BadRequest, *GetGameRecordHandlerV1Unauthorized, *GetGameRecordHandlerV1Forbidden, *GetGameRecordHandlerV1NotFound, *GetGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetGameRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetGameRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetGameRecordHandlerV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameRecordHandlerV1Short get game record
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------
Required Scope      | `social`




Get game record by its key.
*/
func (a *Client) GetGameRecordHandlerV1Short(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordHandlerV1OK:
		return v, nil
	case *GetGameRecordHandlerV1BadRequest:
		return nil, v
	case *GetGameRecordHandlerV1Unauthorized:
		return nil, v
	case *GetGameRecordHandlerV1Forbidden:
		return nil, v
	case *GetGameRecordHandlerV1NotFound:
		return nil, v
	case *GetGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutGameRecordHandlerV1Short instead.

PutGameRecordHandlerV1 create or replace game record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



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
*/
func (a *Client) PutGameRecordHandlerV1(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, *PutGameRecordHandlerV1BadRequest, *PutGameRecordHandlerV1Unauthorized, *PutGameRecordHandlerV1Forbidden, *PutGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *PutGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PutGameRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PutGameRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PutGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutGameRecordHandlerV1Short create or replace game record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



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
*/
func (a *Client) PutGameRecordHandlerV1Short(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordHandlerV1OK:
		return v, nil
	case *PutGameRecordHandlerV1BadRequest:
		return nil, v
	case *PutGameRecordHandlerV1Unauthorized:
		return nil, v
	case *PutGameRecordHandlerV1Forbidden:
		return nil, v
	case *PutGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostGameRecordHandlerV1Short instead.

PostGameRecordHandlerV1 create or append game record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new game record or append the existing game record.

 Append example:

Example 1
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data1": "value", "data2": "new value" }



Example 2
- Existing JSON:



    { "data1": { "data2": "value" }


- New JSON:



    { "data1": { "data3": "new value" }


- Result:



    { "data1": { "data2": "value", "data3": "new value" }






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
*/
func (a *Client) PostGameRecordHandlerV1(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, *PostGameRecordHandlerV1BadRequest, *PostGameRecordHandlerV1Unauthorized, *PostGameRecordHandlerV1Forbidden, *PostGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostGameRecordHandlerV1Created:
		return v, nil, nil, nil, nil, nil

	case *PostGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PostGameRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PostGameRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PostGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameRecordHandlerV1Short create or append game record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new game record or append the existing game record.

 Append example:

Example 1
- Existing JSON:



    { "data1": "value" }


- New JSON:



    { "data2": "new value" }


- Result:



    { "data1": "value", "data2": "new value" }



Example 2
- Existing JSON:



    { "data1": { "data2": "value" }


- New JSON:



    { "data1": { "data3": "new value" }


- Result:



    { "data1": { "data2": "value", "data3": "new value" }






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
*/
func (a *Client) PostGameRecordHandlerV1Short(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameRecordHandlerV1Created:
		return v, nil
	case *PostGameRecordHandlerV1BadRequest:
		return nil, v
	case *PostGameRecordHandlerV1Unauthorized:
		return nil, v
	case *PostGameRecordHandlerV1Forbidden:
		return nil, v
	case *PostGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGameRecordHandlerV1Short instead.

DeleteGameRecordHandlerV1 delete game record
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
--------------------|---------------------------------------------------
Required Scope      | `social`





Delete records by its key
*/
func (a *Client) DeleteGameRecordHandlerV1(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, *DeleteGameRecordHandlerV1BadRequest, *DeleteGameRecordHandlerV1Unauthorized, *DeleteGameRecordHandlerV1Forbidden, *DeleteGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteGameRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteGameRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameRecordHandlerV1Short delete game record
Required Permission | `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
--------------------|---------------------------------------------------
Required Scope      | `social`





Delete records by its key
*/
func (a *Client) DeleteGameRecordHandlerV1Short(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordHandlerV1NoContent:
		return v, nil
	case *DeleteGameRecordHandlerV1BadRequest:
		return nil, v
	case *DeleteGameRecordHandlerV1Unauthorized:
		return nil, v
	case *DeleteGameRecordHandlerV1Forbidden:
		return nil, v
	case *DeleteGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
