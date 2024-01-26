// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package slot

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
	GetUserNamespaceSlots(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error)
	GetUserNamespaceSlotsShort(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsOK, error)
	GetSlotData(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, *GetSlotDataNotFound, error)
	GetSlotDataShort(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataOK, error)
	PublicGetUserNamespaceSlots(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error)
	PublicGetUserNamespaceSlotsShort(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsOK, error)
	PublicCreateUserNamespaceSlot(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, *PublicCreateUserNamespaceSlotBadRequest, *PublicCreateUserNamespaceSlotConflict, error)
	PublicCreateUserNamespaceSlotShort(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotCreated, error)
	PublicGetSlotData(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, *PublicGetSlotDataNotFound, error)
	PublicGetSlotDataShort(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataOK, error)
	PublicUpdateUserNamespaceSlot(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, *PublicUpdateUserNamespaceSlotBadRequest, *PublicUpdateUserNamespaceSlotNotFound, error)
	PublicUpdateUserNamespaceSlotShort(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotOK, error)
	PublicDeleteUserNamespaceSlot(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, *PublicDeleteUserNamespaceSlotNotFound, error)
	PublicDeleteUserNamespaceSlotShort(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotNoContent, error)
	PublicUpdateUserNamespaceSlotMetadata(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, *PublicUpdateUserNamespaceSlotMetadataNotFound, error)
	PublicUpdateUserNamespaceSlotMetadataShort(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetUserNamespaceSlotsShort instead.

GetUserNamespaceSlots returns list of slots for given user


## The endpoint is going to be deprecated


Get slots for a given user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : list of slots
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
GetUserNamespaceSlotsShort returns list of slots for given user


## The endpoint is going to be deprecated


Get slots for a given user.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : list of slots
*/
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
Deprecated: 2022-08-10 - Use GetSlotDataShort instead.

GetSlotData returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : slot data
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
GetSlotDataShort returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
              *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : slot data
*/
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
Deprecated: 2022-08-10 - Use PublicGetUserNamespaceSlotsShort instead.

PublicGetUserNamespaceSlots returns slots for given user


## The endpoint is going to be deprecated


Get list of slots for a given user in namespace.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : list of slots
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
PublicGetUserNamespaceSlotsShort returns slots for given user


## The endpoint is going to be deprecated


Get list of slots for a given user in namespace.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : list of slots
*/
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
Deprecated: 2022-08-10 - Use PublicCreateUserNamespaceSlotShort instead.

PublicCreateUserNamespaceSlot creates a slot


## The endpoint is going to be deprecated


Creates a slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=1 (CREATE)
              *  Returns : created slot info
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
PublicCreateUserNamespaceSlotShort creates a slot


## The endpoint is going to be deprecated


Creates a slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=1 (CREATE)
              *  Returns : created slot info
*/
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
Deprecated: 2022-08-10 - Use PublicGetSlotDataShort instead.

PublicGetSlotData returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : slot data
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
PublicGetSlotDataShort returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=2 (READ)
              *  Returns : slot data
*/
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
Deprecated: 2022-08-10 - Use PublicUpdateUserNamespaceSlotShort instead.

PublicUpdateUserNamespaceSlot updates a slot


## The endpoint is going to be deprecated


Updates a slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
              *  Returns : updated slot
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
PublicUpdateUserNamespaceSlotShort updates a slot


## The endpoint is going to be deprecated


Updates a slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
              *  Returns : updated slot
*/
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
Deprecated: 2022-08-10 - Use PublicDeleteUserNamespaceSlotShort instead.

PublicDeleteUserNamespaceSlot deletes the slot


## The endpoint is going to be deprecated


Deletes the slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=8 (DELETE)
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
PublicDeleteUserNamespaceSlotShort deletes the slot


## The endpoint is going to be deprecated


Deletes the slot.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=8 (DELETE)
*/
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
Deprecated: 2022-08-10 - Use PublicUpdateUserNamespaceSlotMetadataShort instead.

PublicUpdateUserNamespaceSlotMetadata updates the slot metadata


## The endpoint is going to be deprecated


Updates the slot metadata.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
              *  Returns : updated slot
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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

/*
PublicUpdateUserNamespaceSlotMetadataShort updates the slot metadata


## The endpoint is going to be deprecated


Updates the slot metadata.
Other detail info:
              *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
              *  Returns : updated slot
*/
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
