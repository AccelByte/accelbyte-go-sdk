// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListAdminGameRecordV1(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1OK, *AdminListAdminGameRecordV1BadRequest, *AdminListAdminGameRecordV1Unauthorized, *AdminListAdminGameRecordV1Forbidden, *AdminListAdminGameRecordV1InternalServerError, error)
	AdminListAdminGameRecordV1Short(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1OK, error)
	AdminBulkGetAdminGameRecordV1(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1OK, *AdminBulkGetAdminGameRecordV1BadRequest, *AdminBulkGetAdminGameRecordV1Unauthorized, *AdminBulkGetAdminGameRecordV1Forbidden, *AdminBulkGetAdminGameRecordV1NotFound, *AdminBulkGetAdminGameRecordV1InternalServerError, error)
	AdminBulkGetAdminGameRecordV1Short(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1OK, error)
	AdminGetAdminGameRecordV1(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1OK, *AdminGetAdminGameRecordV1Unauthorized, *AdminGetAdminGameRecordV1Forbidden, *AdminGetAdminGameRecordV1NotFound, *AdminGetAdminGameRecordV1InternalServerError, error)
	AdminGetAdminGameRecordV1Short(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1OK, error)
	AdminPutAdminGameRecordV1(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1OK, *AdminPutAdminGameRecordV1BadRequest, *AdminPutAdminGameRecordV1Unauthorized, *AdminPutAdminGameRecordV1Forbidden, *AdminPutAdminGameRecordV1InternalServerError, error)
	AdminPutAdminGameRecordV1Short(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1OK, error)
	AdminPostAdminGameRecordV1(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Created, *AdminPostAdminGameRecordV1BadRequest, *AdminPostAdminGameRecordV1Unauthorized, *AdminPostAdminGameRecordV1Forbidden, *AdminPostAdminGameRecordV1InternalServerError, error)
	AdminPostAdminGameRecordV1Short(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Created, error)
	AdminDeleteAdminGameRecordV1(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1NoContent, *AdminDeleteAdminGameRecordV1Unauthorized, *AdminDeleteAdminGameRecordV1Forbidden, *AdminDeleteAdminGameRecordV1NotFound, *AdminDeleteAdminGameRecordV1InternalServerError, error)
	AdminDeleteAdminGameRecordV1Short(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1NoContent, error)
	BulkGetAdminPlayerRecordByUserIdsV1(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1OK, *BulkGetAdminPlayerRecordByUserIdsV1BadRequest, *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized, *BulkGetAdminPlayerRecordByUserIdsV1Forbidden, *BulkGetAdminPlayerRecordByUserIdsV1NotFound, *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError, error)
	BulkGetAdminPlayerRecordByUserIdsV1Short(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1OK, error)
	AdminListAdminUserRecordsV1(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1OK, *AdminListAdminUserRecordsV1BadRequest, *AdminListAdminUserRecordsV1Unauthorized, *AdminListAdminUserRecordsV1Forbidden, *AdminListAdminUserRecordsV1InternalServerError, error)
	AdminListAdminUserRecordsV1Short(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1OK, error)
	AdminBulkGetAdminPlayerRecordV1(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1OK, *AdminBulkGetAdminPlayerRecordV1BadRequest, *AdminBulkGetAdminPlayerRecordV1Unauthorized, *AdminBulkGetAdminPlayerRecordV1Forbidden, *AdminBulkGetAdminPlayerRecordV1NotFound, *AdminBulkGetAdminPlayerRecordV1InternalServerError, error)
	AdminBulkGetAdminPlayerRecordV1Short(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1OK, error)
	AdminGetAdminPlayerRecordV1(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1OK, *AdminGetAdminPlayerRecordV1Unauthorized, *AdminGetAdminPlayerRecordV1Forbidden, *AdminGetAdminPlayerRecordV1NotFound, *AdminGetAdminPlayerRecordV1InternalServerError, error)
	AdminGetAdminPlayerRecordV1Short(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1OK, error)
	AdminPutAdminPlayerRecordV1(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1OK, *AdminPutAdminPlayerRecordV1BadRequest, *AdminPutAdminPlayerRecordV1Unauthorized, *AdminPutAdminPlayerRecordV1Forbidden, *AdminPutAdminPlayerRecordV1InternalServerError, error)
	AdminPutAdminPlayerRecordV1Short(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1OK, error)
	AdminPostPlayerAdminRecordV1(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Created, *AdminPostPlayerAdminRecordV1BadRequest, *AdminPostPlayerAdminRecordV1Unauthorized, *AdminPostPlayerAdminRecordV1Forbidden, *AdminPostPlayerAdminRecordV1InternalServerError, error)
	AdminPostPlayerAdminRecordV1Short(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Created, error)
	AdminDeleteAdminPlayerRecordV1(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1NoContent, *AdminDeleteAdminPlayerRecordV1Unauthorized, *AdminDeleteAdminPlayerRecordV1Forbidden, *AdminDeleteAdminPlayerRecordV1NotFound, *AdminDeleteAdminPlayerRecordV1InternalServerError, error)
	AdminDeleteAdminPlayerRecordV1Short(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListAdminGameRecordV1Short instead.

AdminListAdminGameRecordV1 list key of admin game record
Retrieve list of records key by namespace
*/
func (a *Client) AdminListAdminGameRecordV1(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1OK, *AdminListAdminGameRecordV1BadRequest, *AdminListAdminGameRecordV1Unauthorized, *AdminListAdminGameRecordV1Forbidden, *AdminListAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminGameRecordV1Params()
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
		ID:                 "adminListAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminGameRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListAdminGameRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListAdminGameRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListAdminGameRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAdminGameRecordV1Short list key of admin game record
Retrieve list of records key by namespace
*/
func (a *Client) AdminListAdminGameRecordV1Short(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminGameRecordV1OK:
		return v, nil
	case *AdminListAdminGameRecordV1BadRequest:
		return nil, v
	case *AdminListAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminListAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminListAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBulkGetAdminGameRecordV1Short instead.

AdminBulkGetAdminGameRecordV1 bulk get admin game records
Bulk get admin game records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminGameRecordV1(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1OK, *AdminBulkGetAdminGameRecordV1BadRequest, *AdminBulkGetAdminGameRecordV1Unauthorized, *AdminBulkGetAdminGameRecordV1Forbidden, *AdminBulkGetAdminGameRecordV1NotFound, *AdminBulkGetAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminGameRecordV1Params()
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
		ID:                 "adminBulkGetAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminGameRecordV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminBulkGetAdminGameRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminBulkGetAdminGameRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminBulkGetAdminGameRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminBulkGetAdminGameRecordV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminBulkGetAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetAdminGameRecordV1Short bulk get admin game records
Bulk get admin game records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminGameRecordV1Short(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminBulkGetAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminGameRecordV1OK:
		return v, nil
	case *AdminBulkGetAdminGameRecordV1BadRequest:
		return nil, v
	case *AdminBulkGetAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminBulkGetAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminBulkGetAdminGameRecordV1NotFound:
		return nil, v
	case *AdminBulkGetAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAdminGameRecordV1Short instead.

AdminGetAdminGameRecordV1 get admin game record
Get a record by its key in namespace-level.
*/
func (a *Client) AdminGetAdminGameRecordV1(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1OK, *AdminGetAdminGameRecordV1Unauthorized, *AdminGetAdminGameRecordV1Forbidden, *AdminGetAdminGameRecordV1NotFound, *AdminGetAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminGameRecordV1Params()
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
		ID:                 "adminGetAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminGameRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetAdminGameRecordV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetAdminGameRecordV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetAdminGameRecordV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAdminGameRecordV1Short get admin game record
Get a record by its key in namespace-level.
*/
func (a *Client) AdminGetAdminGameRecordV1Short(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminGameRecordV1OK:
		return v, nil
	case *AdminGetAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminGetAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminGetAdminGameRecordV1NotFound:
		return nil, v
	case *AdminGetAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutAdminGameRecordV1Short instead.

AdminPutAdminGameRecordV1 create or replace admin game record
## Description

This endpoints will create new admin game record or replace the existing admin game record.

**Append example:**

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutAdminGameRecordV1(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1OK, *AdminPutAdminGameRecordV1BadRequest, *AdminPutAdminGameRecordV1Unauthorized, *AdminPutAdminGameRecordV1Forbidden, *AdminPutAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordV1Params()
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
		ID:                 "adminPutAdminGameRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminPutAdminGameRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPutAdminGameRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPutAdminGameRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPutAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminGameRecordV1Short create or replace admin game record
## Description

This endpoints will create new admin game record or replace the existing admin game record.

**Append example:**

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutAdminGameRecordV1Short(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminGameRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordV1OK:
		return v, nil
	case *AdminPutAdminGameRecordV1BadRequest:
		return nil, v
	case *AdminPutAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminPutAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminPutAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostAdminGameRecordV1Short instead.

AdminPostAdminGameRecordV1 create or append admin game record
## Description

This endpoints will create new admin game record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPostAdminGameRecordV1(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Created, *AdminPostAdminGameRecordV1BadRequest, *AdminPostAdminGameRecordV1Unauthorized, *AdminPostAdminGameRecordV1Forbidden, *AdminPostAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostAdminGameRecordV1Params()
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
		ID:                 "adminPostAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostAdminGameRecordV1Created:
		return v, nil, nil, nil, nil, nil

	case *AdminPostAdminGameRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPostAdminGameRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPostAdminGameRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPostAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostAdminGameRecordV1Short create or append admin game record
## Description

This endpoints will create new admin game record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPostAdminGameRecordV1Short(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostAdminGameRecordV1Created:
		return v, nil
	case *AdminPostAdminGameRecordV1BadRequest:
		return nil, v
	case *AdminPostAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminPostAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminPostAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAdminGameRecordV1Short instead.

AdminDeleteAdminGameRecordV1 delete admin game record
This endpoints delete game record in namespace-level
*/
func (a *Client) AdminDeleteAdminGameRecordV1(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1NoContent, *AdminDeleteAdminGameRecordV1Unauthorized, *AdminDeleteAdminGameRecordV1Forbidden, *AdminDeleteAdminGameRecordV1NotFound, *AdminDeleteAdminGameRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminGameRecordV1Params()
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
		ID:                 "adminDeleteAdminGameRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminGameRecordV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteAdminGameRecordV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteAdminGameRecordV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteAdminGameRecordV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteAdminGameRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAdminGameRecordV1Short delete admin game record
This endpoints delete game record in namespace-level
*/
func (a *Client) AdminDeleteAdminGameRecordV1Short(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminGameRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteAdminGameRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminGameRecordV1NoContent:
		return v, nil
	case *AdminDeleteAdminGameRecordV1Unauthorized:
		return nil, v
	case *AdminDeleteAdminGameRecordV1Forbidden:
		return nil, v
	case *AdminDeleteAdminGameRecordV1NotFound:
		return nil, v
	case *AdminDeleteAdminGameRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkGetAdminPlayerRecordByUserIdsV1Short instead.

BulkGetAdminPlayerRecordByUserIdsV1 bulk get admin player record by multiple user id
Bulk get admin player record by userIds, max allowed 20 at a time.
*/
func (a *Client) BulkGetAdminPlayerRecordByUserIdsV1(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1OK, *BulkGetAdminPlayerRecordByUserIdsV1BadRequest, *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized, *BulkGetAdminPlayerRecordByUserIdsV1Forbidden, *BulkGetAdminPlayerRecordByUserIdsV1NotFound, *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetAdminPlayerRecordByUserIdsV1Params()
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
		ID:                 "bulkGetAdminPlayerRecordByUserIdsV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetAdminPlayerRecordByUserIdsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *BulkGetAdminPlayerRecordByUserIdsV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *BulkGetAdminPlayerRecordByUserIdsV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *BulkGetAdminPlayerRecordByUserIdsV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *BulkGetAdminPlayerRecordByUserIdsV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetAdminPlayerRecordByUserIdsV1Short bulk get admin player record by multiple user id
Bulk get admin player record by userIds, max allowed 20 at a time.
*/
func (a *Client) BulkGetAdminPlayerRecordByUserIdsV1Short(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetAdminPlayerRecordByUserIdsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetAdminPlayerRecordByUserIdsV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetAdminPlayerRecordByUserIdsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetAdminPlayerRecordByUserIdsV1OK:
		return v, nil
	case *BulkGetAdminPlayerRecordByUserIdsV1BadRequest:
		return nil, v
	case *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized:
		return nil, v
	case *BulkGetAdminPlayerRecordByUserIdsV1Forbidden:
		return nil, v
	case *BulkGetAdminPlayerRecordByUserIdsV1NotFound:
		return nil, v
	case *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListAdminUserRecordsV1Short instead.

AdminListAdminUserRecordsV1 list key of admin player record
Retrieve list of admin player records key and userID under given namespace.
*/
func (a *Client) AdminListAdminUserRecordsV1(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1OK, *AdminListAdminUserRecordsV1BadRequest, *AdminListAdminUserRecordsV1Unauthorized, *AdminListAdminUserRecordsV1Forbidden, *AdminListAdminUserRecordsV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminUserRecordsV1Params()
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
		ID:                 "adminListAdminUserRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminUserRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminUserRecordsV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminListAdminUserRecordsV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminListAdminUserRecordsV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminListAdminUserRecordsV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminListAdminUserRecordsV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAdminUserRecordsV1Short list key of admin player record
Retrieve list of admin player records key and userID under given namespace.
*/
func (a *Client) AdminListAdminUserRecordsV1Short(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminUserRecordsV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListAdminUserRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminUserRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminUserRecordsV1OK:
		return v, nil
	case *AdminListAdminUserRecordsV1BadRequest:
		return nil, v
	case *AdminListAdminUserRecordsV1Unauthorized:
		return nil, v
	case *AdminListAdminUserRecordsV1Forbidden:
		return nil, v
	case *AdminListAdminUserRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBulkGetAdminPlayerRecordV1Short instead.

AdminBulkGetAdminPlayerRecordV1 bulk get admin player records
Bulk get admin player records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminPlayerRecordV1(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1OK, *AdminBulkGetAdminPlayerRecordV1BadRequest, *AdminBulkGetAdminPlayerRecordV1Unauthorized, *AdminBulkGetAdminPlayerRecordV1Forbidden, *AdminBulkGetAdminPlayerRecordV1NotFound, *AdminBulkGetAdminPlayerRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminPlayerRecordV1Params()
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
		ID:                 "adminBulkGetAdminPlayerRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminPlayerRecordV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminBulkGetAdminPlayerRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminBulkGetAdminPlayerRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminBulkGetAdminPlayerRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminBulkGetAdminPlayerRecordV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminBulkGetAdminPlayerRecordV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetAdminPlayerRecordV1Short bulk get admin player records
Bulk get admin player records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminPlayerRecordV1Short(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminPlayerRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminBulkGetAdminPlayerRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminPlayerRecordV1OK:
		return v, nil
	case *AdminBulkGetAdminPlayerRecordV1BadRequest:
		return nil, v
	case *AdminBulkGetAdminPlayerRecordV1Unauthorized:
		return nil, v
	case *AdminBulkGetAdminPlayerRecordV1Forbidden:
		return nil, v
	case *AdminBulkGetAdminPlayerRecordV1NotFound:
		return nil, v
	case *AdminBulkGetAdminPlayerRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAdminPlayerRecordV1Short instead.

AdminGetAdminPlayerRecordV1 get admin player record
Get a admin record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetAdminPlayerRecordV1(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1OK, *AdminGetAdminPlayerRecordV1Unauthorized, *AdminGetAdminPlayerRecordV1Forbidden, *AdminGetAdminPlayerRecordV1NotFound, *AdminGetAdminPlayerRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminPlayerRecordV1Params()
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
		ID:                 "adminGetAdminPlayerRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminPlayerRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetAdminPlayerRecordV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetAdminPlayerRecordV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetAdminPlayerRecordV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetAdminPlayerRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAdminPlayerRecordV1Short get admin player record
Get a admin record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetAdminPlayerRecordV1Short(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminPlayerRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAdminPlayerRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminPlayerRecordV1OK:
		return v, nil
	case *AdminGetAdminPlayerRecordV1Unauthorized:
		return nil, v
	case *AdminGetAdminPlayerRecordV1Forbidden:
		return nil, v
	case *AdminGetAdminPlayerRecordV1NotFound:
		return nil, v
	case *AdminGetAdminPlayerRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPutAdminPlayerRecordV1Short instead.

AdminPutAdminPlayerRecordV1 create or replace admin player record
## Description

This endpoints will create new admin player record or replace the existing admin player record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutAdminPlayerRecordV1(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1OK, *AdminPutAdminPlayerRecordV1BadRequest, *AdminPutAdminPlayerRecordV1Unauthorized, *AdminPutAdminPlayerRecordV1Forbidden, *AdminPutAdminPlayerRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordV1Params()
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
		ID:                 "adminPutAdminPlayerRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPutAdminPlayerRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPutAdminPlayerRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPutAdminPlayerRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminPlayerRecordV1Short create or replace admin player record
## Description

This endpoints will create new admin player record or replace the existing admin player record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutAdminPlayerRecordV1Short(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutAdminPlayerRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordV1OK:
		return v, nil
	case *AdminPutAdminPlayerRecordV1BadRequest:
		return nil, v
	case *AdminPutAdminPlayerRecordV1Unauthorized:
		return nil, v
	case *AdminPutAdminPlayerRecordV1Forbidden:
		return nil, v
	case *AdminPutAdminPlayerRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminPostPlayerAdminRecordV1Short instead.

AdminPostPlayerAdminRecordV1 create or append admin player record
## Description

This endpoints will create new admin player record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPostPlayerAdminRecordV1(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Created, *AdminPostPlayerAdminRecordV1BadRequest, *AdminPostPlayerAdminRecordV1Unauthorized, *AdminPostPlayerAdminRecordV1Forbidden, *AdminPostPlayerAdminRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerAdminRecordV1Params()
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
		ID:                 "adminPostPlayerAdminRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerAdminRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerAdminRecordV1Created:
		return v, nil, nil, nil, nil, nil

	case *AdminPostPlayerAdminRecordV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminPostPlayerAdminRecordV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminPostPlayerAdminRecordV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminPostPlayerAdminRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerAdminRecordV1Short create or append admin player record
## Description

This endpoints will create new admin player record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPostPlayerAdminRecordV1Short(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerAdminRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostPlayerAdminRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerAdminRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerAdminRecordV1Created:
		return v, nil
	case *AdminPostPlayerAdminRecordV1BadRequest:
		return nil, v
	case *AdminPostPlayerAdminRecordV1Unauthorized:
		return nil, v
	case *AdminPostPlayerAdminRecordV1Forbidden:
		return nil, v
	case *AdminPostPlayerAdminRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteAdminPlayerRecordV1Short instead.

AdminDeleteAdminPlayerRecordV1 delete admin player record
Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeleteAdminPlayerRecordV1(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1NoContent, *AdminDeleteAdminPlayerRecordV1Unauthorized, *AdminDeleteAdminPlayerRecordV1Forbidden, *AdminDeleteAdminPlayerRecordV1NotFound, *AdminDeleteAdminPlayerRecordV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminPlayerRecordV1Params()
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
		ID:                 "adminDeleteAdminPlayerRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminPlayerRecordV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteAdminPlayerRecordV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteAdminPlayerRecordV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteAdminPlayerRecordV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteAdminPlayerRecordV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAdminPlayerRecordV1Short delete admin player record
Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeleteAdminPlayerRecordV1Short(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminPlayerRecordV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteAdminPlayerRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminPlayerRecordV1NoContent:
		return v, nil
	case *AdminDeleteAdminPlayerRecordV1Unauthorized:
		return nil, v
	case *AdminDeleteAdminPlayerRecordV1Forbidden:
		return nil, v
	case *AdminDeleteAdminPlayerRecordV1NotFound:
		return nil, v
	case *AdminDeleteAdminPlayerRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
