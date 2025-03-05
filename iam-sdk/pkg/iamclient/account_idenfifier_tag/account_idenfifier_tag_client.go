// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package account_idenfifier_tag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new account idenfifier tag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for account idenfifier tag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryTagV3(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3OK, *AdminQueryTagV3InternalServerError, error)
	AdminQueryTagV3Short(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3OK, error)
	AdminCreateTagV3(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Created, *AdminCreateTagV3BadRequest, *AdminCreateTagV3Conflict, *AdminCreateTagV3InternalServerError, error)
	AdminCreateTagV3Short(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Created, error)
	AdminUpdateTagV3(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3OK, *AdminUpdateTagV3BadRequest, *AdminUpdateTagV3NotFound, *AdminUpdateTagV3Conflict, *AdminUpdateTagV3InternalServerError, error)
	AdminUpdateTagV3Short(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3OK, error)
	AdminDeleteTagV3(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3NoContent, *AdminDeleteTagV3NotFound, *AdminDeleteTagV3InternalServerError, error)
	AdminDeleteTagV3Short(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminQueryTagV3Short instead.

AdminQueryTagV3 query account identifier tag
Retrieve Account Identifier Tags. This endpoint allows administrators to retrieve tags that are used to identify and categorize user accounts.
Tag Name can be used for partial content search.
*/
func (a *Client) AdminQueryTagV3(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3OK, *AdminQueryTagV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTagV3Params()
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
		ID:                 "AdminQueryTagV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTagV3OK:
		return v, nil, nil

	case *AdminQueryTagV3InternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTagV3Short query account identifier tag
Retrieve Account Identifier Tags. This endpoint allows administrators to retrieve tags that are used to identify and categorize user accounts.
Tag Name can be used for partial content search.
*/
func (a *Client) AdminQueryTagV3Short(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTagV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminQueryTagV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTagV3OK:
		return v, nil
	case *AdminQueryTagV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateTagV3Short instead.

AdminCreateTagV3 create account identifier tag
Create a new Account Identifier Tag for users. This endpoint allows administrators to create tags that can be used to identify and categorize user accounts.
*/
func (a *Client) AdminCreateTagV3(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Created, *AdminCreateTagV3BadRequest, *AdminCreateTagV3Conflict, *AdminCreateTagV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagV3Params()
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
		ID:                 "AdminCreateTagV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagV3Created:
		return v, nil, nil, nil, nil

	case *AdminCreateTagV3BadRequest:
		return nil, v, nil, nil, nil

	case *AdminCreateTagV3Conflict:
		return nil, nil, v, nil, nil

	case *AdminCreateTagV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTagV3Short create account identifier tag
Create a new Account Identifier Tag for users. This endpoint allows administrators to create tags that can be used to identify and categorize user accounts.
*/
func (a *Client) AdminCreateTagV3Short(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateTagV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagV3Created:
		return v, nil
	case *AdminCreateTagV3BadRequest:
		return nil, v
	case *AdminCreateTagV3Conflict:
		return nil, v
	case *AdminCreateTagV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateTagV3Short instead.

AdminUpdateTagV3 update account identifier tag
Update an existing Account Identifier Tag. This endpoint allows administrators to update the details of a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminUpdateTagV3(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3OK, *AdminUpdateTagV3BadRequest, *AdminUpdateTagV3NotFound, *AdminUpdateTagV3Conflict, *AdminUpdateTagV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTagV3Params()
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
		ID:                 "AdminUpdateTagV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTagV3OK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateTagV3BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateTagV3NotFound:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateTagV3Conflict:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateTagV3InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTagV3Short update account identifier tag
Update an existing Account Identifier Tag. This endpoint allows administrators to update the details of a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminUpdateTagV3Short(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTagV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateTagV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTagV3OK:
		return v, nil
	case *AdminUpdateTagV3BadRequest:
		return nil, v
	case *AdminUpdateTagV3NotFound:
		return nil, v
	case *AdminUpdateTagV3Conflict:
		return nil, v
	case *AdminUpdateTagV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteTagV3Short instead.

AdminDeleteTagV3 delete account identifier tag
Delete an Account Identifier Tag. This endpoint allows administrators to delete a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminDeleteTagV3(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3NoContent, *AdminDeleteTagV3NotFound, *AdminDeleteTagV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagV3Params()
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
		ID:                 "AdminDeleteTagV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagV3NoContent:
		return v, nil, nil, nil

	case *AdminDeleteTagV3NotFound:
		return nil, v, nil, nil

	case *AdminDeleteTagV3InternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagV3Short delete account identifier tag
Delete an Account Identifier Tag. This endpoint allows administrators to delete a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminDeleteTagV3Short(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteTagV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagV3NoContent:
		return v, nil
	case *AdminDeleteTagV3NotFound:
		return nil, v
	case *AdminDeleteTagV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
