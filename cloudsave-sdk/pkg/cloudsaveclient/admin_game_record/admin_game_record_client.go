// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_game_record

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin game record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin game record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminDeleteGameRecordHandlerV1(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1NoContent, *AdminDeleteGameRecordHandlerV1Unauthorized, *AdminDeleteGameRecordHandlerV1InternalServerError, error)
	AdminDeleteGameRecordHandlerV1Short(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1NoContent, error)
	AdminGetGameRecordHandlerV1(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1OK, *AdminGetGameRecordHandlerV1Unauthorized, *AdminGetGameRecordHandlerV1NotFound, *AdminGetGameRecordHandlerV1InternalServerError, error)
	AdminGetGameRecordHandlerV1Short(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1OK, error)
	AdminPostGameRecordHandlerV1(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Created, *AdminPostGameRecordHandlerV1Unauthorized, *AdminPostGameRecordHandlerV1InternalServerError, error)
	AdminPostGameRecordHandlerV1Short(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Created, error)
	AdminPutGameRecordHandlerV1(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1OK, *AdminPutGameRecordHandlerV1Unauthorized, *AdminPutGameRecordHandlerV1InternalServerError, error)
	AdminPutGameRecordHandlerV1Short(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1OK, error)
	ListGameRecordsHandlerV1(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1OK, *ListGameRecordsHandlerV1Unauthorized, *ListGameRecordsHandlerV1InternalServerError, error)
	ListGameRecordsHandlerV1Short(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminDeleteGameRecordHandlerV1 deletes game record

  Required permission: &lt;code&gt;ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]&lt;/code&gt;

Required scope: &lt;code&gt;social&lt;/code&gt;

This endpoints delete game record in namespace-level
*/
func (a *Client) AdminDeleteGameRecordHandlerV1(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1NoContent, *AdminDeleteGameRecordHandlerV1Unauthorized, *AdminDeleteGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGameRecordHandlerV1NoContent:
		return v, nil, nil, nil

	case *AdminDeleteGameRecordHandlerV1Unauthorized:
		return nil, v, nil, nil

	case *AdminDeleteGameRecordHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminDeleteGameRecordHandlerV1Short(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGameRecordHandlerV1NoContent:
		return v, nil
	case *AdminDeleteGameRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminDeleteGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetGameRecordHandlerV1 gets game record

  Required permission: &lt;code&gt;ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]&lt;/code&gt;

Required scope: &lt;code&gt;social&lt;/code&gt;

Get a record by its key in namespace-level.
*/
func (a *Client) AdminGetGameRecordHandlerV1(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1OK, *AdminGetGameRecordHandlerV1Unauthorized, *AdminGetGameRecordHandlerV1NotFound, *AdminGetGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGameRecordHandlerV1OK:
		return v, nil, nil, nil, nil

	case *AdminGetGameRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetGameRecordHandlerV1NotFound:
		return nil, nil, v, nil, nil

	case *AdminGetGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetGameRecordHandlerV1Short(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGameRecordHandlerV1OK:
		return v, nil
	case *AdminGetGameRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminGetGameRecordHandlerV1NotFound:
		return nil, v
	case *AdminGetGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminPostGameRecordHandlerV1 creates or append game record

  Required permission: &lt;code&gt;ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]&lt;/code&gt;
Required scope: &lt;code&gt;social&lt;/code&gt;

&lt;h2&gt;Description&lt;/h2&gt;

This endpoints will create new game record or append the existing game record.

&lt;b&gt;Append example:&lt;/b&gt;

Example 1
- 	Existing JSON:
	&lt;pre&gt;{ &#34;data1&#34;: &#34;value&#34; }&lt;/pre&gt;
- 	New JSON:
	&lt;pre&gt;{ &#34;data2&#34;: &#34;new value&#34; }&lt;/pre&gt;
-	Result:
	&lt;pre&gt;{ &#34;data1&#34;: &#34;value&#34;, &#34;data2&#34;: &#34;new value&#34; }&lt;/pre&gt;

Example 2
-	Existing JSON:
	&lt;pre&gt;{ &#34;data1&#34;: { &#34;data2&#34;: &#34;value&#34; }&lt;/pre&gt;
-	New JSON:
	&lt;pre&gt;{ &#34;data1&#34;: { &#34;data3&#34;: &#34;new value&#34; }&lt;/pre&gt;
-	Result:
	&lt;pre&gt;{ &#34;data1&#34;: { &#34;data2&#34;: &#34;value&#34;, &#34;data3&#34;: &#34;new value&#34; }&lt;/pre&gt;


&lt;h2&gt;Record Metadata&lt;/h2&gt;

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name &lt;b&gt;__META&lt;/b&gt;.
When creating record, if &lt;b&gt;__META&lt;/b&gt; field is not defined, the metadata value will use the default value.
When updating record, if &lt;b&gt;__META&lt;/b&gt; field is not defined, the existing metadata value will stay as is.

&lt;b&gt;Metadata List:&lt;/b&gt;
1.	set_by (default: CLIENT, type: string)
	Indicate which party that could modify the game record.
	SERVER: record can be modified by server only.
	CLIENT: record can be modified by client and server.

&lt;b&gt;Request Body Example:&lt;/b&gt;
&lt;pre&gt;
	{
		&#34;__META&#34;: {
			&#34;set_by&#34;: &#34;SERVER&#34;
		}
		...
	}
&lt;/pre&gt;

*/
func (a *Client) AdminPostGameRecordHandlerV1(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Created, *AdminPostGameRecordHandlerV1Unauthorized, *AdminPostGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPostGameRecordHandlerV1Created:
		return v, nil, nil, nil

	case *AdminPostGameRecordHandlerV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPostGameRecordHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminPostGameRecordHandlerV1Short(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPostGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostGameRecordHandlerV1Created:
		return v, nil
	case *AdminPostGameRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPostGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminPutGameRecordHandlerV1 creates or replace game record

  Required permission: &lt;code&gt;ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]&lt;/code&gt;
Required scope: &lt;code&gt;social&lt;/code&gt;

&lt;h2&gt;Description&lt;/h2&gt;

This endpoints will create new game record or replace the existing game record.

&lt;b&gt;Replace behaviour:&lt;/b&gt;
The existing value will be replaced completely with the new value.

Example
- 	Existing JSON:
	&lt;pre&gt;{ &#34;data1&#34;: &#34;value&#34; }&lt;/pre&gt;
- 	New JSON:
	&lt;pre&gt;{ &#34;data2&#34;: &#34;new value&#34; }&lt;/pre&gt;
-	Result:
	&lt;pre&gt;{ &#34;data2&#34;: &#34;new value&#34; }&lt;/pre&gt;


&lt;h2&gt;Record Metadata&lt;/h2&gt;

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name &lt;b&gt;__META&lt;/b&gt;.
When creating record, if &lt;b&gt;__META&lt;/b&gt; field is not defined, the metadata value will use the default value.
When updating record, if &lt;b&gt;__META&lt;/b&gt; field is not defined, the existing metadata value will stay as is.

&lt;b&gt;Metadata List:&lt;/b&gt;
1.	set_by (default: CLIENT, type: string)
	Indicate which party that could modify the game record.
	SERVER: record can be modified by server only.
	CLIENT: record can be modified by client and server.

&lt;b&gt;Request Body Example:&lt;/b&gt;
&lt;pre&gt;
	{
		&#34;__META&#34;: {
			&#34;set_by&#34;: &#34;SERVER&#34;
		}
		...
	}
&lt;/pre&gt;

*/
func (a *Client) AdminPutGameRecordHandlerV1(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1OK, *AdminPutGameRecordHandlerV1Unauthorized, *AdminPutGameRecordHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordHandlerV1OK:
		return v, nil, nil, nil

	case *AdminPutGameRecordHandlerV1Unauthorized:
		return nil, v, nil, nil

	case *AdminPutGameRecordHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminPutGameRecordHandlerV1Short(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminPutGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordHandlerV1OK:
		return v, nil
	case *AdminPutGameRecordHandlerV1Unauthorized:
		return nil, v
	case *AdminPutGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  ListGameRecordsHandlerV1 queries game records

  Required permission: &lt;code&gt;ADMIN:NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]&lt;/code&gt;

Required scope: &lt;code&gt;social&lt;/code&gt;

Retrieve list of records key by namespace
*/
func (a *Client) ListGameRecordsHandlerV1(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1OK, *ListGameRecordsHandlerV1Unauthorized, *ListGameRecordsHandlerV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGameRecordsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListGameRecordsHandlerV1OK:
		return v, nil, nil, nil

	case *ListGameRecordsHandlerV1Unauthorized:
		return nil, v, nil, nil

	case *ListGameRecordsHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) ListGameRecordsHandlerV1Short(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameRecordsHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGameRecordsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGameRecordsHandlerV1OK:
		return v, nil
	case *ListGameRecordsHandlerV1Unauthorized:
		return nil, v
	case *ListGameRecordsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
