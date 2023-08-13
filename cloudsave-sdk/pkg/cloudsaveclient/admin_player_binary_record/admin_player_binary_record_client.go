// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_player_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin player binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin player binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListPlayerBinaryRecordsV1(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, *AdminListPlayerBinaryRecordsV1Unauthorized, *AdminListPlayerBinaryRecordsV1InternalServerError, error)
	AdminListPlayerBinaryRecordsV1Short(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, error)
	AdminPostPlayerBinaryRecordV1(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, *AdminPostPlayerBinaryRecordV1Unauthorized, *AdminPostPlayerBinaryRecordV1InternalServerError, error)
	AdminPostPlayerBinaryRecordV1Short(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, error)
	AdminGetPlayerBinaryRecordV1(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, *AdminGetPlayerBinaryRecordV1Unauthorized, *AdminGetPlayerBinaryRecordV1NotFound, *AdminGetPlayerBinaryRecordV1InternalServerError, error)
	AdminGetPlayerBinaryRecordV1Short(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, error)
	AdminPutPlayerBinaryRecordV1(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, *AdminPutPlayerBinaryRecordV1Unauthorized, *AdminPutPlayerBinaryRecordV1InternalServerError, error)
	AdminPutPlayerBinaryRecordV1Short(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, error)
	AdminDeletePlayerBinaryRecordV1(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, *AdminDeletePlayerBinaryRecordV1Unauthorized, *AdminDeletePlayerBinaryRecordV1NotFound, *AdminDeletePlayerBinaryRecordV1InternalServerError, error)
	AdminDeletePlayerBinaryRecordV1Short(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, error)
	AdminPutPlayerBinaryRecorMetadataV1(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, *AdminPutPlayerBinaryRecorMetadataV1Unauthorized, *AdminPutPlayerBinaryRecorMetadataV1InternalServerError, error)
	AdminPutPlayerBinaryRecorMetadataV1Short(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, error)
	AdminPostPlayerBinaryPresignedURLV1(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, *AdminPostPlayerBinaryPresignedURLV1Unauthorized, *AdminPostPlayerBinaryPresignedURLV1InternalServerError, error)
	AdminPostPlayerBinaryPresignedURLV1Short(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListPlayerBinaryRecordsV1Short instead.

AdminListPlayerBinaryRecordsV1 query player binary records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Retrieve list of player binary records by namespace.
*/
func (a *Client) AdminListPlayerBinaryRecordsV1(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, *AdminListPlayerBinaryRecordsV1Unauthorized, *AdminListPlayerBinaryRecordsV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListPlayerBinaryRecordsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListPlayerBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListPlayerBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListPlayerBinaryRecordsV1OK:
		return v, nil, nil, nil

	case *AdminListPlayerBinaryRecordsV1Unauthorized:
		return nil, v, nil, nil

	case *AdminListPlayerBinaryRecordsV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListPlayerBinaryRecordsV1Short query player binary records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`

Retrieve list of player binary records by namespace.
*/
func (a *Client) AdminListPlayerBinaryRecordsV1Short(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListPlayerBinaryRecordsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListPlayerBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListPlayerBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListPlayerBinaryRecordsV1OK:
		return v, nil
	case *AdminListPlayerBinaryRecordsV1Unauthorized:
		return nil, v
	case *AdminListPlayerBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostPlayerBinaryRecordV1Short instead.

AdminPostPlayerBinaryRecordV1 create player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Create a player binary record.


Other detail info:



`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators "-" , "_" , "." are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryRecordV1(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, *AdminPostPlayerBinaryRecordV1Unauthorized, *AdminPostPlayerBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryRecordV1Created:
		return v, nil, nil, nil

	case *AdminPostPlayerBinaryRecordV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPostPlayerBinaryRecordV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerBinaryRecordV1Short create player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Create a player binary record.


Other detail info:



`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators "-" , "_" , "." are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryRecordV1Short(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryRecordV1Created:
		return v, nil
	case *AdminPostPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminPostPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerBinaryRecordV1Short instead.

AdminGetPlayerBinaryRecordV1 get player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`
Get a player binary record by its key.
*/
func (a *Client) AdminGetPlayerBinaryRecordV1(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, *AdminGetPlayerBinaryRecordV1Unauthorized, *AdminGetPlayerBinaryRecordV1NotFound, *AdminGetPlayerBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBinaryRecordV1OK:
		return v, nil, nil, nil, nil

	case *AdminGetPlayerBinaryRecordV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetPlayerBinaryRecordV1NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetPlayerBinaryRecordV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBinaryRecordV1Short get player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [READ]`
Required scope: `social`
Get a player binary record by its key.
*/
func (a *Client) AdminGetPlayerBinaryRecordV1Short(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBinaryRecordV1OK:
		return v, nil
	case *AdminGetPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminGetPlayerBinaryRecordV1NotFound:
		return nil, v
	case *AdminGetPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerBinaryRecordV1Short instead.

AdminPutPlayerBinaryRecordV1 update player binary record file
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a player binary record file by its key
*/
func (a *Client) AdminPutPlayerBinaryRecordV1(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, *AdminPutPlayerBinaryRecordV1Unauthorized, *AdminPutPlayerBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecordV1OK:
		return v, nil, nil, nil

	case *AdminPutPlayerBinaryRecordV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPutPlayerBinaryRecordV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerBinaryRecordV1Short update player binary record file
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a player binary record file by its key
*/
func (a *Client) AdminPutPlayerBinaryRecordV1Short(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecordV1OK:
		return v, nil
	case *AdminPutPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminPutPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlayerBinaryRecordV1Short instead.

AdminDeletePlayerBinaryRecordV1 delete player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`
Required scope: `social`

Delete a player binary record.
*/
func (a *Client) AdminDeletePlayerBinaryRecordV1(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, *AdminDeletePlayerBinaryRecordV1Unauthorized, *AdminDeletePlayerBinaryRecordV1NotFound, *AdminDeletePlayerBinaryRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerBinaryRecordV1NoContent:
		return v, nil, nil, nil, nil

	case *AdminDeletePlayerBinaryRecordV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminDeletePlayerBinaryRecordV1NotFound:
		return nil, nil, v, nil, nil

	case *AdminDeletePlayerBinaryRecordV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerBinaryRecordV1Short delete player binary record
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [DELETE]`
Required scope: `social`

Delete a player binary record.
*/
func (a *Client) AdminDeletePlayerBinaryRecordV1Short(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerBinaryRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeletePlayerBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerBinaryRecordV1NoContent:
		return v, nil
	case *AdminDeletePlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminDeletePlayerBinaryRecordV1NotFound:
		return nil, v
	case *AdminDeletePlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutPlayerBinaryRecorMetadataV1Short instead.

AdminPutPlayerBinaryRecorMetadataV1 update player binary record metadata
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a player binary record metadata by its key
*/
func (a *Client) AdminPutPlayerBinaryRecorMetadataV1(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, *AdminPutPlayerBinaryRecorMetadataV1Unauthorized, *AdminPutPlayerBinaryRecorMetadataV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecorMetadataV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerBinaryRecorMetadataV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecorMetadataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecorMetadataV1OK:
		return v, nil, nil, nil

	case *AdminPutPlayerBinaryRecorMetadataV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPutPlayerBinaryRecorMetadataV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerBinaryRecorMetadataV1Short update player binary record metadata
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [UPDATE]`
Required scope: `social`

Update a player binary record metadata by its key
*/
func (a *Client) AdminPutPlayerBinaryRecorMetadataV1Short(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecorMetadataV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutPlayerBinaryRecorMetadataV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecorMetadataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecorMetadataV1OK:
		return v, nil
	case *AdminPutPlayerBinaryRecorMetadataV1Unauthorized:
		return nil, v
	case *AdminPutPlayerBinaryRecorMetadataV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostPlayerBinaryPresignedURLV1Short instead.

AdminPostPlayerBinaryPresignedURLV1 request presigned url for upload player binary records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Request presigned URL to upload the binary record to s3.


Other detail info:



Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryPresignedURLV1(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, *AdminPostPlayerBinaryPresignedURLV1Unauthorized, *AdminPostPlayerBinaryPresignedURLV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryPresignedURLV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryPresignedURLV1Created:
		return v, nil, nil, nil

	case *AdminPostPlayerBinaryPresignedURLV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPostPlayerBinaryPresignedURLV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerBinaryPresignedURLV1Short request presigned url for upload player binary records
Required permission: `ADMIN:NAMESPACE:{namespace}:USER:{userId}:CLOUDSAVE:RECORD [CREATE]`
Required scope: `social`

Request presigned URL to upload the binary record to s3.


Other detail info:



Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryPresignedURLV1Short(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryPresignedURLV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryPresignedURLV1Created:
		return v, nil
	case *AdminPostPlayerBinaryPresignedURLV1Unauthorized:
		return nil, v
	case *AdminPostPlayerBinaryPresignedURLV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
