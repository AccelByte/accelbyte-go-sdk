// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public_game_record

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	DeleteGameRecordHandlerV1(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, *DeleteGameRecordHandlerV1BadRequest, *DeleteGameRecordHandlerV1Unauthorized, *DeleteGameRecordHandlerV1InternalServerError, error)
	DeleteGameRecordHandlerV1Short(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, error)
	GetGameRecordHandlerV1(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, *GetGameRecordHandlerV1Unauthorized, *GetGameRecordHandlerV1NotFound, *GetGameRecordHandlerV1InternalServerError, error)
	GetGameRecordHandlerV1Short(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, error)
	PostGameRecordHandlerV1(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, *PostGameRecordHandlerV1BadRequest, *PostGameRecordHandlerV1InternalServerError, error)
	PostGameRecordHandlerV1Short(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, error)
	PutGameRecordHandlerV1(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, *PutGameRecordHandlerV1BadRequest, *PutGameRecordHandlerV1InternalServerError, error)
	PutGameRecordHandlerV1Short(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  DeleteGameRecordHandlerV1 deletes game record

  &lt;table&gt;
	&lt;tr&gt;
		&lt;td&gt;Required Permission&lt;/td&gt;
		&lt;td&gt;&lt;code&gt;NAMESPACE:{namespace}:CLOUDSAVE:RECORD [DELETE]&lt;/code&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;Required Scope&lt;/td&gt;
		&lt;td&gt;&lt;code&gt;social&lt;/code&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;br/&gt;

Delete records by its key

*/
func (a *Client) DeleteGameRecordHandlerV1(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1NoContent, *DeleteGameRecordHandlerV1BadRequest, *DeleteGameRecordHandlerV1Unauthorized, *DeleteGameRecordHandlerV1InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordHandlerV1NoContent:
		return v, nil, nil, nil, nil

	case *DeleteGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil, nil

	case *DeleteGameRecordHandlerV1Unauthorized:
		return nil, nil, v, nil, nil

	case *DeleteGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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
	case *DeleteGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetGameRecordHandlerV1 gets game record

  &lt;table&gt;
	&lt;tr&gt;
		&lt;td&gt;Required Permission&lt;/td&gt;
		&lt;td&gt;&lt;code&gt;NAMESPACE:{namespace}:CLOUDSAVE:RECORD [READ]&lt;/code&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;Required Scope&lt;/td&gt;
		&lt;td&gt;&lt;code&gt;social&lt;/code&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;br/&gt;
Get game record by its key.

*/
func (a *Client) GetGameRecordHandlerV1(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1OK, *GetGameRecordHandlerV1Unauthorized, *GetGameRecordHandlerV1NotFound, *GetGameRecordHandlerV1InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordHandlerV1OK:
		return v, nil, nil, nil, nil

	case *GetGameRecordHandlerV1Unauthorized:
		return nil, v, nil, nil, nil

	case *GetGameRecordHandlerV1NotFound:
		return nil, nil, v, nil, nil

	case *GetGameRecordHandlerV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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
	case *GetGameRecordHandlerV1Unauthorized:
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
  PostGameRecordHandlerV1 creates or append game record

  Required permission: &lt;code&gt;NAMESPACE:{namespace}:CLOUDSAVE:RECORD [CREATE]&lt;/code&gt;
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



&lt;h2&gt;Reserved Word&lt;/h2&gt;

Reserved Word List: &lt;b&gt;__META&lt;/b&gt;

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.

*/
func (a *Client) PostGameRecordHandlerV1(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Created, *PostGameRecordHandlerV1BadRequest, *PostGameRecordHandlerV1InternalServerError, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PostGameRecordHandlerV1Created:
		return v, nil, nil, nil

	case *PostGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil

	case *PostGameRecordHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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
	case *PostGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PutGameRecordHandlerV1 creates or replace game record

  Required permission: &lt;code&gt;NAMESPACE:{namespace}:CLOUDSAVE:RECORD [UPDATE]&lt;/code&gt;
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



&lt;h2&gt;Reserved Word&lt;/h2&gt;

Reserved Word List: &lt;b&gt;__META&lt;/b&gt;

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.

*/
func (a *Client) PutGameRecordHandlerV1(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1OK, *PutGameRecordHandlerV1BadRequest, *PutGameRecordHandlerV1InternalServerError, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordHandlerV1OK:
		return v, nil, nil, nil

	case *PutGameRecordHandlerV1BadRequest:
		return nil, v, nil, nil

	case *PutGameRecordHandlerV1InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

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
	case *PutGameRecordHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
