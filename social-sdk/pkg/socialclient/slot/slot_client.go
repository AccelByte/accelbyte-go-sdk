// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package slot

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new slot API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for slot API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetSlotData(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, *GetSlotDataNotFound, error)
	GetSlotDataShort(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, error)
	GetUserNamespaceSlots(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error)
	GetUserNamespaceSlotsShort(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error)
	PublicCreateUserNamespaceSlot(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, *PublicCreateUserNamespaceSlotBadRequest, *PublicCreateUserNamespaceSlotConflict, error)
	PublicCreateUserNamespaceSlotShort(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, error)
	PublicDeleteUserNamespaceSlot(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, *PublicDeleteUserNamespaceSlotNotFound, error)
	PublicDeleteUserNamespaceSlotShort(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, error)
	PublicGetSlotData(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, *PublicGetSlotDataNotFound, error)
	PublicGetSlotDataShort(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, error)
	PublicGetUserNamespaceSlots(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error)
	PublicGetUserNamespaceSlotsShort(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error)
	PublicUpdateUserNamespaceSlot(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, *PublicUpdateUserNamespaceSlotBadRequest, *PublicUpdateUserNamespaceSlotNotFound, error)
	PublicUpdateUserNamespaceSlotShort(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, error)
	PublicUpdateUserNamespaceSlotMetadata(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, *PublicUpdateUserNamespaceSlotMetadataNotFound, error)
	PublicUpdateUserNamespaceSlotMetadataShort(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetSlotData returns slot data

  Get slot data.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: slot data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetSlotData(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, *GetSlotDataNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlotDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSlotData",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetSlotDataOK:
		return v, nil, nil

	case *GetSlotDataNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetSlotDataShort(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlotDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSlotData",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSlotDataOK:
		return v, nil
	case *GetSlotDataNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  GetUserNamespaceSlots returns list of slots for given user

  Get slots for a given user.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of slots&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetUserNamespaceSlots(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserNamespaceSlotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserNamespaceSlotsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetUserNamespaceSlotsShort(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserNamespaceSlotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserNamespaceSlotsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicCreateUserNamespaceSlot creates a slot

  Creates a slot.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: created slot info&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicCreateUserNamespaceSlot(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, *PublicCreateUserNamespaceSlotBadRequest, *PublicCreateUserNamespaceSlotConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateUserNamespaceSlot",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserNamespaceSlotCreated:
		return v, nil, nil, nil

	case *PublicCreateUserNamespaceSlotBadRequest:
		return nil, v, nil, nil

	case *PublicCreateUserNamespaceSlotConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicCreateUserNamespaceSlotShort(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCreateUserNamespaceSlot",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserNamespaceSlotCreated:
		return v, nil
	case *PublicCreateUserNamespaceSlotBadRequest:
		return nil, v
	case *PublicCreateUserNamespaceSlotConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicDeleteUserNamespaceSlot deletes the slot

  Deletes the slot.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=8 (DELETE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicDeleteUserNamespaceSlot(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, *PublicDeleteUserNamespaceSlotNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeleteUserNamespaceSlot",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteUserNamespaceSlotNoContent:
		return v, nil, nil

	case *PublicDeleteUserNamespaceSlotNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicDeleteUserNamespaceSlotShort(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeleteUserNamespaceSlot",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteUserNamespaceSlotNoContent:
		return v, nil
	case *PublicDeleteUserNamespaceSlotNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetSlotData returns slot data

  Get slot data.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: slot data&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetSlotData(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, *PublicGetSlotDataNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSlotDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetSlotData",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetSlotDataOK:
		return v, nil, nil

	case *PublicGetSlotDataNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetSlotDataShort(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSlotDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetSlotData",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetSlotDataOK:
		return v, nil
	case *PublicGetSlotDataNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetUserNamespaceSlots returns slots for given user

  Get list of slots for a given user in namespace.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of slots&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicGetUserNamespaceSlots(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserNamespaceSlotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserNamespaceSlotsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetUserNamespaceSlotsShort(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserNamespaceSlotsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserNamespaceSlotsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicUpdateUserNamespaceSlot updates a slot

  Updates a slot.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated slot&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicUpdateUserNamespaceSlot(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, *PublicUpdateUserNamespaceSlotBadRequest, *PublicUpdateUserNamespaceSlotNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserNamespaceSlot",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotOK:
		return v, nil, nil, nil

	case *PublicUpdateUserNamespaceSlotBadRequest:
		return nil, v, nil, nil

	case *PublicUpdateUserNamespaceSlotNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicUpdateUserNamespaceSlotShort(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserNamespaceSlot",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotOK:
		return v, nil
	case *PublicUpdateUserNamespaceSlotBadRequest:
		return nil, v
	case *PublicUpdateUserNamespaceSlotNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicUpdateUserNamespaceSlotMetadata updates the slot metadata

  Updates the slot metadata.&lt;br&gt;Other detail info:&lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:USER:{userId}:SLOTDATA&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated slot&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublicUpdateUserNamespaceSlotMetadata(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, *PublicUpdateUserNamespaceSlotMetadataNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotMetadataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserNamespaceSlotMetadata",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotMetadataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotMetadataOK:
		return v, nil, nil

	case *PublicUpdateUserNamespaceSlotMetadataNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicUpdateUserNamespaceSlotMetadataShort(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotMetadataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicUpdateUserNamespaceSlotMetadata",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotMetadataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotMetadataOK:
		return v, nil
	case *PublicUpdateUserNamespaceSlotMetadataNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
