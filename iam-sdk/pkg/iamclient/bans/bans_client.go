// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package bans

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
	GetBansType(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, *GetBansTypeUnauthorized, *GetBansTypeForbidden, error)
	GetBansTypeShort(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeOK, error)
	GetListBanReason(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, *GetListBanReasonUnauthorized, *GetListBanReasonForbidden, error)
	GetListBanReasonShort(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonOK, error)
	AdminGetBansTypeV3(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, *AdminGetBansTypeV3Unauthorized, *AdminGetBansTypeV3Forbidden, *AdminGetBansTypeV3InternalServerError, error)
	AdminGetBansTypeV3Short(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, error)
	AdminGetListBanReasonV3(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, *AdminGetListBanReasonV3Unauthorized, *AdminGetListBanReasonV3Forbidden, *AdminGetListBanReasonV3InternalServerError, error)
	AdminGetListBanReasonV3Short(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, error)
	AdminGetBannedUsersV3(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, *AdminGetBannedUsersV3Unauthorized, *AdminGetBannedUsersV3Forbidden, *AdminGetBannedUsersV3InternalServerError, error)
	AdminGetBannedUsersV3Short(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, error)
	AdminBanUserBulkV3(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Created, *AdminBanUserBulkV3BadRequest, *AdminBanUserBulkV3Unauthorized, *AdminBanUserBulkV3Forbidden, *AdminBanUserBulkV3NotFound, *AdminBanUserBulkV3InternalServerError, error)
	AdminBanUserBulkV3Short(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Created, error)
	AdminUnbanUserBulkV3(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Created, *AdminUnbanUserBulkV3BadRequest, *AdminUnbanUserBulkV3Unauthorized, *AdminUnbanUserBulkV3Forbidden, *AdminUnbanUserBulkV3NotFound, *AdminUnbanUserBulkV3InternalServerError, error)
	AdminUnbanUserBulkV3Short(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Created, error)
	AdminGetBansTypeWithNamespaceV3(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, *AdminGetBansTypeWithNamespaceV3Unauthorized, *AdminGetBansTypeWithNamespaceV3Forbidden, *AdminGetBansTypeWithNamespaceV3InternalServerError, error)
	AdminGetBansTypeWithNamespaceV3Short(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetBansTypeShort instead.

GetBansType get list of ban types
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans [GET]_**
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

/*
GetBansTypeShort get list of ban types
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans [GET]_**
*/
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
Deprecated: 2022-08-10 - Use GetListBanReasonShort instead.

GetListBanReason get list of ban reasons
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans/reasons [GET]_**
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

/*
GetListBanReasonShort get list of ban reasons
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans/reasons [GET]_**
*/
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

/*
Deprecated: 2022-08-10 - Use AdminGetBansTypeV3Short instead.

AdminGetBansTypeV3 get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBansTypeV3(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3OK, *AdminGetBansTypeV3Unauthorized, *AdminGetBansTypeV3Forbidden, *AdminGetBansTypeV3InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetBansTypeV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetBansTypeV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetBansTypeV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBansTypeV3Short get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
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
	case *AdminGetBansTypeV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetListBanReasonV3Short instead.

AdminGetListBanReasonV3 get list of ban reasons
Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
action code : 10202
*/
func (a *Client) AdminGetListBanReasonV3(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3OK, *AdminGetListBanReasonV3Unauthorized, *AdminGetListBanReasonV3Forbidden, *AdminGetListBanReasonV3InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListBanReasonV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetListBanReasonV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetListBanReasonV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetListBanReasonV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListBanReasonV3Short get list of ban reasons
Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
action code : 10202
*/
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
	case *AdminGetListBanReasonV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetBannedUsersV3Short instead.

AdminGetBannedUsersV3 get list of user filtered by ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBannedUsersV3(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3OK, *AdminGetBannedUsersV3Unauthorized, *AdminGetBannedUsersV3Forbidden, *AdminGetBannedUsersV3InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBannedUsersV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetBannedUsersV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetBannedUsersV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetBannedUsersV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBannedUsersV3Short get list of user filtered by ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
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
	case *AdminGetBannedUsersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminBanUserBulkV3Short instead.

AdminBanUserBulkV3 bulk ban user
Bulk ban user with specific type of ban. Ban types and reason can be queried. The maximum limit value is 100 userIDs
action code : 10141
*/
func (a *Client) AdminBanUserBulkV3(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Created, *AdminBanUserBulkV3BadRequest, *AdminBanUserBulkV3Unauthorized, *AdminBanUserBulkV3Forbidden, *AdminBanUserBulkV3NotFound, *AdminBanUserBulkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserBulkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserBulkV3Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminBanUserBulkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminBanUserBulkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminBanUserBulkV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminBanUserBulkV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminBanUserBulkV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserBulkV3Short bulk ban user
Bulk ban user with specific type of ban. Ban types and reason can be queried. The maximum limit value is 100 userIDs
action code : 10141
*/
func (a *Client) AdminBanUserBulkV3Short(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserBulkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserBulkV3Created:
		return v, nil
	case *AdminBanUserBulkV3BadRequest:
		return nil, v
	case *AdminBanUserBulkV3Unauthorized:
		return nil, v
	case *AdminBanUserBulkV3Forbidden:
		return nil, v
	case *AdminBanUserBulkV3NotFound:
		return nil, v
	case *AdminBanUserBulkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUnbanUserBulkV3Short instead.

AdminUnbanUserBulkV3 bulk unban user
disable bulk ban user. The maximum limit value is 100
action code : 10142
*/
func (a *Client) AdminUnbanUserBulkV3(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Created, *AdminUnbanUserBulkV3BadRequest, *AdminUnbanUserBulkV3Unauthorized, *AdminUnbanUserBulkV3Forbidden, *AdminUnbanUserBulkV3NotFound, *AdminUnbanUserBulkV3InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanUserBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUnbanUserBulkV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users/disabled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanUserBulkV3Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUnbanUserBulkV3BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUnbanUserBulkV3Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUnbanUserBulkV3Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUnbanUserBulkV3NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUnbanUserBulkV3InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanUserBulkV3Short bulk unban user
disable bulk ban user. The maximum limit value is 100
action code : 10142
*/
func (a *Client) AdminUnbanUserBulkV3Short(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanUserBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUnbanUserBulkV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users/disabled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanUserBulkV3Created:
		return v, nil
	case *AdminUnbanUserBulkV3BadRequest:
		return nil, v
	case *AdminUnbanUserBulkV3Unauthorized:
		return nil, v
	case *AdminUnbanUserBulkV3Forbidden:
		return nil, v
	case *AdminUnbanUserBulkV3NotFound:
		return nil, v
	case *AdminUnbanUserBulkV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetBansTypeWithNamespaceV3Short instead.

AdminGetBansTypeWithNamespaceV3 get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBansTypeWithNamespaceV3(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3OK, *AdminGetBansTypeWithNamespaceV3Unauthorized, *AdminGetBansTypeWithNamespaceV3Forbidden, *AdminGetBansTypeWithNamespaceV3InternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeWithNamespaceV3OK:
		return v, nil, nil, nil, nil

	case *AdminGetBansTypeWithNamespaceV3Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetBansTypeWithNamespaceV3Forbidden:
		return nil, nil, v, nil, nil

	case *AdminGetBansTypeWithNamespaceV3InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBansTypeWithNamespaceV3Short get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
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
	case *AdminGetBansTypeWithNamespaceV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
