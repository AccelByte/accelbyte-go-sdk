// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package key_group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new key group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for key group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryKeyGroups(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error)
	QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error)
	CreateKeyGroup(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, *CreateKeyGroupConflict, *CreateKeyGroupUnprocessableEntity, error)
	CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, error)
	GetKeyGroupByBoothName(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameOK, *GetKeyGroupByBoothNameNotFound, error)
	GetKeyGroupByBoothNameShort(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameOK, error)
	GetKeyGroup(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, *GetKeyGroupNotFound, error)
	GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, error)
	UpdateKeyGroup(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, *UpdateKeyGroupNotFound, *UpdateKeyGroupConflict, *UpdateKeyGroupUnprocessableEntity, error)
	UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, error)
	GetKeyGroupDynamic(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, *GetKeyGroupDynamicNotFound, error)
	GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, error)
	ListKeys(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error)
	ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error)
	UploadKeys(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, *UploadKeysBadRequest, *UploadKeysNotFound, error)
	UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryKeyGroupsShort instead.

QueryKeyGroups query key groups
Query key groups, if name is presented, it's fuzzy match.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : slice of key group
*/
func (a *Client) QueryKeyGroups(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryKeyGroupsParams()
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
		ID:                 "queryKeyGroups",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryKeyGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryKeyGroupsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryKeyGroupsShort query key groups
Query key groups, if name is presented, it's fuzzy match.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : slice of key group
*/
func (a *Client) QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryKeyGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryKeyGroups",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryKeyGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryKeyGroupsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateKeyGroupShort instead.

CreateKeyGroup create key group
Create key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=1 (CREATE)
  *  Returns : created key group
*/
func (a *Client) CreateKeyGroup(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, *CreateKeyGroupConflict, *CreateKeyGroupUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyGroupParams()
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
		ID:                 "createKeyGroup",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateKeyGroupCreated:
		return v, nil, nil, nil

	case *CreateKeyGroupConflict:
		return nil, v, nil, nil

	case *CreateKeyGroupUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateKeyGroupShort create key group
Create key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=1 (CREATE)
  *  Returns : created key group
*/
func (a *Client) CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createKeyGroup",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyGroupCreated:
		return v, nil
	case *CreateKeyGroupConflict:
		return nil, v
	case *CreateKeyGroupUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetKeyGroupByBoothNameShort instead.

GetKeyGroupByBoothName get key group by booth name
Get key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroupByBoothName(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameOK, *GetKeyGroupByBoothNameNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupByBoothNameParams()
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
		ID:                 "getKeyGroupByBoothName",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/byBoothName",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupByBoothNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupByBoothNameOK:
		return v, nil, nil

	case *GetKeyGroupByBoothNameNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupByBoothNameShort get key group by booth name
Get key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroupByBoothNameShort(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupByBoothNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroupByBoothName",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/byBoothName",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupByBoothNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupByBoothNameOK:
		return v, nil
	case *GetKeyGroupByBoothNameNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetKeyGroupShort instead.

GetKeyGroup get key group
Get key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroup(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, *GetKeyGroupNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupParams()
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
		ID:                 "getKeyGroup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupOK:
		return v, nil, nil

	case *GetKeyGroupNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupShort get key group
Get key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupOK:
		return v, nil
	case *GetKeyGroupNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateKeyGroupShort instead.

UpdateKeyGroup update key group
Update key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4 (UPDATE)
  *  Returns : updated key group
*/
func (a *Client) UpdateKeyGroup(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, *UpdateKeyGroupNotFound, *UpdateKeyGroupConflict, *UpdateKeyGroupUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyGroupParams()
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
		ID:                 "updateKeyGroup",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyGroupOK:
		return v, nil, nil, nil, nil

	case *UpdateKeyGroupNotFound:
		return nil, v, nil, nil, nil

	case *UpdateKeyGroupConflict:
		return nil, nil, v, nil, nil

	case *UpdateKeyGroupUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateKeyGroupShort update key group
Update key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4 (UPDATE)
  *  Returns : updated key group
*/
func (a *Client) UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateKeyGroup",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyGroupOK:
		return v, nil
	case *UpdateKeyGroupNotFound:
		return nil, v
	case *UpdateKeyGroupConflict:
		return nil, v
	case *UpdateKeyGroupUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetKeyGroupDynamicShort instead.

GetKeyGroupDynamic get key group dynamic
Get key group dynamic.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroupDynamic(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, *GetKeyGroupDynamicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupDynamicParams()
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
		ID:                 "getKeyGroupDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupDynamicOK:
		return v, nil, nil

	case *GetKeyGroupDynamicNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupDynamicShort get key group dynamic
Get key group dynamic.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : key group info
*/
func (a *Client) GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroupDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupDynamicOK:
		return v, nil
	case *GetKeyGroupDynamicNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListKeysShort instead.

ListKeys list keys of a key group
This API is used to list keys of a key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : keys
*/
func (a *Client) ListKeys(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeysParams()
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
		ID:                 "listKeys",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListKeysOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListKeysShort list keys of a key group
This API is used to list keys of a key group.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
  *  Returns : keys
*/
func (a *Client) ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listKeys",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListKeysOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UploadKeysShort instead.

UploadKeys upload keys to key group
This API is used to upload keys with csv format to a key group.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4 (UPDATE)
  *  Returns : item data
*/
func (a *Client) UploadKeys(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, *UploadKeysBadRequest, *UploadKeysNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadKeysParams()
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
		ID:                 "uploadKeys",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UploadKeysOK:
		return v, nil, nil, nil

	case *UploadKeysBadRequest:
		return nil, v, nil, nil

	case *UploadKeysNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadKeysShort upload keys to key group
This API is used to upload keys with csv format to a key group.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4 (UPDATE)
  *  Returns : item data
*/
func (a *Client) UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uploadKeys",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadKeysOK:
		return v, nil
	case *UploadKeysBadRequest:
		return nil, v
	case *UploadKeysNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
