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
	GetAdminEmailConfiguration(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, *GetAdminEmailConfigurationUnauthorized, *GetAdminEmailConfigurationInternalServerError, error)
	GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, error)
	UpdateAdminEmailConfiguration(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, *UpdateAdminEmailConfigurationBadRequest, *UpdateAdminEmailConfigurationUnauthorized, *UpdateAdminEmailConfigurationInternalServerError, error)
	UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, error)
	SaveAdminEmailConfiguration(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, *SaveAdminEmailConfigurationBadRequest, *SaveAdminEmailConfigurationUnauthorized, *SaveAdminEmailConfigurationInternalServerError, error)
	SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, error)
	DeleteAdminEmailConfiguration(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, *DeleteAdminEmailConfigurationBadRequest, *DeleteAdminEmailConfigurationUnauthorized, *DeleteAdminEmailConfigurationForbidden, *DeleteAdminEmailConfigurationNotFound, *DeleteAdminEmailConfigurationInternalServerError, error)
	DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, error)
	AdminGetServicesConfiguration(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, *AdminGetServicesConfigurationUnauthorized, *AdminGetServicesConfigurationNotFound, *AdminGetServicesConfigurationInternalServerError, error)
	AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, error)
	AdminUpdateServicesConfiguration(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, *AdminUpdateServicesConfigurationBadRequest, *AdminUpdateServicesConfigurationUnauthorized, *AdminUpdateServicesConfigurationInternalServerError, error)
	AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, error)
	AdminResetServicesConfiguration(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, *AdminResetServicesConfigurationUnauthorized, *AdminResetServicesConfigurationInternalServerError, error)
	AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetAdminEmailConfigurationShort instead.

GetAdminEmailConfiguration get admin email addresses configuration
Get list of admin email address configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]` and scope `account`
*/
func (a *Client) GetAdminEmailConfiguration(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, *GetAdminEmailConfigurationUnauthorized, *GetAdminEmailConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminEmailConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAdminEmailConfigurationOK:
		return v, nil, nil, nil

	case *GetAdminEmailConfigurationUnauthorized:
		return nil, v, nil, nil

	case *GetAdminEmailConfigurationInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminEmailConfigurationShort get admin email addresses configuration
Get list of admin email address configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]` and scope `account`
*/
func (a *Client) GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminEmailConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminEmailConfigurationOK:
		return v, nil
	case *GetAdminEmailConfigurationUnauthorized:
		return nil, v
	case *GetAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateAdminEmailConfigurationShort instead.

UpdateAdminEmailConfiguration update admin email address configuration
Update admin email address for receiving personal data request notification.

Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]`
*/
func (a *Client) UpdateAdminEmailConfiguration(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, *UpdateAdminEmailConfigurationBadRequest, *UpdateAdminEmailConfigurationUnauthorized, *UpdateAdminEmailConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateAdminEmailConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateAdminEmailConfigurationNoContent:
		return v, nil, nil, nil, nil

	case *UpdateAdminEmailConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateAdminEmailConfigurationUnauthorized:
		return nil, nil, v, nil, nil

	case *UpdateAdminEmailConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAdminEmailConfigurationShort update admin email address configuration
Update admin email address for receiving personal data request notification.

Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]`
*/
func (a *Client) UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateAdminEmailConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAdminEmailConfigurationNoContent:
		return v, nil
	case *UpdateAdminEmailConfigurationBadRequest:
		return nil, v
	case *UpdateAdminEmailConfigurationUnauthorized:
		return nil, v
	case *UpdateAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveAdminEmailConfigurationShort instead.

SaveAdminEmailConfiguration add admin email address configuration
Add admin email address for receiving personal data request notification.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]` and scope `account`
*/
func (a *Client) SaveAdminEmailConfiguration(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, *SaveAdminEmailConfigurationBadRequest, *SaveAdminEmailConfigurationUnauthorized, *SaveAdminEmailConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveAdminEmailConfiguration",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveAdminEmailConfigurationNoContent:
		return v, nil, nil, nil, nil

	case *SaveAdminEmailConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *SaveAdminEmailConfigurationUnauthorized:
		return nil, nil, v, nil, nil

	case *SaveAdminEmailConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveAdminEmailConfigurationShort add admin email address configuration
Add admin email address for receiving personal data request notification.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]` and scope `account`
*/
func (a *Client) SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveAdminEmailConfiguration",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveAdminEmailConfigurationNoContent:
		return v, nil
	case *SaveAdminEmailConfigurationBadRequest:
		return nil, v
	case *SaveAdminEmailConfigurationUnauthorized:
		return nil, v
	case *SaveAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteAdminEmailConfigurationShort instead.

DeleteAdminEmailConfiguration delete admin emails configurations
Delete a list of admin email addresses to stop receiving personal data request notification.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]` and scope `account`
*/
func (a *Client) DeleteAdminEmailConfiguration(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, *DeleteAdminEmailConfigurationBadRequest, *DeleteAdminEmailConfigurationUnauthorized, *DeleteAdminEmailConfigurationForbidden, *DeleteAdminEmailConfigurationNotFound, *DeleteAdminEmailConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAdminEmailConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteAdminEmailConfigurationNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *DeleteAdminEmailConfigurationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *DeleteAdminEmailConfigurationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *DeleteAdminEmailConfigurationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *DeleteAdminEmailConfigurationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *DeleteAdminEmailConfigurationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAdminEmailConfigurationShort delete admin emails configurations
Delete a list of admin email addresses to stop receiving personal data request notification.


Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]` and scope `account`
*/
func (a *Client) DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAdminEmailConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteAdminEmailConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAdminEmailConfigurationNoContent:
		return v, nil
	case *DeleteAdminEmailConfigurationBadRequest:
		return nil, v
	case *DeleteAdminEmailConfigurationUnauthorized:
		return nil, v
	case *DeleteAdminEmailConfigurationForbidden:
		return nil, v
	case *DeleteAdminEmailConfigurationNotFound:
		return nil, v
	case *DeleteAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetServicesConfigurationShort instead.

AdminGetServicesConfiguration get registered services configuration
Get Registered Services Configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]` and scope `account`
*/
func (a *Client) AdminGetServicesConfiguration(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, *AdminGetServicesConfigurationUnauthorized, *AdminGetServicesConfigurationNotFound, *AdminGetServicesConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetServicesConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetServicesConfigurationOK:
		return v, nil, nil, nil, nil

	case *AdminGetServicesConfigurationUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminGetServicesConfigurationNotFound:
		return nil, nil, v, nil, nil

	case *AdminGetServicesConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetServicesConfigurationShort get registered services configuration
Get Registered Services Configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]` and scope `account`
*/
func (a *Client) AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetServicesConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetServicesConfigurationOK:
		return v, nil
	case *AdminGetServicesConfigurationUnauthorized:
		return nil, v
	case *AdminGetServicesConfigurationNotFound:
		return nil, v
	case *AdminGetServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateServicesConfigurationShort instead.

AdminUpdateServicesConfiguration update registered services configuration
Update Registered Services Configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]` and scope `account`
*/
func (a *Client) AdminUpdateServicesConfiguration(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, *AdminUpdateServicesConfigurationBadRequest, *AdminUpdateServicesConfigurationUnauthorized, *AdminUpdateServicesConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateServicesConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateServicesConfigurationOK:
		return v, nil, nil, nil, nil

	case *AdminUpdateServicesConfigurationBadRequest:
		return nil, v, nil, nil, nil

	case *AdminUpdateServicesConfigurationUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminUpdateServicesConfigurationInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateServicesConfigurationShort update registered services configuration
Update Registered Services Configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]` and scope `account`
*/
func (a *Client) AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateServicesConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateServicesConfigurationOK:
		return v, nil
	case *AdminUpdateServicesConfigurationBadRequest:
		return nil, v
	case *AdminUpdateServicesConfigurationUnauthorized:
		return nil, v
	case *AdminUpdateServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminResetServicesConfigurationShort instead.

AdminResetServicesConfiguration reset registered services configuration
 [TEST FACILITY ONLY]
Reset Registered Services Configuration to use the default configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]` and scope `account`
*/
func (a *Client) AdminResetServicesConfiguration(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, *AdminResetServicesConfigurationUnauthorized, *AdminResetServicesConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetServicesConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminResetServicesConfigurationNoContent:
		return v, nil, nil, nil

	case *AdminResetServicesConfigurationUnauthorized:
		return nil, v, nil, nil

	case *AdminResetServicesConfigurationInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetServicesConfigurationShort reset registered services configuration
 [TEST FACILITY ONLY]
Reset Registered Services Configuration to use the default configuration.


Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]` and scope `account`
*/
func (a *Client) AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetServicesConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetServicesConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetServicesConfigurationNoContent:
		return v, nil
	case *AdminResetServicesConfigurationUnauthorized:
		return nil, v
	case *AdminResetServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
