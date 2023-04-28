// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_player_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public player record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public player record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkGetPlayerPublicRecordHandlerV1(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1OK, *BulkGetPlayerPublicRecordHandlerV1BadRequest, *BulkGetPlayerPublicRecordHandlerV1Unauthorized, *BulkGetPlayerPublicRecordHandlerV1Forbidden, *BulkGetPlayerPublicRecordHandlerV1InternalServerError, error)
	BulkGetPlayerPublicRecordHandlerV1Short(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1OK, error)
	RetrievePlayerRecords(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsOK, *RetrievePlayerRecordsBadRequest, *RetrievePlayerRecordsUnauthorized, *RetrievePlayerRecordsInternalServerError, error)
	RetrievePlayerRecordsShort(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsOK, error)
	GetPlayerRecordsBulkHandlerV1(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1OK, *GetPlayerRecordsBulkHandlerV1BadRequest, *GetPlayerRecordsBulkHandlerV1Unauthorized, *GetPlayerRecordsBulkHandlerV1Forbidden, *GetPlayerRecordsBulkHandlerV1InternalServerError, error)
	GetPlayerRecordsBulkHandlerV1Short(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1OK, error)
	PublicDeletePlayerPublicRecordHandlerV1(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1NoContent, *PublicDeletePlayerPublicRecordHandlerV1BadRequest, *PublicDeletePlayerPublicRecordHandlerV1Unauthorized, *PublicDeletePlayerPublicRecordHandlerV1NotFound, *PublicDeletePlayerPublicRecordHandlerV1InternalServerError, error)
	PublicDeletePlayerPublicRecordHandlerV1Short(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1NoContent, error)
	GetOtherPlayerPublicRecordKeyHandlerV1(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1OK, *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest, *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized, *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError, error)
	GetOtherPlayerPublicRecordKeyHandlerV1Short(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1OK, error)
	GetOtherPlayerPublicRecordHandlerV1(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1OK, *GetOtherPlayerPublicRecordHandlerV1BadRequest, *GetOtherPlayerPublicRecordHandlerV1Unauthorized, *GetOtherPlayerPublicRecordHandlerV1Forbidden, *GetOtherPlayerPublicRecordHandlerV1InternalServerError, error)
	GetOtherPlayerPublicRecordHandlerV1Short(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1OK, error)
	GetPlayerRecordHandlerV1(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1OK, *GetPlayerRecordHandlerV1Unauthorized, *GetPlayerRecordHandlerV1Forbidden, *GetPlayerRecordHandlerV1NotFound, *GetPlayerRecordHandlerV1InternalServerError, error)
	GetPlayerRecordHandlerV1Short(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1OK, error)
	PutPlayerRecordHandlerV1(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1OK, *PutPlayerRecordHandlerV1BadRequest, *PutPlayerRecordHandlerV1Unauthorized, *PutPlayerRecordHandlerV1Forbidden, *PutPlayerRecordHandlerV1InternalServerError, error)
	PutPlayerRecordHandlerV1Short(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1OK, error)
	PostPlayerRecordHandlerV1(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Created, *PostPlayerRecordHandlerV1BadRequest, *PostPlayerRecordHandlerV1Unauthorized, *PostPlayerRecordHandlerV1Forbidden, *PostPlayerRecordHandlerV1InternalServerError, error)
	PostPlayerRecordHandlerV1Short(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Created, error)
	DeletePlayerRecordHandlerV1(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1NoContent, *DeletePlayerRecordHandlerV1BadRequest, *DeletePlayerRecordHandlerV1Unauthorized, *DeletePlayerRecordHandlerV1Forbidden, *DeletePlayerRecordHandlerV1InternalServerError, error)
	DeletePlayerRecordHandlerV1Short(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1NoContent, error)
	GetPlayerPublicRecordHandlerV1(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1OK, *GetPlayerPublicRecordHandlerV1Unauthorized, *GetPlayerPublicRecordHandlerV1NotFound, *GetPlayerPublicRecordHandlerV1InternalServerError, error)
	GetPlayerPublicRecordHandlerV1Short(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1OK, error)
	PutPlayerPublicRecordHandlerV1(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1OK, *PutPlayerPublicRecordHandlerV1BadRequest, *PutPlayerPublicRecordHandlerV1Unauthorized, *PutPlayerPublicRecordHandlerV1InternalServerError, error)
	PutPlayerPublicRecordHandlerV1Short(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1OK, error)
	PostPlayerPublicRecordHandlerV1(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Created, *PostPlayerPublicRecordHandlerV1BadRequest, *PostPlayerPublicRecordHandlerV1Unauthorized, *PostPlayerPublicRecordHandlerV1InternalServerError, error)
	PostPlayerPublicRecordHandlerV1Short(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use BulkGetPlayerPublicRecordHandlerV1Short instead.

BulkGetPlayerPublicRecordHandlerV1 bulk get player public records
Required Permission | `NAMESPACE:{namespace}:PUBLIC:CLOUDSAVE:RECORD [READ]`
--------------------|--------------------------------------------------------
Required Scope      | `social`





Bulk get other player's record that is public by userIds, max allowed 20 at a time. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerPublicRecordHandlerV1(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1OK, *BulkGetPlayerPublicRecordHandlerV1BadRequest, *BulkGetPlayerPublicRecordHandlerV1Unauthorized, *BulkGetPlayerPublicRecordHandlerV1Forbidden, *BulkGetPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *BulkGetPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *BulkGetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *BulkGetPlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *BulkGetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetPlayerPublicRecordHandlerV1Short bulk get player public records
Required Permission | `NAMESPACE:{namespace}:PUBLIC:CLOUDSAVE:RECORD [READ]`
--------------------|--------------------------------------------------------
Required Scope      | `social`





Bulk get other player's record that is public by userIds, max allowed 20 at a time. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerPublicRecordHandlerV1Short(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *BulkGetPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *BulkGetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *BulkGetPlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *BulkGetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrievePlayerRecordsShort instead.

RetrievePlayerRecords query player records key
Required valid user token

Required scope: `social`

Retrieve list of player records key under given namespace.
*/
func (a *Client) RetrievePlayerRecords(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsOK, *RetrievePlayerRecordsBadRequest, *RetrievePlayerRecordsUnauthorized, *RetrievePlayerRecordsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePlayerRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RetrievePlayerRecordsOK:
		return v, nil, nil, nil, nil

	case *RetrievePlayerRecordsBadRequest:
		return nil, v, nil, nil, nil

	case *RetrievePlayerRecordsUnauthorized:
		return nil, nil, v, nil, nil

	case *RetrievePlayerRecordsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrievePlayerRecordsShort query player records key
Required valid user token

Required scope: `social`

Retrieve list of player records key under given namespace.
*/
func (a *Client) RetrievePlayerRecordsShort(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePlayerRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePlayerRecordsOK:
		return v, nil
	case *RetrievePlayerRecordsBadRequest:
		return nil, v
	case *RetrievePlayerRecordsUnauthorized:
		return nil, v
	case *RetrievePlayerRecordsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlayerRecordsBulkHandlerV1Short instead.

GetPlayerRecordsBulkHandlerV1 get player records bulk
Required valid user token

Required scope: `social`

Retrieve player record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetPlayerRecordsBulkHandlerV1(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1OK, *GetPlayerRecordsBulkHandlerV1BadRequest, *GetPlayerRecordsBulkHandlerV1Unauthorized, *GetPlayerRecordsBulkHandlerV1Forbidden, *GetPlayerRecordsBulkHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordsBulkHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordsBulkHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordsBulkHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordsBulkHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetPlayerRecordsBulkHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetPlayerRecordsBulkHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetPlayerRecordsBulkHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetPlayerRecordsBulkHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerRecordsBulkHandlerV1Short get player records bulk
Required valid user token

Required scope: `social`

Retrieve player record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetPlayerRecordsBulkHandlerV1Short(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordsBulkHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordsBulkHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordsBulkHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordsBulkHandlerV1OK:
		return v, nil
	case *GetPlayerRecordsBulkHandlerV1BadRequest:
		return nil, v
	case *GetPlayerRecordsBulkHandlerV1Unauthorized:
		return nil, v
	case *GetPlayerRecordsBulkHandlerV1Forbidden:
		return nil, v
	case *GetPlayerRecordsBulkHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeletePlayerPublicRecordHandlerV1Short instead.

PublicDeletePlayerPublicRecordHandlerV1 delete player public record
Required valid user authorization
Required scope: `social`

Delete player public record.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PublicDeletePlayerPublicRecordHandlerV1(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1NoContent, *PublicDeletePlayerPublicRecordHandlerV1BadRequest, *PublicDeletePlayerPublicRecordHandlerV1Unauthorized, *PublicDeletePlayerPublicRecordHandlerV1NotFound, *PublicDeletePlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerPublicRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicDeletePlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicDeletePlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicDeletePlayerPublicRecordHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicDeletePlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlayerPublicRecordHandlerV1Short delete player public record
Required valid user authorization
Required scope: `social`

Delete player public record.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PublicDeletePlayerPublicRecordHandlerV1Short(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerPublicRecordHandlerV1NoContent:
		return v, nil
	case *PublicDeletePlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *PublicDeletePlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *PublicDeletePlayerPublicRecordHandlerV1NotFound:
		return nil, v
	case *PublicDeletePlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetOtherPlayerPublicRecordKeyHandlerV1Short instead.

GetOtherPlayerPublicRecordKeyHandlerV1 query other player public record key
Required valid user token with permission: `NAMESPACE:{namespace}:USER:*:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Retrieve list of other public player records key under given namespace.
*/
func (a *Client) GetOtherPlayerPublicRecordKeyHandlerV1(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1OK, *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest, *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized, *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordKeyHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordKeyHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordKeyHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordKeyHandlerV1OK:
		return v, nil, nil, nil, nil

	case *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOtherPlayerPublicRecordKeyHandlerV1Short query other player public record key
Required valid user token with permission: `NAMESPACE:{namespace}:USER:*:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Retrieve list of other public player records key under given namespace.
*/
func (a *Client) GetOtherPlayerPublicRecordKeyHandlerV1Short(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordKeyHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordKeyHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordKeyHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordKeyHandlerV1OK:
		return v, nil
	case *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest:
		return nil, v
	case *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized:
		return nil, v
	case *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetOtherPlayerPublicRecordHandlerV1Short instead.

GetOtherPlayerPublicRecordHandlerV1 get other player public record bulk
Required valid user token with permission: `NAMESPACE:{namespace}:USER:*:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Retrieve other player public record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetOtherPlayerPublicRecordHandlerV1(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1OK, *GetOtherPlayerPublicRecordHandlerV1BadRequest, *GetOtherPlayerPublicRecordHandlerV1Unauthorized, *GetOtherPlayerPublicRecordHandlerV1Forbidden, *GetOtherPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetOtherPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetOtherPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetOtherPlayerPublicRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *GetOtherPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOtherPlayerPublicRecordHandlerV1Short get other player public record bulk
Required valid user token with permission: `NAMESPACE:{namespace}:USER:*:PUBLIC:CLOUDSAVE:RECORD [READ]`

Required scope: `social`

Retrieve other player public record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetOtherPlayerPublicRecordHandlerV1Short(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *GetOtherPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *GetOtherPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *GetOtherPlayerPublicRecordHandlerV1Forbidden:
		return nil, v
	case *GetOtherPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlayerRecordHandlerV1Short instead.

GetPlayerRecordHandlerV1 get player record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
--------------------|---------------------------------------------------------------
Required Scope      | `social`





Get player record by its key.
 Private Record: Only user that own the player record could retrieve it.
*/
func (a *Client) GetPlayerRecordHandlerV1(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1OK, *GetPlayerRecordHandlerV1Unauthorized, *GetPlayerRecordHandlerV1Forbidden, *GetPlayerRecordHandlerV1NotFound, *GetPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *GetPlayerRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetPlayerRecordHandlerV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *GetPlayerRecordHandlerV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *GetPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerRecordHandlerV1Short get player record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
--------------------|---------------------------------------------------------------
Required Scope      | `social`





Get player record by its key.
 Private Record: Only user that own the player record could retrieve it.
*/
func (a *Client) GetPlayerRecordHandlerV1Short(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordHandlerV1OK:
		return v, nil
	case *GetPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *GetPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *GetPlayerRecordHandlerV1NotFound:
		return nil, v
	case *GetPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutPlayerRecordHandlerV1Short instead.

PutPlayerRecordHandlerV1 create or replace player record
Required permission: `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



## Description



This endpoints will create new player record or replace the existing player record.
Only user that own the existing player record could modify it.

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
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "is_public": true
            }
            ...
        }
*/
func (a *Client) PutPlayerRecordHandlerV1(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1OK, *PutPlayerRecordHandlerV1BadRequest, *PutPlayerRecordHandlerV1Unauthorized, *PutPlayerRecordHandlerV1Forbidden, *PutPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordHandlerV1OK:
		return v, nil, nil, nil, nil, nil

	case *PutPlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PutPlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PutPlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PutPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerRecordHandlerV1Short create or replace player record
Required permission: `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`



## Description



This endpoints will create new player record or replace the existing player record.
Only user that own the existing player record could modify it.

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
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "is_public": true
            }
            ...
        }
*/
func (a *Client) PutPlayerRecordHandlerV1Short(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordHandlerV1OK:
		return v, nil
	case *PutPlayerRecordHandlerV1BadRequest:
		return nil, v
	case *PutPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *PutPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *PutPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostPlayerRecordHandlerV1Short instead.

PostPlayerRecordHandlerV1 create or append player record
Required permission: `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player record or append the existing player record.
Only user that own the existing player record could modify.

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
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "is_public": true
            }
            ...
        }
*/
func (a *Client) PostPlayerRecordHandlerV1(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Created, *PostPlayerRecordHandlerV1BadRequest, *PostPlayerRecordHandlerV1Unauthorized, *PostPlayerRecordHandlerV1Forbidden, *PostPlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostPlayerRecordHandlerV1Created:
		return v, nil, nil, nil, nil, nil

	case *PostPlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *PostPlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *PostPlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *PostPlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerRecordHandlerV1Short create or append player record
Required permission: `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`



## Description



This endpoints will create new player record or append the existing player record.
Only user that own the existing player record could modify.

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
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

 Request Body Example:




        {
            "__META": {
                "is_public": true
            }
            ...
        }
*/
func (a *Client) PostPlayerRecordHandlerV1Short(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerRecordHandlerV1Created:
		return v, nil
	case *PostPlayerRecordHandlerV1BadRequest:
		return nil, v
	case *PostPlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *PostPlayerRecordHandlerV1Forbidden:
		return nil, v
	case *PostPlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePlayerRecordHandlerV1Short instead.

DeletePlayerRecordHandlerV1 delete player record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`
--------------------|-----------------------------------------------------------------
Required Scope      | `social`





Delete player record by its key.
Only user that own the player record could delete it.
*/
func (a *Client) DeletePlayerRecordHandlerV1(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1NoContent, *DeletePlayerRecordHandlerV1BadRequest, *DeletePlayerRecordHandlerV1Unauthorized, *DeletePlayerRecordHandlerV1Forbidden, *DeletePlayerRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePlayerRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *DeletePlayerRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeletePlayerRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeletePlayerRecordHandlerV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *DeletePlayerRecordHandlerV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlayerRecordHandlerV1Short delete player record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`
--------------------|-----------------------------------------------------------------
Required Scope      | `social`





Delete player record by its key.
Only user that own the player record could delete it.
*/
func (a *Client) DeletePlayerRecordHandlerV1Short(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlayerRecordHandlerV1NoContent:
		return v, nil
	case *DeletePlayerRecordHandlerV1BadRequest:
		return nil, v
	case *DeletePlayerRecordHandlerV1Unauthorized:
		return nil, v
	case *DeletePlayerRecordHandlerV1Forbidden:
		return nil, v
	case *DeletePlayerRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPlayerPublicRecordHandlerV1Short instead.

GetPlayerPublicRecordHandlerV1 get player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [READ]`
--------------------|----------------------------------------------------------------------
Required Scope      | `social`





Get other player's record that is public. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) GetPlayerPublicRecordHandlerV1(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1OK, *GetPlayerPublicRecordHandlerV1Unauthorized, *GetPlayerPublicRecordHandlerV1NotFound, *GetPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil

	case *GetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil

	case *GetPlayerPublicRecordHandlerV1NotFound:
		return nil, nil, v, nil, nil

	case *GetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerPublicRecordHandlerV1Short get player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [READ]`
--------------------|----------------------------------------------------------------------
Required Scope      | `social`





Get other player's record that is public. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) GetPlayerPublicRecordHandlerV1Short(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *GetPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *GetPlayerPublicRecordHandlerV1NotFound:
		return nil, v
	case *GetPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PutPlayerPublicRecordHandlerV1Short instead.

PutPlayerPublicRecordHandlerV1 create or replace player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
--------------------|------------------------------------------------------------------------
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




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PutPlayerPublicRecordHandlerV1(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1OK, *PutPlayerPublicRecordHandlerV1BadRequest, *PutPlayerPublicRecordHandlerV1Unauthorized, *PutPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordHandlerV1OK:
		return v, nil, nil, nil, nil

	case *PutPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *PutPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *PutPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerPublicRecordHandlerV1Short create or replace player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [UPDATE]`
--------------------|------------------------------------------------------------------------
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




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PutPlayerPublicRecordHandlerV1Short(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordHandlerV1OK:
		return v, nil
	case *PutPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *PutPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *PutPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PostPlayerPublicRecordHandlerV1Short instead.

PostPlayerPublicRecordHandlerV1 create or append player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [WRITE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`







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






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PostPlayerPublicRecordHandlerV1(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Created, *PostPlayerPublicRecordHandlerV1BadRequest, *PostPlayerPublicRecordHandlerV1Unauthorized, *PostPlayerPublicRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostPlayerPublicRecordHandlerV1Created:
		return v, nil, nil, nil, nil

	case *PostPlayerPublicRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *PostPlayerPublicRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *PostPlayerPublicRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerPublicRecordHandlerV1Short create or append player public record
Required Permission | `NAMESPACE:{namespace}:USER:{userId}:PUBLIC:CLOUDSAVE:RECORD [WRITE]`
--------------------|-----------------------------------------------------------------------
Required Scope      | `social`







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






## Reserved Word



Reserved Word List: __META

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.




## Warning: This endpoint is going to deprecate



This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} and utilizing __META functionality
- DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}
*/
func (a *Client) PostPlayerPublicRecordHandlerV1Short(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerPublicRecordHandlerV1Created:
		return v, nil
	case *PostPlayerPublicRecordHandlerV1BadRequest:
		return nil, v
	case *PostPlayerPublicRecordHandlerV1Unauthorized:
		return nil, v
	case *PostPlayerPublicRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
