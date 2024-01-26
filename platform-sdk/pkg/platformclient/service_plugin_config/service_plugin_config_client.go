// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package service_plugin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new service plugin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for service plugin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLootBoxPluginConfig(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigOK, error)
	GetLootBoxPluginConfigShort(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigOK, error)
	UpdateLootBoxPluginConfig(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigOK, *UpdateLootBoxPluginConfigUnprocessableEntity, error)
	UpdateLootBoxPluginConfigShort(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigOK, error)
	DeleteLootBoxPluginConfig(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigNoContent, error)
	DeleteLootBoxPluginConfigShort(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigNoContent, error)
	UplodLootBoxPluginConfigCert(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertOK, *UplodLootBoxPluginConfigCertUnprocessableEntity, error)
	UplodLootBoxPluginConfigCertShort(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertOK, error)
	GetLootBoxGrpcInfo(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoOK, error)
	GetLootBoxGrpcInfoShort(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoOK, error)
	GetSectionPluginConfig(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigOK, error)
	GetSectionPluginConfigShort(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigOK, error)
	UpdateSectionPluginConfig(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigOK, *UpdateSectionPluginConfigUnprocessableEntity, error)
	UpdateSectionPluginConfigShort(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigOK, error)
	DeleteSectionPluginConfig(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigNoContent, error)
	DeleteSectionPluginConfigShort(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigNoContent, error)
	UploadSectionPluginConfigCert(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertOK, *UploadSectionPluginConfigCertUnprocessableEntity, error)
	UploadSectionPluginConfigCertShort(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertOK, error)
	GetServicePluginConfig(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error)
	GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error)
	UpdateServicePluginConfig(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, *UpdateServicePluginConfigUnprocessableEntity, error)
	UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, error)
	DeleteServicePluginConfig(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error)
	DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error)
	GetRevocationPluginConfig(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigOK, error)
	GetRevocationPluginConfigShort(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigOK, error)
	UpdateRevocationPluginConfig(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigOK, *UpdateRevocationPluginConfigUnprocessableEntity, error)
	UpdateRevocationPluginConfigShort(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigOK, error)
	DeleteRevocationPluginConfig(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigNoContent, error)
	DeleteRevocationPluginConfigShort(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigNoContent, error)
	UploadRevocationPluginConfigCert(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertOK, *UploadRevocationPluginConfigCertUnprocessableEntity, error)
	UploadRevocationPluginConfigCertShort(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetLootBoxPluginConfigShort instead.

GetLootBoxPluginConfig get lootbox plugin config
Get lootbox plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetLootBoxPluginConfig(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxPluginConfigParams()
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
		ID:                 "getLootBoxPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLootBoxPluginConfigShort get lootbox plugin config
Get lootbox plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetLootBoxPluginConfigShort(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLootBoxPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLootBoxPluginConfigShort instead.

UpdateLootBoxPluginConfig update lootbox plugin config
Update lootbox plugin config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateLootBoxPluginConfig(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigOK, *UpdateLootBoxPluginConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLootBoxPluginConfigParams()
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
		ID:                 "updateLootBoxPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLootBoxPluginConfigOK:
		return v, nil, nil

	case *UpdateLootBoxPluginConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLootBoxPluginConfigShort update lootbox plugin config
Update lootbox plugin config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateLootBoxPluginConfigShort(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLootBoxPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLootBoxPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLootBoxPluginConfigOK:
		return v, nil
	case *UpdateLootBoxPluginConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteLootBoxPluginConfigShort instead.

DeleteLootBoxPluginConfig delete lootbox plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=8 (DELETE)
*/
func (a *Client) DeleteLootBoxPluginConfig(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLootBoxPluginConfigParams()
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
		ID:                 "deleteLootBoxPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLootBoxPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLootBoxPluginConfigShort delete lootbox plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=8 (DELETE)
*/
func (a *Client) DeleteLootBoxPluginConfigShort(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLootBoxPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteLootBoxPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLootBoxPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UplodLootBoxPluginConfigCertShort instead.

UplodLootBoxPluginConfigCert upload lootbox plugin custom config tls cert
Upload lootbox plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UplodLootBoxPluginConfigCert(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertOK, *UplodLootBoxPluginConfigCertUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUplodLootBoxPluginConfigCertParams()
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
		ID:                 "uplodLootBoxPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UplodLootBoxPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UplodLootBoxPluginConfigCertOK:
		return v, nil, nil

	case *UplodLootBoxPluginConfigCertUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UplodLootBoxPluginConfigCertShort upload lootbox plugin custom config tls cert
Upload lootbox plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UplodLootBoxPluginConfigCertShort(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUplodLootBoxPluginConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uplodLootBoxPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UplodLootBoxPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UplodLootBoxPluginConfigCertOK:
		return v, nil
	case *UplodLootBoxPluginConfigCertUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLootBoxGrpcInfoShort instead.

GetLootBoxGrpcInfo get lootbox plugin grpc info
Get lootbox plugin gRPC info.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetLootBoxGrpcInfo(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxGrpcInfoParams()
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
		ID:                 "getLootBoxGrpcInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/grpcInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxGrpcInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxGrpcInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLootBoxGrpcInfoShort get lootbox plugin grpc info
Get lootbox plugin gRPC info.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetLootBoxGrpcInfoShort(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxGrpcInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLootBoxGrpcInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/grpcInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxGrpcInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxGrpcInfoOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSectionPluginConfigShort instead.

GetSectionPluginConfig get section plugin config
Get section plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetSectionPluginConfig(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionPluginConfigParams()
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
		ID:                 "getSectionPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSectionPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSectionPluginConfigShort get section plugin config
Get section plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG , action=2 (READ)
*/
func (a *Client) GetSectionPluginConfigShort(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSectionPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSectionPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSectionPluginConfigShort instead.

UpdateSectionPluginConfig update section plugin config
Update section config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateSectionPluginConfig(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigOK, *UpdateSectionPluginConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionPluginConfigParams()
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
		ID:                 "updateSectionPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionPluginConfigOK:
		return v, nil, nil

	case *UpdateSectionPluginConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSectionPluginConfigShort update section plugin config
Update section config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateSectionPluginConfigShort(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateSectionPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionPluginConfigOK:
		return v, nil
	case *UpdateSectionPluginConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSectionPluginConfigShort instead.

DeleteSectionPluginConfig delete section plugin config
Delete section plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=8 (DELETE)
*/
func (a *Client) DeleteSectionPluginConfig(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionPluginConfigParams()
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
		ID:                 "deleteSectionPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSectionPluginConfigShort delete section plugin config
Delete section plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=8 (DELETE)
*/
func (a *Client) DeleteSectionPluginConfigShort(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteSectionPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UploadSectionPluginConfigCertShort instead.

UploadSectionPluginConfigCert upload section plugin custom config tls cert
Upload section plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UploadSectionPluginConfigCert(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertOK, *UploadSectionPluginConfigCertUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadSectionPluginConfigCertParams()
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
		ID:                 "uploadSectionPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadSectionPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UploadSectionPluginConfigCertOK:
		return v, nil, nil

	case *UploadSectionPluginConfigCertUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadSectionPluginConfigCertShort upload section plugin custom config tls cert
Upload section plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:CATALOG, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UploadSectionPluginConfigCertShort(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadSectionPluginConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uploadSectionPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadSectionPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadSectionPluginConfigCertOK:
		return v, nil
	case *UploadSectionPluginConfigCertUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetServicePluginConfigShort instead.

GetServicePluginConfig get service plugin config
Get service plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)
*/
func (a *Client) GetServicePluginConfig(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServicePluginConfigParams()
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
		ID:                 "getServicePluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServicePluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServicePluginConfigShort get service plugin config
Get service plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN , action=2 (READ)
*/
func (a *Client) GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getServicePluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServicePluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateServicePluginConfigShort instead.

UpdateServicePluginConfig update service plugin config service
Update catalog config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateServicePluginConfig(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, *UpdateServicePluginConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServicePluginConfigParams()
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
		ID:                 "updateServicePluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateServicePluginConfigOK:
		return v, nil, nil

	case *UpdateServicePluginConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateServicePluginConfigShort update service plugin config service
Update catalog config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateServicePluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateServicePluginConfigOK:
		return v, nil
	case *UpdateServicePluginConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteServicePluginConfigShort instead.

DeleteServicePluginConfig delete service plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)
*/
func (a *Client) DeleteServicePluginConfig(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServicePluginConfigParams()
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
		ID:                 "deleteServicePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServicePluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServicePluginConfigShort delete service plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:CONFIG:SERVICEPLUGIN, action=8 (DELETE)
*/
func (a *Client) DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServicePluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteServicePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServicePluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetRevocationPluginConfigShort instead.

GetRevocationPluginConfig get revocation plugin config
Get revocation plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION , action=2 (READ)
*/
func (a *Client) GetRevocationPluginConfig(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationPluginConfigParams()
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
		ID:                 "getRevocationPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationPluginConfigShort get revocation plugin config
Get revocation plugin config.
Other detail info:

  * Required permission : resource= ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION , action=2 (READ)
*/
func (a *Client) GetRevocationPluginConfigShort(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getRevocationPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationPluginConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRevocationPluginConfigShort instead.

UpdateRevocationPluginConfig update revocation plugin config
Update revocation plugin config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateRevocationPluginConfig(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigOK, *UpdateRevocationPluginConfigUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationPluginConfigParams()
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
		ID:                 "updateRevocationPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationPluginConfigOK:
		return v, nil, nil

	case *UpdateRevocationPluginConfigUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRevocationPluginConfigShort update revocation plugin config
Update revocation plugin config. Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UpdateRevocationPluginConfigShort(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateRevocationPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationPluginConfigOK:
		return v, nil
	case *UpdateRevocationPluginConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRevocationPluginConfigShort instead.

DeleteRevocationPluginConfig delete revocation plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=8 (DELETE)
*/
func (a *Client) DeleteRevocationPluginConfig(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationPluginConfigParams()
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
		ID:                 "deleteRevocationPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRevocationPluginConfigShort delete revocation plugin config
Delete service plugin config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=8 (DELETE)
*/
func (a *Client) DeleteRevocationPluginConfigShort(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationPluginConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteRevocationPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationPluginConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UploadRevocationPluginConfigCertShort instead.

UploadRevocationPluginConfigCert upload revocation plugin custom config tls cert
Upload revocation plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UploadRevocationPluginConfigCert(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertOK, *UploadRevocationPluginConfigCertUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadRevocationPluginConfigCertParams()
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
		ID:                 "uploadRevocationPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadRevocationPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UploadRevocationPluginConfigCertOK:
		return v, nil, nil

	case *UploadRevocationPluginConfigCertUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadRevocationPluginConfigCertShort upload revocation plugin custom config tls cert
Upload revocation plugin custom config tls cert.Other detail info:
  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:PLUGIN:REVOCATION, action=4 (UPDATE)
  *  Returns : updated service plugin config
*/
func (a *Client) UploadRevocationPluginConfigCertShort(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadRevocationPluginConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "uploadRevocationPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadRevocationPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadRevocationPluginConfigCertOK:
		return v, nil
	case *UploadRevocationPluginConfigCertUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
