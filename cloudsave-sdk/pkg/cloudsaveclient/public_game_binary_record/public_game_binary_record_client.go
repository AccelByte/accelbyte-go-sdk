// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_game_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public game binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public game binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListGameBinaryRecordsV1(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1OK, *ListGameBinaryRecordsV1BadRequest, *ListGameBinaryRecordsV1Unauthorized, *ListGameBinaryRecordsV1Forbidden, *ListGameBinaryRecordsV1InternalServerError, error)
	ListGameBinaryRecordsV1Short(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1OK, error)
	PostGameBinaryRecordV1(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Created, *PostGameBinaryRecordV1BadRequest, *PostGameBinaryRecordV1Unauthorized, *PostGameBinaryRecordV1Forbidden, *PostGameBinaryRecordV1Conflict, *PostGameBinaryRecordV1InternalServerError, error)
	PostGameBinaryRecordV1Short(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Created, error)
	BulkGetGameBinaryRecordV1(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1OK, *BulkGetGameBinaryRecordV1BadRequest, *BulkGetGameBinaryRecordV1Unauthorized, *BulkGetGameBinaryRecordV1Forbidden, *BulkGetGameBinaryRecordV1InternalServerError, error)
	BulkGetGameBinaryRecordV1Short(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1OK, error)
	GetGameBinaryRecordV1(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1OK, *GetGameBinaryRecordV1Unauthorized, *GetGameBinaryRecordV1Forbidden, *GetGameBinaryRecordV1NotFound, *GetGameBinaryRecordV1InternalServerError, error)
	GetGameBinaryRecordV1Short(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1OK, error)
	PutGameBinaryRecordV1(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1OK, *PutGameBinaryRecordV1BadRequest, *PutGameBinaryRecordV1Unauthorized, *PutGameBinaryRecordV1Forbidden, *PutGameBinaryRecordV1NotFound, *PutGameBinaryRecordV1InternalServerError, error)
	PutGameBinaryRecordV1Short(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1OK, error)
	DeleteGameBinaryRecordV1(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1NoContent, *DeleteGameBinaryRecordV1BadRequest, *DeleteGameBinaryRecordV1Unauthorized, *DeleteGameBinaryRecordV1Forbidden, *DeleteGameBinaryRecordV1NotFound, *DeleteGameBinaryRecordV1InternalServerError, error)
	DeleteGameBinaryRecordV1Short(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1NoContent, error)
	PostGameBinaryPresignedURLV1(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Created, *PostGameBinaryPresignedURLV1BadRequest, *PostGameBinaryPresignedURLV1Unauthorized, *PostGameBinaryPresignedURLV1Forbidden, *PostGameBinaryPresignedURLV1NotFound, *PostGameBinaryPresignedURLV1InternalServerError, error)
	PostGameBinaryPresignedURLV1Short(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListGameBinaryRecordsV1Short instead.

ListGameBinaryRecordsV1 query game binary records
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Retrieve list of binary records by namespace.
*/
func (a *Client) ListGameBinaryRecordsV1(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1OK, *ListGameBinaryRecordsV1BadRequest, *ListGameBinaryRecordsV1Unauthorized, *ListGameBinaryRecordsV1Forbidden, *ListGameBinaryRecordsV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameBinaryRecordsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGameBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListGameBinaryRecordsV1OK:
		return v, nil, nil, nil, nil, nil

	case *ListGameBinaryRecordsV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListGameBinaryRecordsV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListGameBinaryRecordsV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *ListGameBinaryRecordsV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListGameBinaryRecordsV1Short query game binary records
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Retrieve list of binary records by namespace.
*/
func (a *Client) ListGameBinaryRecordsV1Short(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameBinaryRecordsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGameBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGameBinaryRecordsV1OK:
		return v, nil
	case *ListGameBinaryRecordsV1BadRequest:
		return nil, v
	case *ListGameBinaryRecordsV1Unauthorized:
		return nil, v
	case *ListGameBinaryRecordsV1Forbidden:
		return nil, v
	case *ListGameBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostGameBinaryRecordV1Short instead.

PostGameBinaryRecordV1 create game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Create a game binary record.


Other detail info:



`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators "-" , "_" , "." are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryRecordV1(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Created, *PostGameBinaryRecordV1BadRequest, *PostGameBinaryRecordV1Unauthorized, *PostGameBinaryRecordV1Forbidden, *PostGameBinaryRecordV1Conflict, *PostGameBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryRecordV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *PostGameBinaryRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PostGameBinaryRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PostGameBinaryRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PostGameBinaryRecordV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *PostGameBinaryRecordV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameBinaryRecordV1Short create game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Create a game binary record.


Other detail info:



`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators "-" , "_" , "." are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryRecordV1Short(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryRecordV1Created:
		return v, nil
	case *PostGameBinaryRecordV1BadRequest:
		return nil, v
	case *PostGameBinaryRecordV1Unauthorized:
		return nil, v
	case *PostGameBinaryRecordV1Forbidden:
		return nil, v
	case *PostGameBinaryRecordV1Conflict:
		return nil, v
	case *PostGameBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetGameBinaryRecordV1Short instead.

BulkGetGameBinaryRecordV1 bulk get game binary records
Required valid user token
Required scope: `social`

Bulk get game binary records. Maximum key per request 20.
*/
func (a *Client) BulkGetGameBinaryRecordV1(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1OK, *BulkGetGameBinaryRecordV1BadRequest, *BulkGetGameBinaryRecordV1Unauthorized, *BulkGetGameBinaryRecordV1Forbidden, *BulkGetGameBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetGameBinaryRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *BulkGetGameBinaryRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *BulkGetGameBinaryRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *BulkGetGameBinaryRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *BulkGetGameBinaryRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetGameBinaryRecordV1Short bulk get game binary records
Required valid user token
Required scope: `social`

Bulk get game binary records. Maximum key per request 20.
*/
func (a *Client) BulkGetGameBinaryRecordV1Short(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetGameBinaryRecordV1OK:
		return v, nil
	case *BulkGetGameBinaryRecordV1BadRequest:
		return nil, v
	case *BulkGetGameBinaryRecordV1Unauthorized:
		return nil, v
	case *BulkGetGameBinaryRecordV1Forbidden:
		return nil, v
	case *BulkGetGameBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameBinaryRecordV1Short instead.

GetGameBinaryRecordV1 get game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Get a game binary record by its key.
*/
func (a *Client) GetGameBinaryRecordV1(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1OK, *GetGameBinaryRecordV1Unauthorized, *GetGameBinaryRecordV1Forbidden, *GetGameBinaryRecordV1NotFound, *GetGameBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameBinaryRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetGameBinaryRecordV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetGameBinaryRecordV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetGameBinaryRecordV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetGameBinaryRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameBinaryRecordV1Short get game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Get a game binary record by its key.
*/
func (a *Client) GetGameBinaryRecordV1Short(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameBinaryRecordV1OK:
		return v, nil
	case *GetGameBinaryRecordV1Unauthorized:
		return nil, v
	case *GetGameBinaryRecordV1Forbidden:
		return nil, v
	case *GetGameBinaryRecordV1NotFound:
		return nil, v
	case *GetGameBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutGameBinaryRecordV1Short instead.

PutGameBinaryRecordV1 update game binary record file
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a game binary record file by its key
*/
func (a *Client) PutGameBinaryRecordV1(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1OK, *PutGameBinaryRecordV1BadRequest, *PutGameBinaryRecordV1Unauthorized, *PutGameBinaryRecordV1Forbidden, *PutGameBinaryRecordV1NotFound, *PutGameBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putGameBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutGameBinaryRecordV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *PutGameBinaryRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PutGameBinaryRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PutGameBinaryRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PutGameBinaryRecordV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PutGameBinaryRecordV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutGameBinaryRecordV1Short update game binary record file
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a game binary record file by its key
*/
func (a *Client) PutGameBinaryRecordV1Short(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putGameBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameBinaryRecordV1OK:
		return v, nil
	case *PutGameBinaryRecordV1BadRequest:
		return nil, v
	case *PutGameBinaryRecordV1Unauthorized:
		return nil, v
	case *PutGameBinaryRecordV1Forbidden:
		return nil, v
	case *PutGameBinaryRecordV1NotFound:
		return nil, v
	case *PutGameBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGameBinaryRecordV1Short instead.

DeleteGameBinaryRecordV1 delete game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
Required scope: `social`

Delete a game binary record.
*/
func (a *Client) DeleteGameBinaryRecordV1(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1NoContent, *DeleteGameBinaryRecordV1BadRequest, *DeleteGameBinaryRecordV1Unauthorized, *DeleteGameBinaryRecordV1Forbidden, *DeleteGameBinaryRecordV1NotFound, *DeleteGameBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGameBinaryRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGameBinaryRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGameBinaryRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGameBinaryRecordV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGameBinaryRecordV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameBinaryRecordV1Short delete game binary record
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]`
Required scope: `social`

Delete a game binary record.
*/
func (a *Client) DeleteGameBinaryRecordV1Short(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGameBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordV1NoContent:
		return v, nil
	case *DeleteGameBinaryRecordV1BadRequest:
		return nil, v
	case *DeleteGameBinaryRecordV1Unauthorized:
		return nil, v
	case *DeleteGameBinaryRecordV1Forbidden:
		return nil, v
	case *DeleteGameBinaryRecordV1NotFound:
		return nil, v
	case *DeleteGameBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostGameBinaryPresignedURLV1Short instead.

PostGameBinaryPresignedURLV1 request presigned url for upload game binary records
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Request presigned URL to upload the binary record to s3.


Other detail info:



Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryPresignedURLV1(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Created, *PostGameBinaryPresignedURLV1BadRequest, *PostGameBinaryPresignedURLV1Unauthorized, *PostGameBinaryPresignedURLV1Forbidden, *PostGameBinaryPresignedURLV1NotFound, *PostGameBinaryPresignedURLV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryPresignedURLV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryPresignedURLV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *PostGameBinaryPresignedURLV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PostGameBinaryPresignedURLV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PostGameBinaryPresignedURLV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PostGameBinaryPresignedURLV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PostGameBinaryPresignedURLV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameBinaryPresignedURLV1Short request presigned url for upload game binary records
Required permission: `NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Request presigned URL to upload the binary record to s3.


Other detail info:



Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryPresignedURLV1Short(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryPresignedURLV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postGameBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryPresignedURLV1Created:
		return v, nil
	case *PostGameBinaryPresignedURLV1BadRequest:
		return nil, v
	case *PostGameBinaryPresignedURLV1Unauthorized:
		return nil, v
	case *PostGameBinaryPresignedURLV1Forbidden:
		return nil, v
	case *PostGameBinaryPresignedURLV1NotFound:
		return nil, v
	case *PostGameBinaryPresignedURLV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
