// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package app_ui

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app ui API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app ui API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListAppUI(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIOK, *ListAppUIBadRequest, *ListAppUIInternalServerError, error)
	ListAppUIShort(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIOK, error)
	CreateAppUI(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUICreated, *CreateAppUIBadRequest, *CreateAppUIConflict, *CreateAppUIInternalServerError, error)
	CreateAppUIShort(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUICreated, error)
	DeleteAppUI(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUINoContent, *DeleteAppUINotFound, *DeleteAppUIInternalServerError, error)
	DeleteAppUIShort(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUINoContent, error)
	UploadAppUIFile(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileOK, *UploadAppUIFileBadRequest, *UploadAppUIFileNotFound, *UploadAppUIFileInternalServerError, *UploadAppUIFileBadGateway, error)
	UploadAppUIFileShort(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListAppUIShort instead.

ListAppUI list all app ui instances in the namespace
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [READ]`

Retrieves a paginated list of App UI instances. Supports filtering by name and pagination using limit/offset.
*/
func (a *Client) ListAppUI(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIOK, *ListAppUIBadRequest, *ListAppUIInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAppUIParams()
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
		ID:                 "ListAppUI",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListAppUIOK:
		return v, nil, nil, nil

	case *ListAppUIBadRequest:
		return nil, v, nil, nil

	case *ListAppUIInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAppUIShort list all app ui instances in the namespace
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [READ]`

Retrieves a paginated list of App UI instances. Supports filtering by name and pagination using limit/offset.
*/
func (a *Client) ListAppUIShort(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAppUIParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListAppUI",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAppUIOK:
		return v, nil
	case *ListAppUIBadRequest:
		return nil, v
	case *ListAppUIInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateAppUIShort instead.

CreateAppUI create a new app ui instance
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [CREATE]`

Creates a new App UI configuration. The App UI can be hosted either by AccelByte (default) or externally.
*/
func (a *Client) CreateAppUI(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUICreated, *CreateAppUIBadRequest, *CreateAppUIConflict, *CreateAppUIInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppUIParams()
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
		ID:                 "CreateAppUI",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateAppUICreated:
		return v, nil, nil, nil, nil

	case *CreateAppUIBadRequest:
		return nil, v, nil, nil, nil

	case *CreateAppUIConflict:
		return nil, nil, v, nil, nil

	case *CreateAppUIInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppUIShort create a new app ui instance
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [CREATE]`

Creates a new App UI configuration. The App UI can be hosted either by AccelByte (default) or externally.
*/
func (a *Client) CreateAppUIShort(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUICreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppUIParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateAppUI",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateAppUICreated:
		return v, nil
	case *CreateAppUIBadRequest:
		return nil, v
	case *CreateAppUIConflict:
		return nil, v
	case *CreateAppUIInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAppUIShort instead.

DeleteAppUI delete an app ui instance
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [DELETE]`

Permanently deletes an App UI instance and schedules cleanup of associated S3 assets.
*/
func (a *Client) DeleteAppUI(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUINoContent, *DeleteAppUINotFound, *DeleteAppUIInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppUIParams()
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
		ID:                 "DeleteAppUI",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAppUINoContent:
		return v, nil, nil, nil

	case *DeleteAppUINotFound:
		return nil, v, nil, nil

	case *DeleteAppUIInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppUIShort delete an app ui instance
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [DELETE]`

Permanently deletes an App UI instance and schedules cleanup of associated S3 assets.
*/
func (a *Client) DeleteAppUIShort(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUINoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppUIParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAppUI",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppUINoContent:
		return v, nil
	case *DeleteAppUINotFound:
		return nil, v
	case *DeleteAppUIInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UploadAppUIFileShort instead.

UploadAppUIFile upload app ui assets as a zip file
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [UPDATE]`

Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.
*/
func (a *Client) UploadAppUIFile(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileOK, *UploadAppUIFileBadRequest, *UploadAppUIFileNotFound, *UploadAppUIFileInternalServerError, *UploadAppUIFileBadGateway, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadAppUIFileParams()
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
		ID:                 "UploadAppUIFile",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadAppUIFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UploadAppUIFileOK:
		return v, nil, nil, nil, nil, nil

	case *UploadAppUIFileBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UploadAppUIFileNotFound:
		return nil, nil, v, nil, nil, nil

	case *UploadAppUIFileInternalServerError:
		return nil, nil, nil, v, nil, nil

	case *UploadAppUIFileBadGateway:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadAppUIFileShort upload app ui assets as a zip file
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [UPDATE]`

Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.
*/
func (a *Client) UploadAppUIFileShort(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadAppUIFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UploadAppUIFile",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadAppUIFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadAppUIFileOK:
		return v, nil
	case *UploadAppUIFileBadRequest:
		return nil, v
	case *UploadAppUIFileNotFound:
		return nil, v
	case *UploadAppUIFileInternalServerError:
		return nil, v
	case *UploadAppUIFileBadGateway:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
