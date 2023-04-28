// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListGroupConfigurationAdminV1(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1OK, *ListGroupConfigurationAdminV1BadRequest, *ListGroupConfigurationAdminV1Unauthorized, *ListGroupConfigurationAdminV1Forbidden, *ListGroupConfigurationAdminV1NotFound, *ListGroupConfigurationAdminV1InternalServerError, error)
	ListGroupConfigurationAdminV1Short(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1OK, error)
	CreateGroupConfigurationAdminV1(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Created, *CreateGroupConfigurationAdminV1BadRequest, *CreateGroupConfigurationAdminV1Unauthorized, *CreateGroupConfigurationAdminV1Forbidden, *CreateGroupConfigurationAdminV1Conflict, *CreateGroupConfigurationAdminV1InternalServerError, error)
	CreateGroupConfigurationAdminV1Short(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Created, error)
	InitiateGroupConfigurationAdminV1(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Created, *InitiateGroupConfigurationAdminV1Unauthorized, *InitiateGroupConfigurationAdminV1Forbidden, *InitiateGroupConfigurationAdminV1Conflict, *InitiateGroupConfigurationAdminV1InternalServerError, error)
	InitiateGroupConfigurationAdminV1Short(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Created, error)
	GetGroupConfigurationAdminV1(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1OK, *GetGroupConfigurationAdminV1BadRequest, *GetGroupConfigurationAdminV1Unauthorized, *GetGroupConfigurationAdminV1Forbidden, *GetGroupConfigurationAdminV1NotFound, *GetGroupConfigurationAdminV1InternalServerError, error)
	GetGroupConfigurationAdminV1Short(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1OK, error)
	DeleteGroupConfigurationV1(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1NoContent, *DeleteGroupConfigurationV1BadRequest, *DeleteGroupConfigurationV1Unauthorized, *DeleteGroupConfigurationV1Forbidden, *DeleteGroupConfigurationV1NotFound, *DeleteGroupConfigurationV1InternalServerError, error)
	DeleteGroupConfigurationV1Short(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1NoContent, error)
	UpdateGroupConfigurationAdminV1(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1OK, *UpdateGroupConfigurationAdminV1BadRequest, *UpdateGroupConfigurationAdminV1Unauthorized, *UpdateGroupConfigurationAdminV1Forbidden, *UpdateGroupConfigurationAdminV1NotFound, *UpdateGroupConfigurationAdminV1InternalServerError, error)
	UpdateGroupConfigurationAdminV1Short(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1OK, error)
	UpdateGroupConfigurationGlobalRuleAdminV1(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1OK, *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest, *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized, *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden, *UpdateGroupConfigurationGlobalRuleAdminV1NotFound, *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError, error)
	UpdateGroupConfigurationGlobalRuleAdminV1Short(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1OK, error)
	DeleteGroupConfigurationGlobalRuleAdminV1(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1OK, *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest, *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized, *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden, *DeleteGroupConfigurationGlobalRuleAdminV1NotFound, *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError, error)
	DeleteGroupConfigurationGlobalRuleAdminV1Short(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListGroupConfigurationAdminV1Short instead.

ListGroupConfigurationAdminV1 list group configuration
Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [READ]'




This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) ListGroupConfigurationAdminV1(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1OK, *ListGroupConfigurationAdminV1BadRequest, *ListGroupConfigurationAdminV1Unauthorized, *ListGroupConfigurationAdminV1Forbidden, *ListGroupConfigurationAdminV1NotFound, *ListGroupConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListGroupConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *ListGroupConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *ListGroupConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *ListGroupConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *ListGroupConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *ListGroupConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListGroupConfigurationAdminV1Short list group configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [READ]'




This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) ListGroupConfigurationAdminV1Short(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGroupConfigurationAdminV1OK:
		return v, nil
	case *ListGroupConfigurationAdminV1BadRequest:
		return nil, v
	case *ListGroupConfigurationAdminV1Unauthorized:
		return nil, v
	case *ListGroupConfigurationAdminV1Forbidden:
		return nil, v
	case *ListGroupConfigurationAdminV1NotFound:
		return nil, v
	case *ListGroupConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateGroupConfigurationAdminV1Short instead.

CreateGroupConfigurationAdminV1 create new configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [CREATE]'




This endpoint is used to create new configuration. Before creating the configuration, make sure that member role for admin and group member are already created before.




For each of the global rule, it will be the rule detail that consists of these fields:






  * ruleAttribute : attribute of the player that needs to be checked


  * ruleCriteria : criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM


  * ruleValue : value that needs to be checked





Allowed Action can only be filled with any available action in the Group Service. For the configuration, the only value is "createGroup"




Action Code: 73103
*/
func (a *Client) CreateGroupConfigurationAdminV1(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Created, *CreateGroupConfigurationAdminV1BadRequest, *CreateGroupConfigurationAdminV1Unauthorized, *CreateGroupConfigurationAdminV1Forbidden, *CreateGroupConfigurationAdminV1Conflict, *CreateGroupConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateGroupConfigurationAdminV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateGroupConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateGroupConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateGroupConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateGroupConfigurationAdminV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateGroupConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGroupConfigurationAdminV1Short create new configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [CREATE]'




This endpoint is used to create new configuration. Before creating the configuration, make sure that member role for admin and group member are already created before.




For each of the global rule, it will be the rule detail that consists of these fields:






  * ruleAttribute : attribute of the player that needs to be checked


  * ruleCriteria : criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM


  * ruleValue : value that needs to be checked





Allowed Action can only be filled with any available action in the Group Service. For the configuration, the only value is "createGroup"




Action Code: 73103
*/
func (a *Client) CreateGroupConfigurationAdminV1Short(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGroupConfigurationAdminV1Created:
		return v, nil
	case *CreateGroupConfigurationAdminV1BadRequest:
		return nil, v
	case *CreateGroupConfigurationAdminV1Unauthorized:
		return nil, v
	case *CreateGroupConfigurationAdminV1Forbidden:
		return nil, v
	case *CreateGroupConfigurationAdminV1Conflict:
		return nil, v
	case *CreateGroupConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use InitiateGroupConfigurationAdminV1Short instead.

InitiateGroupConfigurationAdminV1 initiate configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [CREATE]'




This endpoint is used to initiate configuration. This endpoint will automatically create default configuration and member roles with default permission




Default Permission for admin role will cover these permission:






  * Permission to invite user to group


  * Permission to accept or reject join request


  * Permission to kick group member





Default max member value will be 50 and global rules will be empty




Action Code: 73104
*/
func (a *Client) InitiateGroupConfigurationAdminV1(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Created, *InitiateGroupConfigurationAdminV1Unauthorized, *InitiateGroupConfigurationAdminV1Forbidden, *InitiateGroupConfigurationAdminV1Conflict, *InitiateGroupConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInitiateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "initiateGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/initiate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InitiateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *InitiateGroupConfigurationAdminV1Created:
		return v, nil, nil, nil, nil, nil

	case *InitiateGroupConfigurationAdminV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *InitiateGroupConfigurationAdminV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *InitiateGroupConfigurationAdminV1Conflict:
		return nil, nil, nil, v, nil, nil

	case *InitiateGroupConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InitiateGroupConfigurationAdminV1Short initiate configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [CREATE]'




This endpoint is used to initiate configuration. This endpoint will automatically create default configuration and member roles with default permission




Default Permission for admin role will cover these permission:






  * Permission to invite user to group


  * Permission to accept or reject join request


  * Permission to kick group member





Default max member value will be 50 and global rules will be empty




Action Code: 73104
*/
func (a *Client) InitiateGroupConfigurationAdminV1Short(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInitiateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "initiateGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/initiate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InitiateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InitiateGroupConfigurationAdminV1Created:
		return v, nil
	case *InitiateGroupConfigurationAdminV1Unauthorized:
		return nil, v
	case *InitiateGroupConfigurationAdminV1Forbidden:
		return nil, v
	case *InitiateGroupConfigurationAdminV1Conflict:
		return nil, v
	case *InitiateGroupConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGroupConfigurationAdminV1Short instead.

GetGroupConfigurationAdminV1 get existing configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [READ]'




This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) GetGroupConfigurationAdminV1(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1OK, *GetGroupConfigurationAdminV1BadRequest, *GetGroupConfigurationAdminV1Unauthorized, *GetGroupConfigurationAdminV1Forbidden, *GetGroupConfigurationAdminV1NotFound, *GetGroupConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGroupConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetGroupConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetGroupConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetGroupConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetGroupConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetGroupConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupConfigurationAdminV1Short get existing configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [READ]'




This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) GetGroupConfigurationAdminV1Short(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupConfigurationAdminV1OK:
		return v, nil
	case *GetGroupConfigurationAdminV1BadRequest:
		return nil, v
	case *GetGroupConfigurationAdminV1Unauthorized:
		return nil, v
	case *GetGroupConfigurationAdminV1Forbidden:
		return nil, v
	case *GetGroupConfigurationAdminV1NotFound:
		return nil, v
	case *GetGroupConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupConfigurationV1Short instead.

DeleteGroupConfigurationV1 delete group configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [DELETE]'




This endpoint is used to delete group configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) DeleteGroupConfigurationV1(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1NoContent, *DeleteGroupConfigurationV1BadRequest, *DeleteGroupConfigurationV1Unauthorized, *DeleteGroupConfigurationV1Forbidden, *DeleteGroupConfigurationV1NotFound, *DeleteGroupConfigurationV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupConfigurationV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationV1NoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupConfigurationV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupConfigurationV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupConfigurationV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupConfigurationV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupConfigurationV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupConfigurationV1Short delete group configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [DELETE]'




This endpoint is used to delete group configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration




Action Code: 73101
*/
func (a *Client) DeleteGroupConfigurationV1Short(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupConfigurationV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationV1NoContent:
		return v, nil
	case *DeleteGroupConfigurationV1BadRequest:
		return nil, v
	case *DeleteGroupConfigurationV1Unauthorized:
		return nil, v
	case *DeleteGroupConfigurationV1Forbidden:
		return nil, v
	case *DeleteGroupConfigurationV1NotFound:
		return nil, v
	case *DeleteGroupConfigurationV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupConfigurationAdminV1Short instead.

UpdateGroupConfigurationAdminV1 update existing configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to update existing configuration. groupAdminRoleId and groupMemberRoleId won't be able to be updated. User can try to change the member role permission instead for each of those member role




Action Code: 73102
*/
func (a *Client) UpdateGroupConfigurationAdminV1(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1OK, *UpdateGroupConfigurationAdminV1BadRequest, *UpdateGroupConfigurationAdminV1Unauthorized, *UpdateGroupConfigurationAdminV1Forbidden, *UpdateGroupConfigurationAdminV1NotFound, *UpdateGroupConfigurationAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupConfigurationAdminV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupConfigurationAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupConfigurationAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupConfigurationAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupConfigurationAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupConfigurationAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupConfigurationAdminV1Short update existing configuration


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to update existing configuration. groupAdminRoleId and groupMemberRoleId won't be able to be updated. User can try to change the member role permission instead for each of those member role




Action Code: 73102
*/
func (a *Client) UpdateGroupConfigurationAdminV1Short(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupConfigurationAdminV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationAdminV1OK:
		return v, nil
	case *UpdateGroupConfigurationAdminV1BadRequest:
		return nil, v
	case *UpdateGroupConfigurationAdminV1Unauthorized:
		return nil, v
	case *UpdateGroupConfigurationAdminV1Forbidden:
		return nil, v
	case *UpdateGroupConfigurationAdminV1NotFound:
		return nil, v
	case *UpdateGroupConfigurationAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateGroupConfigurationGlobalRuleAdminV1Short instead.

UpdateGroupConfigurationGlobalRuleAdminV1 update existing configuration global rule


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to update existing global rule configuration based on the allowed action. It will replace the permission with the request




Action Code: 73106
*/
func (a *Client) UpdateGroupConfigurationGlobalRuleAdminV1(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1OK, *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest, *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized, *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden, *UpdateGroupConfigurationGlobalRuleAdminV1NotFound, *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationGlobalRuleAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupConfigurationGlobalRuleAdminV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationGlobalRuleAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateGroupConfigurationGlobalRuleAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupConfigurationGlobalRuleAdminV1Short update existing configuration global rule


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to update existing global rule configuration based on the allowed action. It will replace the permission with the request




Action Code: 73106
*/
func (a *Client) UpdateGroupConfigurationGlobalRuleAdminV1Short(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationGlobalRuleAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateGroupConfigurationGlobalRuleAdminV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationGlobalRuleAdminV1OK:
		return v, nil
	case *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest:
		return nil, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized:
		return nil, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden:
		return nil, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1NotFound:
		return nil, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteGroupConfigurationGlobalRuleAdminV1Short instead.

DeleteGroupConfigurationGlobalRuleAdminV1 delete existing configuration global rule based on allowed action


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to delete existing global rule configuration based on the allowed action. It will not give any error if the allowed action is not existed in the global rule




Action Code: 73105
*/
func (a *Client) DeleteGroupConfigurationGlobalRuleAdminV1(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1OK, *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest, *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized, *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden, *DeleteGroupConfigurationGlobalRuleAdminV1NotFound, *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationGlobalRuleAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupConfigurationGlobalRuleAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationGlobalRuleAdminV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteGroupConfigurationGlobalRuleAdminV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupConfigurationGlobalRuleAdminV1Short delete existing configuration global rule based on allowed action


Required permission 'ADMIN:NAMESPACE:{namespace}:GROUP:CONFIGURATION [UPDATE]'




This endpoint is used to delete existing global rule configuration based on the allowed action. It will not give any error if the allowed action is not existed in the global rule




Action Code: 73105
*/
func (a *Client) DeleteGroupConfigurationGlobalRuleAdminV1Short(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationGlobalRuleAdminV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteGroupConfigurationGlobalRuleAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationGlobalRuleAdminV1OK:
		return v, nil
	case *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest:
		return nil, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized:
		return nil, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden:
		return nil, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1NotFound:
		return nil, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
