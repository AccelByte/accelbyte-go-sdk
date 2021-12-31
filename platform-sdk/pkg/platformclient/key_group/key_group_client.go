// Code generated by go-swagger; DO NOT EDIT.

package key_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	CreateKeyGroup(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, *CreateKeyGroupConflict, *CreateKeyGroupUnprocessableEntity, error)
	CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, error)
	GetKeyGroup(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, *GetKeyGroupNotFound, error)
	GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, error)
	GetKeyGroupDynamic(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, *GetKeyGroupDynamicNotFound, error)
	GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, error)
	ListKeys(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error)
	ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error)
	QueryKeyGroups(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error)
	QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error)
	UpdateKeyGroup(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, *UpdateKeyGroupNotFound, *UpdateKeyGroupConflict, *UpdateKeyGroupUnprocessableEntity, error)
	UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, error)
	UploadKeys(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, *UploadKeysBadRequest, *UploadKeysNotFound, error)
	UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CreateKeyGroup creates key group

  Create key group.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: created key group&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) CreateKeyGroup(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, *CreateKeyGroupConflict, *CreateKeyGroupUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createKeyGroup",
		Method:             "POST",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups",
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

func (a *Client) CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createKeyGroup",
		Method:             "POST",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups",
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
  GetKeyGroup gets key group

  Get key group.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: key group info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetKeyGroup(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, *GetKeyGroupNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroup",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
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

func (a *Client) GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroup",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
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
  GetKeyGroupDynamic gets key group dynamic

  Get key group dynamic.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: key group info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetKeyGroupDynamic(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, *GetKeyGroupDynamicNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroupDynamic",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic",
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

func (a *Client) GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupDynamicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getKeyGroupDynamic",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic",
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
  ListKeys lists keys of a key group

  This API is used to list keys of a key group.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: keys&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) ListKeys(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listKeys",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
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

func (a *Client) ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listKeys",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
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
  QueryKeyGroups queries key groups

  Query key groups, if name is presented, it&#39;s fuzzy match.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: slice of key group&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) QueryKeyGroups(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryKeyGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryKeyGroups",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups",
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

func (a *Client) QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryKeyGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryKeyGroups",
		Method:             "GET",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups",
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
  UpdateKeyGroup updates key group

  Update key group.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated key group&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UpdateKeyGroup(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, *UpdateKeyGroupNotFound, *UpdateKeyGroupConflict, *UpdateKeyGroupUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateKeyGroup",
		Method:             "PUT",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
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

func (a *Client) UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateKeyGroup",
		Method:             "PUT",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
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
  UploadKeys uploads keys to key group

  This API is used to upload keys with csv format to a key group.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:KEYGROUP&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: item data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UploadKeys(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, *UploadKeysBadRequest, *UploadKeysNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uploadKeys",
		Method:             "POST",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
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

func (a *Client) UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadKeysParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uploadKeys",
		Method:             "POST",
		PathPattern:        "/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
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