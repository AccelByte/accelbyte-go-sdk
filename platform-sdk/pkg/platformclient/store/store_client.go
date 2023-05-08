// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package store

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new store API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for store API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListStores(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error)
	ListStoresShort(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error)
	CreateStore(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, *CreateStoreConflict, *CreateStoreUnprocessableEntity, error)
	CreateStoreShort(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, error)
	ImportStore(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, *ImportStoreBadRequest, *ImportStoreNotFound, error)
	ImportStoreShort(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, error)
	GetPublishedStore(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, *GetPublishedStoreNotFound, error)
	GetPublishedStoreShort(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, error)
	DeletePublishedStore(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, *DeletePublishedStoreNotFound, error)
	DeletePublishedStoreShort(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, error)
	GetPublishedStoreBackup(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, *GetPublishedStoreBackupNotFound, error)
	GetPublishedStoreBackupShort(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, error)
	RollbackPublishedStore(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, *RollbackPublishedStoreNotFound, error)
	RollbackPublishedStoreShort(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, error)
	GetStore(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, *GetStoreNotFound, error)
	GetStoreShort(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, error)
	UpdateStore(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, *UpdateStoreNotFound, *UpdateStoreConflict, *UpdateStoreUnprocessableEntity, error)
	UpdateStoreShort(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, error)
	DeleteStore(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, *DeleteStoreNotFound, *DeleteStoreConflict, error)
	DeleteStoreShort(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, error)
	CloneStore(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, *CloneStoreBadRequest, *CloneStoreNotFound, error)
	CloneStoreShort(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, error)
	ExportStore(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, *ExportStoreNotFound, error)
	ExportStoreShort(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, error)
	PublicListStores(params *PublicListStoresParams) (*PublicListStoresOK, error)
	PublicListStoresShort(params *PublicListStoresParams) (*PublicListStoresOK, error)
	ImportStore1(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, *ImportStore1BadRequest, *ImportStore1NotFound, error)
	ImportStore1Short(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, error)
	ExportStore1(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, *ExportStore1NotFound, error)
	ExportStore1Short(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListStoresShort instead.

ListStores list stores
This API is used to list stores in a namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : the list of stores
*/
func (a *Client) ListStores(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListStoresParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listStores",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListStoresReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListStoresShort list stores
This API is used to list stores in a namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : the list of stores
*/
func (a *Client) ListStoresShort(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListStoresParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listStores",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListStoresReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateStoreShort instead.

CreateStore create a store
This API is used to create a non published store in a namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : created store data
*/
func (a *Client) CreateStore(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, *CreateStoreConflict, *CreateStoreUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStore",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateStoreCreated:
		return v, nil, nil, nil

	case *CreateStoreConflict:
		return nil, v, nil, nil

	case *CreateStoreUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStoreShort create a store
This API is used to create a non published store in a namespace.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : created store data
*/
func (a *Client) CreateStoreShort(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createStore",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStoreCreated:
		return v, nil
	case *CreateStoreConflict:
		return nil, v
	case *CreateStoreUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportStoreShort instead.

ImportStore import a store
This API is used to import a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
*/
func (a *Client) ImportStore(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, *ImportStoreBadRequest, *ImportStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportStoreOK:
		return v, nil, nil, nil

	case *ImportStoreBadRequest:
		return nil, v, nil, nil

	case *ImportStoreNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStoreShort import a store
This API is used to import a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
*/
func (a *Client) ImportStoreShort(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStoreOK:
		return v, nil
	case *ImportStoreBadRequest:
		return nil, v
	case *ImportStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPublishedStoreShort instead.

GetPublishedStore get published store
This API is used to get a published store basic info, exclude category and item information.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store data
*/
func (a *Client) GetPublishedStore(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, *GetPublishedStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublishedStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreOK:
		return v, nil, nil

	case *GetPublishedStoreNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublishedStoreShort get published store
This API is used to get a published store basic info, exclude category and item information.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store data
*/
func (a *Client) GetPublishedStoreShort(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublishedStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreOK:
		return v, nil
	case *GetPublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePublishedStoreShort instead.

DeletePublishedStore delete published store
This API is used to delete published store including category and items before release to public.

 Warning: Please do not use this API once published to public user.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) DeletePublishedStore(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, *DeletePublishedStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePublishedStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePublishedStoreOK:
		return v, nil, nil

	case *DeletePublishedStoreNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePublishedStoreShort delete published store
This API is used to delete published store including category and items before release to public.

 Warning: Please do not use this API once published to public user.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) DeletePublishedStoreShort(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePublishedStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePublishedStoreOK:
		return v, nil
	case *DeletePublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPublishedStoreBackupShort instead.

GetPublishedStoreBackup get a published store's backup
This API is used to get a store's backup.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store backup info
*/
func (a *Client) GetPublishedStoreBackup(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, *GetPublishedStoreBackupNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreBackupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublishedStoreBackup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/backup",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreBackupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreBackupOK:
		return v, nil, nil

	case *GetPublishedStoreBackupNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublishedStoreBackupShort get a published store's backup
This API is used to get a store's backup.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store backup info
*/
func (a *Client) GetPublishedStoreBackupShort(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreBackupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPublishedStoreBackup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/backup",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreBackupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreBackupOK:
		return v, nil
	case *GetPublishedStoreBackupNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RollbackPublishedStoreShort instead.

RollbackPublishedStore rollback a published store
This API is used to rollback a published store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated store info
*/
func (a *Client) RollbackPublishedStore(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, *RollbackPublishedStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackPublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "rollbackPublishedStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/rollback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RollbackPublishedStoreOK:
		return v, nil, nil

	case *RollbackPublishedStoreNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackPublishedStoreShort rollback a published store
This API is used to rollback a published store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated store info
*/
func (a *Client) RollbackPublishedStoreShort(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackPublishedStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "rollbackPublishedStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/rollback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackPublishedStoreOK:
		return v, nil
	case *RollbackPublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetStoreShort instead.

GetStore get a store
This API is used to get a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store data
*/
func (a *Client) GetStore(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, *GetStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetStoreOK:
		return v, nil, nil

	case *GetStoreNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStoreShort get a store
This API is used to get a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : store data
*/
func (a *Client) GetStoreShort(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStoreOK:
		return v, nil
	case *GetStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateStoreShort instead.

UpdateStore update a store
This API is used to Update a store basic info.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated store data
*/
func (a *Client) UpdateStore(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, *UpdateStoreNotFound, *UpdateStoreConflict, *UpdateStoreUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateStoreOK:
		return v, nil, nil, nil, nil

	case *UpdateStoreNotFound:
		return nil, v, nil, nil, nil

	case *UpdateStoreConflict:
		return nil, nil, v, nil, nil

	case *UpdateStoreUnprocessableEntity:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStoreShort update a store
This API is used to Update a store basic info.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated store data
*/
func (a *Client) UpdateStoreShort(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStoreOK:
		return v, nil
	case *UpdateStoreNotFound:
		return nil, v
	case *UpdateStoreConflict:
		return nil, v
	case *UpdateStoreUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteStoreShort instead.

DeleteStore delete a store
This API is used to delete a store. Only non published store can be deleted.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
  *  Returns : store
*/
func (a *Client) DeleteStore(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, *DeleteStoreNotFound, *DeleteStoreConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteStoreOK:
		return v, nil, nil, nil

	case *DeleteStoreNotFound:
		return nil, v, nil, nil

	case *DeleteStoreConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStoreShort delete a store
This API is used to delete a store. Only non published store can be deleted.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
  *  Returns : store
*/
func (a *Client) DeleteStoreShort(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStoreOK:
		return v, nil
	case *DeleteStoreNotFound:
		return nil, v
	case *DeleteStoreConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CloneStoreShort instead.

CloneStore clone a store
This API is used to clone a store. Usually clone a draft store to published store because published store can't directly edit content.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : clone store info
*/
func (a *Client) CloneStore(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, *CloneStoreBadRequest, *CloneStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "cloneStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CloneStoreOK:
		return v, nil, nil, nil

	case *CloneStoreBadRequest:
		return nil, v, nil, nil

	case *CloneStoreNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CloneStoreShort clone a store
This API is used to clone a store. Usually clone a draft store to published store because published store can't directly edit content.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : clone store info
*/
func (a *Client) CloneStoreShort(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "cloneStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CloneStoreOK:
		return v, nil
	case *CloneStoreBadRequest:
		return nil, v
	case *CloneStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportStoreShort instead.

ExportStore export a store
This API is used to export a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/export to export store.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
*/
func (a *Client) ExportStore(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, *ExportStoreNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStoreReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ExportStoreOK:
		return v, nil, nil

	case *ExportStoreNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStoreShort export a store
This API is used to export a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/export to export store.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
*/
func (a *Client) ExportStoreShort(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStoreParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStoreReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStoreOK:
		return v, nil
	case *ExportStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListStoresShort instead.

PublicListStores list all stores
This API is used to list all stores in a namespace.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store)
  *  Returns : the list of stores
*/
func (a *Client) PublicListStores(params *PublicListStoresParams) (*PublicListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListStoresParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListStores",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListStoresReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListStoresShort list all stores
This API is used to list all stores in a namespace.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store)
  *  Returns : the list of stores
*/
func (a *Client) PublicListStoresShort(params *PublicListStoresParams) (*PublicListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListStoresParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListStores",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListStoresReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportStore1Short instead.

ImportStore1 import a store
This API is used to import a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
*/
func (a *Client) ImportStore1(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, *ImportStore1BadRequest, *ImportStore1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStore1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStore_1",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStore1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportStore1OK:
		return v, nil, nil, nil

	case *ImportStore1BadRequest:
		return nil, v, nil, nil

	case *ImportStore1NotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStore1Short import a store
This API is used to import a store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
*/
func (a *Client) ImportStore1Short(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStore1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importStore_1",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStore1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStore1OK:
		return v, nil
	case *ImportStore1BadRequest:
		return nil, v
	case *ImportStore1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportStore1Short instead.

ExportStore1 export a store
This API is used to export a whole or partial store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
*/
func (a *Client) ExportStore1(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, *ExportStore1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStore1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStore_1",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStore1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ExportStore1OK:
		return v, nil, nil

	case *ExportStore1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStore1Short export a store
This API is used to export a whole or partial store.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
*/
func (a *Client) ExportStore1Short(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStore1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportStore_1",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStore1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStore1OK:
		return v, nil
	case *ExportStore1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
