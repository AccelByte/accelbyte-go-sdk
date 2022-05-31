// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package d_l_c

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new d l c API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for d l c API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeleteDLCItemConfig(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error)
	DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error)
	DeletePlatformDLCConfig(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error)
	DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error)
	GetDLCItemConfig(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, *GetDLCItemConfigNotFound, error)
	GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, error)
	GetPlatformDLCConfig(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, *GetPlatformDLCConfigNotFound, error)
	GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, error)
	PublicSyncPsnDlcInventory(params *PublicSyncPsnDlcInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDlcInventoryNoContent, error)
	PublicSyncPsnDlcInventoryShort(params *PublicSyncPsnDlcInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDlcInventoryNoContent, error)
	SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, error)
	SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, error)
	SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error)
	SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error)
	UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigUnprocessableEntity, error)
	UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, error)
	UpdatePlatformDLCConfig(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, *UpdatePlatformDLCConfigUnprocessableEntity, error)
	UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  DeleteDLCItemConfig deletes a d l c item config

  delete a DLC item config.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;&lt;/b&gt;, action=8 &lt;b&gt;(DELETE)&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) DeleteDLCItemConfig(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteDLCItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDLCItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteDLCItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDLCItemConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  DeletePlatformDLCConfig deletes a platform d l c config

  delete a Platform DLC config.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;&lt;/b&gt;, action=8 &lt;b&gt;(DELETE)&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) DeletePlatformDLCConfig(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlatformDLCConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlatformDLCConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlatformDLCConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlatformDLCConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetDLCItemConfig gets d l c item config

  Get DLC item config.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;&lt;/b&gt;, action=2 &lt;b&gt;(READ)&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetDLCItemConfig(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, *GetDLCItemConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDLCItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigOK:
		return v, nil, nil

	case *GetDLCItemConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDLCItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigOK:
		return v, nil
	case *GetDLCItemConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetPlatformDLCConfig gets platform d l c config

  Get Platform DLC config.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;&lt;/b&gt;, action=2 &lt;b&gt;(READ)&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetPlatformDLCConfig(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, *GetPlatformDLCConfigNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformDLCConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPlatformDLCConfigOK:
		return v, nil, nil

	case *GetPlatformDLCConfigNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlatformDLCConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformDLCConfigOK:
		return v, nil
	case *GetPlatformDLCConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicSyncPsnDlcInventory synchronizes with dlc entitlements in p s n store

  Synchronize with dlc entitlements in PSN Store.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: result of synchronization&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicSyncPsnDlcInventory(params *PublicSyncPsnDlcInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDlcInventoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDlcInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDlcInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDlcInventoryNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicSyncPsnDlcInventoryShort(params *PublicSyncPsnDlcInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDlcInventoryNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDlcInventoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSyncPsnDlcInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDlcInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDlcInventoryNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SyncSteamDLC syncs steam dlc

  Sync steam dlc.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: &lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) SyncSteamDLC(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, *SyncSteamDLCBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		return v, nil, nil

	case *SyncSteamDLCBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncSteamDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		return v, nil
	case *SyncSteamDLCBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SyncXboxDLC syncs xbox dlc items

  Sync Xbox inventory&#39;s dlc items.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=NAMESPACE:{namespace}:USER:{userId}:DLC, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: &lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) SyncXboxDLC(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncXboxDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxDLCParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncXboxDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdateDLCItemConfig updates d l c item config

  Update DLC item config. Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated DLC item config&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UpdateDLCItemConfig(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, *UpdateDLCItemConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateDLCItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		return v, nil, nil

	case *UpdateDLCItemConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDLCItemConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateDLCItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		return v, nil
	case *UpdateDLCItemConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UpdatePlatformDLCConfig updates platform d l c config

  Update Platform DLC config. Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:DLC:CONFIG&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated Platform DLC config&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UpdatePlatformDLCConfig(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, *UpdatePlatformDLCConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformDLCConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformDLCConfigOK:
		return v, nil, nil

	case *UpdatePlatformDLCConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformDLCConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePlatformDLCConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformDLCConfigOK:
		return v, nil
	case *UpdatePlatformDLCConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
