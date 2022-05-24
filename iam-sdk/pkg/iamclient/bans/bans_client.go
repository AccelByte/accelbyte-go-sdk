// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package bans

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new bans API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for bans API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetBannedUsersV3(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, *AdminGetBannedUsersV3Unauthorized, *AdminGetBannedUsersV3Forbidden, error)
	AdminGetBannedUsersV3Short(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, error)
	AdminGetBansTypeV3(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, *AdminGetBansTypeV3Unauthorized, *AdminGetBansTypeV3Forbidden, error)
	AdminGetBansTypeV3Short(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, error)
	AdminGetBansTypeWithNamespaceV3(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, *AdminGetBansTypeWithNamespaceV3Unauthorized, *AdminGetBansTypeWithNamespaceV3Forbidden, error)
	AdminGetBansTypeWithNamespaceV3Short(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, error)
	AdminGetListBanReasonV3(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, *AdminGetListBanReasonV3Unauthorized, *AdminGetListBanReasonV3Forbidden, error)
	AdminGetListBanReasonV3Short(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, error)
	GetBansType(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, *GetBansTypeUnauthorized, *GetBansTypeForbidden, error)
	GetBansTypeShort(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, error)
	GetListBanReason(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, *GetListBanReasonUnauthorized, *GetListBanReasonForbidden, error)
	GetListBanReasonShort(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminGetBannedUsersV3 gets list of user filtered by ban types

  Required permission &#39;ADMIN:BAN [READ]&#39; &lt;br&gt;Ban type is the code
			available for ban assignment. It is applicable globally for any namespace.  &lt;br&gt;action code : 10201
*/
func (a *Client) AdminGetBannedUsersV3(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, *AdminGetBannedUsersV3Unauthorized, *AdminGetBannedUsersV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBannedUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBannedUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBannedUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBannedUsersV3OK:
		return v, nil, nil, nil

	case *AdminGetBannedUsersV3Unauthorized:
		return nil, v, nil, nil

	case *AdminGetBannedUsersV3Forbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetBannedUsersV3Short(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBannedUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBannedUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBannedUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBannedUsersV3OK:
		return v, nil
	case *AdminGetBannedUsersV3Unauthorized:
		return nil, v
	case *AdminGetBannedUsersV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetBansTypeV3 gets list of ban types

  Required permission &#39;ADMIN:BAN [READ]&#39; &lt;br&gt;Ban type is the code
			available for ban assignment. It is applicable globally for any namespace.  &lt;br&gt;action code : 10201
*/
func (a *Client) AdminGetBansTypeV3(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, *AdminGetBansTypeV3Unauthorized, *AdminGetBansTypeV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBansTypeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeV3OK:
		return v, nil, nil, nil

	case *AdminGetBansTypeV3Unauthorized:
		return nil, v, nil, nil

	case *AdminGetBansTypeV3Forbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetBansTypeV3Short(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBansTypeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeV3OK:
		return v, nil
	case *AdminGetBansTypeV3Unauthorized:
		return nil, v
	case *AdminGetBansTypeV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetBansTypeWithNamespaceV3 gets list of ban types

  Required permission &#39;ADMIN:BAN [READ]&#39; &lt;br&gt;Ban type is the code
			available for ban assignment. It is applicable globally for any namespace.  &lt;br&gt;action code : 10201
*/
func (a *Client) AdminGetBansTypeWithNamespaceV3(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, *AdminGetBansTypeWithNamespaceV3Unauthorized, *AdminGetBansTypeWithNamespaceV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeWithNamespaceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBansTypeWithNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bantypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeWithNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeWithNamespaceV3OK:
		return v, nil, nil, nil

	case *AdminGetBansTypeWithNamespaceV3Unauthorized:
		return nil, v, nil, nil

	case *AdminGetBansTypeWithNamespaceV3Forbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetBansTypeWithNamespaceV3Short(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeWithNamespaceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBansTypeWithNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bantypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeWithNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeWithNamespaceV3OK:
		return v, nil
	case *AdminGetBansTypeWithNamespaceV3Unauthorized:
		return nil, v
	case *AdminGetBansTypeWithNamespaceV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetListBanReasonV3 gets list of ban reasons

  &lt;p&gt;Required permission &#39;ADMIN:BAN [READ]&#39;&lt;/p&gt;
Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
&lt;p&gt;action code : 10202&lt;/p&gt;
*/
func (a *Client) AdminGetListBanReasonV3(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, *AdminGetListBanReasonV3Unauthorized, *AdminGetListBanReasonV3Forbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListBanReasonV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListBanReasonV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListBanReasonV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListBanReasonV3OK:
		return v, nil, nil, nil

	case *AdminGetListBanReasonV3Unauthorized:
		return nil, v, nil, nil

	case *AdminGetListBanReasonV3Forbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetListBanReasonV3Short(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListBanReasonV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListBanReasonV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListBanReasonV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListBanReasonV3OK:
		return v, nil
	case *AdminGetListBanReasonV3Unauthorized:
		return nil, v
	case *AdminGetListBanReasonV3Forbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetBansType gets list of ban types

  &lt;p&gt;Required permission &#39;BAN:ADMIN [READ]&#39; or &#39;ADMIN:BAN [READ]&#39;&lt;/p&gt;
			&lt;p&gt;Required Permission &#39;BAN:ADMIN [READ]&#39; is going to be &lt;strong&gt;DEPRECATED&lt;/strong&gt; for security purpose.
			It is going to be deprecated on &lt;strong&gt;31 JANUARY 2019&lt;/strong&gt;, please use permission &#39;ADMIN:BAN [READ]&#39; instead.&lt;/p&gt;
*/
func (a *Client) GetBansType(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, *GetBansTypeUnauthorized, *GetBansTypeForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBansTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBansType",
		Method:             "GET",
		PathPattern:        "/iam/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBansTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetBansTypeOK:
		return v, nil, nil, nil

	case *GetBansTypeUnauthorized:
		return nil, v, nil, nil

	case *GetBansTypeForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetBansTypeShort(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBansTypeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBansType",
		Method:             "GET",
		PathPattern:        "/iam/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBansTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBansTypeOK:
		return v, nil
	case *GetBansTypeUnauthorized:
		return nil, v
	case *GetBansTypeForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetListBanReason gets list of ban reasons

  &lt;p&gt;Required permission &#39;BAN:ADMIN [READ]&#39; or &#39;ADMIN:BAN [READ]&#39;&lt;/p&gt;
			&lt;p&gt;Required Permission &#39;BAN:ADMIN [READ]&#39; is going to be &lt;strong&gt;DEPRECATED&lt;/strong&gt; for security purpose.
			It is going to be deprecated on &lt;strong&gt;31 JANUARY 2019&lt;/strong&gt;, please use permission &#39;ADMIN:BAN [READ]&#39; instead.&lt;/p&gt;
*/
func (a *Client) GetListBanReason(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, *GetListBanReasonUnauthorized, *GetListBanReasonForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListBanReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListBanReason",
		Method:             "GET",
		PathPattern:        "/iam/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListBanReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetListBanReasonOK:
		return v, nil, nil, nil

	case *GetListBanReasonUnauthorized:
		return nil, v, nil, nil

	case *GetListBanReasonForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetListBanReasonShort(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListBanReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListBanReason",
		Method:             "GET",
		PathPattern:        "/iam/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListBanReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListBanReasonOK:
		return v, nil
	case *GetListBanReasonUnauthorized:
		return nil, v
	case *GetListBanReasonForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
