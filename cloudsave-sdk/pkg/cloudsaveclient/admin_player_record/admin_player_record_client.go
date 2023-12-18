// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_player_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin player record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin player record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkGetPlayerRecordSizeHandlerV1(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1OK, *BulkGetPlayerRecordSizeHandlerV1BadRequest, *BulkGetPlayerRecordSizeHandlerV1Unauthorized, *BulkGetPlayerRecordSizeHandlerV1Forbidden, *BulkGetPlayerRecordSizeHandlerV1InternalServerError, error)
	BulkGetPlayerRecordSizeHandlerV1Short(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1OK, error)
	ListPlayerRecordHandlerV1(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1OK, *ListPlayerRecordHandlerV1BadRequest, *ListPlayerRecordHandlerV1Unauthorized, *ListPlayerRecordHandlerV1Forbidden, *ListPlayerRecordHandlerV1InternalServerError, error)
	ListPlayerRecordHandlerV1Short(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1OK, error)
	AdminRetrievePlayerRecords(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsOK, *AdminRetrievePlayerRecordsBadRequest, *AdminRetrievePlayerRecordsUnauthorized, *AdminRetrievePlayerRecordsForbidden, *AdminRetrievePlayerRecordsInternalServerError, error)
	AdminRetrievePlayerRecordsShort(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsOK, error)
	AdminPutPlayerRecordsHandlerV1(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1OK, *AdminPutPlayerRecordsHandlerV1BadRequest, *AdminPutPlayerRecordsHandlerV1Unauthorized, *AdminPutPlayerRecordsHandlerV1Forbidden, error)
	AdminPutPlayerRecordsHandlerV1Short(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1OK, error)
	AdminGetPlayerRecordsHandlerV1(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1OK, *AdminGetPlayerRecordsHandlerV1BadRequest, *AdminGetPlayerRecordsHandlerV1Unauthorized, *AdminGetPlayerRecordsHandlerV1Forbidden, *AdminGetPlayerRecordsHandlerV1NotFound, *AdminGetPlayerRecordsHandlerV1InternalServerError, error)
	AdminGetPlayerRecordsHandlerV1Short(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1OK, error)
	AdminGetPlayerRecordHandlerV1(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1OK, *AdminGetPlayerRecordHandlerV1Unauthorized, *AdminGetPlayerRecordHandlerV1Forbidden, *AdminGetPlayerRecordHandlerV1NotFound, *AdminGetPlayerRecordHandlerV1InternalServerError, error)
	AdminGetPlayerRecordHandlerV1Short(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1OK, error)
	AdminPutPlayerRecordHandlerV1(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1OK, *AdminPutPlayerRecordHandlerV1BadRequest, *AdminPutPlayerRecordHandlerV1Unauthorized, *AdminPutPlayerRecordHandlerV1Forbidden, *AdminPutPlayerRecordHandlerV1InternalServerError, error)
	AdminPutPlayerRecordHandlerV1Short(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1OK, error)
	AdminPostPlayerRecordHandlerV1(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Created, *AdminPostPlayerRecordHandlerV1BadRequest, *AdminPostPlayerRecordHandlerV1Unauthorized, *AdminPostPlayerRecordHandlerV1Forbidden, *AdminPostPlayerRecordHandlerV1InternalServerError, error)
	AdminPostPlayerRecordHandlerV1Short(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Created, error)
	AdminDeletePlayerRecordHandlerV1(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1NoContent, *AdminDeletePlayerRecordHandlerV1Unauthorized, *AdminDeletePlayerRecordHandlerV1Forbidden, *AdminDeletePlayerRecordHandlerV1InternalServerError, error)
	AdminDeletePlayerRecordHandlerV1Short(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1NoContent, error)
	AdminGetPlayerPublicRecordHandlerV1(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1OK, *AdminGetPlayerPublicRecordHandlerV1Unauthorized, *AdminGetPlayerPublicRecordHandlerV1Forbidden, *AdminGetPlayerPublicRecordHandlerV1NotFound, *AdminGetPlayerPublicRecordHandlerV1InternalServerError, error)
	AdminGetPlayerPublicRecordHandlerV1Short(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1OK, error)
	AdminPutPlayerPublicRecordHandlerV1(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1OK, *AdminPutPlayerPublicRecordHandlerV1BadRequest, *AdminPutPlayerPublicRecordHandlerV1Unauthorized, *AdminPutPlayerPublicRecordHandlerV1Forbidden, *AdminPutPlayerPublicRecordHandlerV1InternalServerError, error)
	AdminPutPlayerPublicRecordHandlerV1Short(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1OK, error)
	AdminPostPlayerPublicRecordHandlerV1(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Created, *AdminPostPlayerPublicRecordHandlerV1BadRequest, *AdminPostPlayerPublicRecordHandlerV1Unauthorized, *AdminPostPlayerPublicRecordHandlerV1Forbidden, *AdminPostPlayerPublicRecordHandlerV1InternalServerError, error)
	AdminPostPlayerPublicRecordHandlerV1Short(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Created, error)
	AdminDeletePlayerPublicRecordHandlerV1(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1NoContent, *AdminDeletePlayerPublicRecordHandlerV1BadRequest, *AdminDeletePlayerPublicRecordHandlerV1Unauthorized, *AdminDeletePlayerPublicRecordHandlerV1Forbidden, *AdminDeletePlayerPublicRecordHandlerV1NotFound, *AdminDeletePlayerPublicRecordHandlerV1InternalServerError, error)
	AdminDeletePlayerPublicRecordHandlerV1Short(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1NoContent, error)
	AdminGetPlayerRecordSizeHandlerV1(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1OK, *AdminGetPlayerRecordSizeHandlerV1Unauthorized, *AdminGetPlayerRecordSizeHandlerV1Forbidden, *AdminGetPlayerRecordSizeHandlerV1NotFound, *AdminGetPlayerRecordSizeHandlerV1InternalServerError, error)
	AdminGetPlayerRecordSizeHandlerV1Short(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use BulkGetPlayerRecordSizeHandlerV1Short instead.

BulkGetPlayerRecordSizeHandlerV1 bulk get player records size
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------------
Required Scope      | `social`




Bulk get player's record size, max allowed 20 at a time, that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerRecordSizeHandlerV1(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1OK, *BulkGetPlayerRecordSizeHandlerV1BadRequest, *BulkGetPlayerRecordSizeHandlerV1Unauthorized, *BulkGetPlayerRecordSizeHandlerV1Forbidden, *BulkGetPlayerRecordSizeHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerRecordSizeHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetPlayerRecordSizeHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerRecordSizeHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *BulkGetPlayerRecordSizeHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *BulkGetPlayerRecordSizeHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *BulkGetPlayerRecordSizeHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *BulkGetPlayerRecordSizeHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetPlayerRecordSizeHandlerV1Short bulk get player records size
Required Permission | `ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]`
--------------------|-------------------------------------------------------
Required Scope      | `social`




Bulk get player's record size, max allowed 20 at a time, that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerRecordSizeHandlerV1Short(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerRecordSizeHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetPlayerRecordSizeHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerRecordSizeHandlerV1OK:
		return v, nil
	case *BulkGetPlayerRecordSizeHandlerV1BadRequest:
		return nil, v
	case *BulkGetPlayerRecordSizeHandlerV1Unauthorized:
		return nil, v
	case *BulkGetPlayerRecordSizeHandlerV1Forbidden:
		return nil, v
	case *BulkGetPlayerRecordSizeHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListPlayerRecordHandlerV1Short instead.

ListPlayerRecordHandlerV1 retrieve list of public player records
Required permission: ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

Required scope: `social`

Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) ListPlayerRecordHandlerV1(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1OK, *ListPlayerRecordHandlerV1BadRequest, *ListPlayerRecordHandlerV1Unauthorized, *ListPlayerRecordHandlerV1Forbidden, *ListPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListPlayerRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *ListPlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *ListPlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *ListPlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *ListPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListPlayerRecordHandlerV1Short retrieve list of public player records
Required permission: ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]

Required scope: `social`

Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) ListPlayerRecordHandlerV1Short(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListPlayerRecordHandlerV1OK:
		return v, nil
	case *ListPlayerRecordHandlerV1BadRequest:
		return nil, v
	case *ListPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *ListPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *ListPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRetrievePlayerRecordsShort instead.

AdminRetrievePlayerRecords query player records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:RECORD [READ]`

Required scope: `social`

Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) AdminRetrievePlayerRecords(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsOK, *AdminRetrievePlayerRecordsBadRequest, *AdminRetrievePlayerRecordsUnauthorized, *AdminRetrievePlayerRecordsForbidden, *AdminRetrievePlayerRecordsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrievePlayerRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRetrievePlayerRecordsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminRetrievePlayerRecordsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminRetrievePlayerRecordsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminRetrievePlayerRecordsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminRetrievePlayerRecordsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRetrievePlayerRecordsShort query player records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:RECORD [READ]`

Required scope: `social`

Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) AdminRetrievePlayerRecordsShort(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrievePlayerRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRetrievePlayerRecordsOK:
		return v, nil
	case *AdminRetrievePlayerRecordsBadRequest:
		return nil, v
	case *AdminRetrievePlayerRecordsUnauthorized:
		return nil, v
	case *AdminRetrievePlayerRecordsForbidden:
		return nil, v
	case *AdminRetrievePlayerRecordsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerRecordsHandlerV1Short instead.

AdminPutPlayerRecordsHandlerV1 bulk update player records
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:*:CLOUDSAVE:RECORD [UPDATE]`
--------------------|----------------------------------------------------------------
Required Scope      | `social`




This endpoints will create new player record or replace the existing player record in bulk.
Maximum bulk key limit per request 10.
*/
func (a *Client) AdminPutPlayerRecordsHandlerV1(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1OK, *AdminPutPlayerRecordsHandlerV1BadRequest, *AdminPutPlayerRecordsHandlerV1Unauthorized, *AdminPutPlayerRecordsHandlerV1Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordsHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordsHandlerV1OK:
		return v, nil, nil, nil, nil

	case *AdminPutPlayerRecordsHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *AdminPutPlayerRecordsHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *AdminPutPlayerRecordsHandlerV1Forbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordsHandlerV1Short bulk update player records
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:*:CLOUDSAVE:RECORD [UPDATE]`
--------------------|----------------------------------------------------------------
Required Scope      | `social`




This endpoints will create new player record or replace the existing player record in bulk.
Maximum bulk key limit per request 10.
*/
func (a *Client) AdminPutPlayerRecordsHandlerV1Short(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordsHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordsHandlerV1OK:
		return v, nil
	case *AdminPutPlayerRecordsHandlerV1BadRequest:
		return nil, v
	case *AdminPutPlayerRecordsHandlerV1Unauthorized:
		return nil, v
	case *AdminPutPlayerRecordsHandlerV1Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerRecordsHandlerV1Short instead.

AdminGetPlayerRecordsHandlerV1 bulk get player records by multiple record keys
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:*:CLOUDSAVE:RECORD [READ]`
--------------------|--------------------------------------------------------------
Required Scope      | `social`




Retrieve player record key and payload in bulk under given namespace.
Maximum bulk key limit per request 20.
*/
func (a *Client) AdminGetPlayerRecordsHandlerV1(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1OK, *AdminGetPlayerRecordsHandlerV1BadRequest, *AdminGetPlayerRecordsHandlerV1Unauthorized, *AdminGetPlayerRecordsHandlerV1Forbidden, *AdminGetPlayerRecordsHandlerV1NotFound, *AdminGetPlayerRecordsHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordsHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordsHandlerV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlayerRecordsHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlayerRecordsHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlayerRecordsHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlayerRecordsHandlerV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlayerRecordsHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordsHandlerV1Short bulk get player records by multiple record keys
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:*:CLOUDSAVE:RECORD [READ]`
--------------------|--------------------------------------------------------------
Required Scope      | `social`




Retrieve player record key and payload in bulk under given namespace.
Maximum bulk key limit per request 20.
*/
func (a *Client) AdminGetPlayerRecordsHandlerV1Short(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordsHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordsHandlerV1OK:
		return v, nil
	case *AdminGetPlayerRecordsHandlerV1BadRequest:
		return nil, v
	case *AdminGetPlayerRecordsHandlerV1Unauthorized:
		return nil, v
	case *AdminGetPlayerRecordsHandlerV1Forbidden:
		return nil, v
	case *AdminGetPlayerRecordsHandlerV1NotFound:
		return nil, v
	case *AdminGetPlayerRecordsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerRecordHandlerV1Short instead.

AdminGetPlayerRecordHandlerV1 get player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerRecordHandlerV1(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1OK, *AdminGetPlayerRecordHandlerV1Unauthorized, *AdminGetPlayerRecordHandlerV1Forbidden, *AdminGetPlayerRecordHandlerV1NotFound, *AdminGetPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetPlayerRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetPlayerRecordHandlerV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetPlayerRecordHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordHandlerV1Short get player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerRecordHandlerV1Short(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordHandlerV1OK:
		return v, nil
	case *AdminGetPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminGetPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *AdminGetPlayerRecordHandlerV1NotFound:
		return nil, v
	case *AdminGetPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerRecordHandlerV1Short instead.

AdminPutPlayerRecordHandlerV1 create or replace player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



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






## Record Metadata



Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name __META.
When creating record, if __META field is not defined, the metadata value will use the default value.
When updating record, if __META field is not defined, the existing metadata value will stay as is.

 Metadata List:
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "set_by": "SERVER",
                "is_public": true
            }
            ...
        }
*/
func (a *Client) AdminPutPlayerRecordHandlerV1(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1OK, *AdminPutPlayerRecordHandlerV1BadRequest, *AdminPutPlayerRecordHandlerV1Unauthorized, *AdminPutPlayerRecordHandlerV1Forbidden, *AdminPutPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminPutPlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPutPlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPutPlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPutPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordHandlerV1Short create or replace player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



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






## Record Metadata



Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name __META.
When creating record, if __META field is not defined, the metadata value will use the default value.
When updating record, if __META field is not defined, the existing metadata value will stay as is.

 Metadata List:
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "set_by": "SERVER",
                "is_public": true
            }
            ...
        }
*/
func (a *Client) AdminPutPlayerRecordHandlerV1Short(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordHandlerV1OK:
		return v, nil
	case *AdminPutPlayerRecordHandlerV1BadRequest:
		return nil, v
	case *AdminPutPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPutPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *AdminPutPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostPlayerRecordHandlerV1Short instead.

AdminPostPlayerRecordHandlerV1 create or append player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player record or append the existing player record.

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






## Record Metadata



Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name __META.
When creating record, if __META field is not defined, the metadata value will use the default value.
When updating record, if __META field is not defined, the existing metadata value will stay as is.

 Metadata List:
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "set_by": "SERVER",
                "is_public": true
            }
            ...
        }
*/
func (a *Client) AdminPostPlayerRecordHandlerV1(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Created, *AdminPostPlayerRecordHandlerV1BadRequest, *AdminPostPlayerRecordHandlerV1Unauthorized, *AdminPostPlayerRecordHandlerV1Forbidden, *AdminPostPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerRecordHandlerV1Created:
		return v, nil, nil, nil, nil, nil

	case *AdminPostPlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPostPlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPostPlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPostPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerRecordHandlerV1Short create or append player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player record or append the existing player record.

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






## Record Metadata



Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name __META.
When creating record, if __META field is not defined, the metadata value will use the default value.
When updating record, if __META field is not defined, the existing metadata value will stay as is.

 Metadata List:
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "set_by": "SERVER",
                "is_public": true
            }
            ...
        }
*/
func (a *Client) AdminPostPlayerRecordHandlerV1Short(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerRecordHandlerV1Created:
		return v, nil
	case *AdminPostPlayerRecordHandlerV1BadRequest:
		return nil, v
	case *AdminPostPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPostPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *AdminPostPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlayerRecordHandlerV1Short instead.

AdminDeletePlayerRecordHandlerV1 delete player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`

Required scope: `social`

Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeletePlayerRecordHandlerV1(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1NoContent, *AdminDeletePlayerRecordHandlerV1Unauthorized, *AdminDeletePlayerRecordHandlerV1Forbidden, *AdminDeletePlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeletePlayerRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeletePlayerRecordHandlerV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminDeletePlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerRecordHandlerV1Short delete player record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`

Required scope: `social`

Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeletePlayerRecordHandlerV1Short(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerRecordHandlerV1NoContent:
		return v, nil
	case *AdminDeletePlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminDeletePlayerRecordHandlerV1Forbidden:
		return nil, v
	case *AdminDeletePlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerPublicRecordHandlerV1Short instead.

AdminGetPlayerPublicRecordHandlerV1 get player public record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerPublicRecordHandlerV1(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1OK, *AdminGetPlayerPublicRecordHandlerV1Unauthorized, *AdminGetPlayerPublicRecordHandlerV1Forbidden, *AdminGetPlayerPublicRecordHandlerV1NotFound, *AdminGetPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetPlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetPlayerPublicRecordHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerPublicRecordHandlerV1Short get player public record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerPublicRecordHandlerV1Short(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *AdminGetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminGetPlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *AdminGetPlayerPublicRecordHandlerV1NotFound:
		return nil, v
	case *AdminGetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerPublicRecordHandlerV1Short instead.

AdminPutPlayerPublicRecordHandlerV1 create or replace player public record
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






## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminPutPlayerPublicRecordHandlerV1(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1OK, *AdminPutPlayerPublicRecordHandlerV1BadRequest, *AdminPutPlayerPublicRecordHandlerV1Unauthorized, *AdminPutPlayerPublicRecordHandlerV1Forbidden, *AdminPutPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPutPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPutPlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPutPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerPublicRecordHandlerV1Short create or replace player public record
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






## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminPutPlayerPublicRecordHandlerV1Short(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *AdminPutPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *AdminPutPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPutPlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *AdminPutPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostPlayerPublicRecordHandlerV1Short instead.

AdminPostPlayerPublicRecordHandlerV1 create or append player public record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player public record or append the existing player public record.

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






## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminPostPlayerPublicRecordHandlerV1(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Created, *AdminPostPlayerPublicRecordHandlerV1BadRequest, *AdminPostPlayerPublicRecordHandlerV1Unauthorized, *AdminPostPlayerPublicRecordHandlerV1Forbidden, *AdminPostPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerPublicRecordHandlerV1Created:
		return v, nil, nil, nil, nil, nil

	case *AdminPostPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPostPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPostPlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPostPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerPublicRecordHandlerV1Short create or append player public record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player public record or append the existing player public record.

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






## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminPostPlayerPublicRecordHandlerV1Short(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerPublicRecordHandlerV1Created:
		return v, nil
	case *AdminPostPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *AdminPostPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPostPlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *AdminPostPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlayerPublicRecordHandlerV1Short instead.

AdminDeletePlayerPublicRecordHandlerV1 delete player public record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [DELETE]`
--------------------|------------------------------------------------------------------------------
Required Scope      | `social`



Delete player public record.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminDeletePlayerPublicRecordHandlerV1(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1NoContent, *AdminDeletePlayerPublicRecordHandlerV1BadRequest, *AdminDeletePlayerPublicRecordHandlerV1Unauthorized, *AdminDeletePlayerPublicRecordHandlerV1Forbidden, *AdminDeletePlayerPublicRecordHandlerV1NotFound, *AdminDeletePlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerPublicRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeletePlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeletePlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeletePlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeletePlayerPublicRecordHandlerV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeletePlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerPublicRecordHandlerV1Short delete player public record
Required Permission | `ADMIN:NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [DELETE]`
--------------------|------------------------------------------------------------------------------
Required Scope      | `social`



Delete player public record.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) AdminDeletePlayerPublicRecordHandlerV1Short(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerPublicRecordHandlerV1NoContent:
		return v, nil
	case *AdminDeletePlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *AdminDeletePlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminDeletePlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *AdminDeletePlayerPublicRecordHandlerV1NotFound:
		return nil, v
	case *AdminDeletePlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerRecordSizeHandlerV1Short instead.

AdminGetPlayerRecordSizeHandlerV1 get player record size
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a size of the player record
*/
func (a *Client) AdminGetPlayerRecordSizeHandlerV1(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1OK, *AdminGetPlayerRecordSizeHandlerV1Unauthorized, *AdminGetPlayerRecordSizeHandlerV1Forbidden, *AdminGetPlayerRecordSizeHandlerV1NotFound, *AdminGetPlayerRecordSizeHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordSizeHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordSizeHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordSizeHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetPlayerRecordSizeHandlerV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetPlayerRecordSizeHandlerV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetPlayerRecordSizeHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetPlayerRecordSizeHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordSizeHandlerV1Short get player record size
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Get a size of the player record
*/
func (a *Client) AdminGetPlayerRecordSizeHandlerV1Short(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordSizeHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerRecordSizeHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordSizeHandlerV1OK:
		return v, nil
	case *AdminGetPlayerRecordSizeHandlerV1Unauthorized:
		return nil, v
	case *AdminGetPlayerRecordSizeHandlerV1Forbidden:
		return nil, v
	case *AdminGetPlayerRecordSizeHandlerV1NotFound:
		return nil, v
	case *AdminGetPlayerRecordSizeHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
