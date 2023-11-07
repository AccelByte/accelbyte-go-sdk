// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetGlobalConfig(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigOK, *AdminGetGlobalConfigBadRequest, *AdminGetGlobalConfigUnauthorized, *AdminGetGlobalConfigForbidden, *AdminGetGlobalConfigNotFound, *AdminGetGlobalConfigInternalServerError, error)
	AdminGetGlobalConfigShort(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigOK, error)
	AdminUpdateGlobalConfig(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigOK, *AdminUpdateGlobalConfigUnauthorized, *AdminUpdateGlobalConfigForbidden, error)
	AdminUpdateGlobalConfigShort(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigOK, error)
	AdminDeleteGlobalConfig(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigNoContent, *AdminDeleteGlobalConfigUnauthorized, *AdminDeleteGlobalConfigForbidden, error)
	AdminDeleteGlobalConfigShort(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigNoContent, error)
	FreeFormNotification(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationAccepted, *FreeFormNotificationBadRequest, *FreeFormNotificationUnauthorized, *FreeFormNotificationForbidden, *FreeFormNotificationNotFound, error)
	FreeFormNotificationShort(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationAccepted, error)
	NotificationWithTemplate(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateAccepted, *NotificationWithTemplateBadRequest, *NotificationWithTemplateUnauthorized, *NotificationWithTemplateForbidden, *NotificationWithTemplateNotFound, error)
	NotificationWithTemplateShort(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateAccepted, error)
	GetGameTemplate(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateOK, *GetGameTemplateBadRequest, *GetGameTemplateUnauthorized, *GetGameTemplateForbidden, *GetGameTemplateNotFound, error)
	GetGameTemplateShort(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateOK, error)
	CreateTemplate(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateNoContent, *CreateTemplateBadRequest, *CreateTemplateUnauthorized, *CreateTemplateForbidden, *CreateTemplateNotFound, error)
	CreateTemplateShort(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateNoContent, error)
	GetSlugTemplate(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateOK, *GetSlugTemplateBadRequest, *GetSlugTemplateUnauthorized, *GetSlugTemplateForbidden, *GetSlugTemplateNotFound, error)
	GetSlugTemplateShort(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateOK, error)
	DeleteTemplateSlug(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugNoContent, *DeleteTemplateSlugBadRequest, *DeleteTemplateSlugUnauthorized, *DeleteTemplateSlugForbidden, *DeleteTemplateSlugNotFound, error)
	DeleteTemplateSlugShort(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugNoContent, error)
	GetLocalizationTemplate(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateOK, *GetLocalizationTemplateBadRequest, *GetLocalizationTemplateUnauthorized, *GetLocalizationTemplateForbidden, *GetLocalizationTemplateNotFound, error)
	GetLocalizationTemplateShort(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateOK, error)
	UpdateLocalizationTemplate(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateNoContent, *UpdateLocalizationTemplateBadRequest, *UpdateLocalizationTemplateUnauthorized, *UpdateLocalizationTemplateForbidden, *UpdateLocalizationTemplateNotFound, error)
	UpdateLocalizationTemplateShort(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateNoContent, error)
	DeleteTemplateLocalization(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationNoContent, *DeleteTemplateLocalizationBadRequest, *DeleteTemplateLocalizationUnauthorized, *DeleteTemplateLocalizationForbidden, *DeleteTemplateLocalizationNotFound, error)
	DeleteTemplateLocalizationShort(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationNoContent, error)
	PublishTemplate(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateNoContent, *PublishTemplateBadRequest, *PublishTemplateUnauthorized, *PublishTemplateForbidden, *PublishTemplateNotFound, error)
	PublishTemplateShort(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetGlobalConfigShort instead.

AdminGetGlobalConfig record of global configuration dsmc.
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`
get dsmc global configuration.
*/
func (a *Client) AdminGetGlobalConfig(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigOK, *AdminGetGlobalConfigBadRequest, *AdminGetGlobalConfigUnauthorized, *AdminGetGlobalConfigForbidden, *AdminGetGlobalConfigNotFound, *AdminGetGlobalConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGlobalConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGlobalConfigOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetGlobalConfigBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetGlobalConfigUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetGlobalConfigForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetGlobalConfigNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetGlobalConfigInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGlobalConfigShort record of global configuration dsmc.
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`
get dsmc global configuration.
*/
func (a *Client) AdminGetGlobalConfigShort(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGlobalConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGlobalConfigOK:
		return v, nil
	case *AdminGetGlobalConfigBadRequest:
		return nil, v
	case *AdminGetGlobalConfigUnauthorized:
		return nil, v
	case *AdminGetGlobalConfigForbidden:
		return nil, v
	case *AdminGetGlobalConfigNotFound:
		return nil, v
	case *AdminGetGlobalConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateGlobalConfigShort instead.

AdminUpdateGlobalConfig required permission : admin:namespace:{namespace}:lobby:config [update]
Upsert global configuration data.
*/
func (a *Client) AdminUpdateGlobalConfig(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigOK, *AdminUpdateGlobalConfigUnauthorized, *AdminUpdateGlobalConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGlobalConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGlobalConfigOK:
		return v, nil, nil, nil

	case *AdminUpdateGlobalConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminUpdateGlobalConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGlobalConfigShort required permission : admin:namespace:{namespace}:lobby:config [update]
Upsert global configuration data.
*/
func (a *Client) AdminUpdateGlobalConfigShort(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGlobalConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGlobalConfigOK:
		return v, nil
	case *AdminUpdateGlobalConfigUnauthorized:
		return nil, v
	case *AdminUpdateGlobalConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteGlobalConfigShort instead.

AdminDeleteGlobalConfig required permission : admin:namespace:{namespace}:lobby:config [delete]
Delete of global configuration data.
*/
func (a *Client) AdminDeleteGlobalConfig(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigNoContent, *AdminDeleteGlobalConfigUnauthorized, *AdminDeleteGlobalConfigForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGlobalConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGlobalConfigNoContent:
		return v, nil, nil, nil

	case *AdminDeleteGlobalConfigUnauthorized:
		return nil, v, nil, nil

	case *AdminDeleteGlobalConfigForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGlobalConfigShort required permission : admin:namespace:{namespace}:lobby:config [delete]
Delete of global configuration data.
*/
func (a *Client) AdminDeleteGlobalConfigShort(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGlobalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGlobalConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGlobalConfigNoContent:
		return v, nil
	case *AdminDeleteGlobalConfigUnauthorized:
		return nil, v
	case *AdminDeleteGlobalConfigForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FreeFormNotificationShort instead.

FreeFormNotification send freeform notification to a user
Required permission : `NAMESPACE:{namespace}:NOTIFICATION [CREATE]` with scope `social`

Sends notification to all connected users in a namespace.
*/
func (a *Client) FreeFormNotification(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationAccepted, *FreeFormNotificationBadRequest, *FreeFormNotificationUnauthorized, *FreeFormNotificationForbidden, *FreeFormNotificationNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "freeFormNotification",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationAccepted:
		return v, nil, nil, nil, nil, nil

	case *FreeFormNotificationBadRequest:
		return nil, v, nil, nil, nil, nil

	case *FreeFormNotificationUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *FreeFormNotificationForbidden:
		return nil, nil, nil, v, nil, nil

	case *FreeFormNotificationNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FreeFormNotificationShort send freeform notification to a user
Required permission : `NAMESPACE:{namespace}:NOTIFICATION [CREATE]` with scope `social`

Sends notification to all connected users in a namespace.
*/
func (a *Client) FreeFormNotificationShort(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "freeFormNotification",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationAccepted:
		return v, nil
	case *FreeFormNotificationBadRequest:
		return nil, v
	case *FreeFormNotificationUnauthorized:
		return nil, v
	case *FreeFormNotificationForbidden:
		return nil, v
	case *FreeFormNotificationNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use NotificationWithTemplateShort instead.

NotificationWithTemplate send notification to a user with template
Required permission : `NAMESPACE:{namespace}:NOTIFICATION [CREATE]` with scope `social`

Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplate(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateAccepted, *NotificationWithTemplateBadRequest, *NotificationWithTemplateUnauthorized, *NotificationWithTemplateForbidden, *NotificationWithTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "notificationWithTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateAccepted:
		return v, nil, nil, nil, nil, nil

	case *NotificationWithTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *NotificationWithTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *NotificationWithTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *NotificationWithTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
NotificationWithTemplateShort send notification to a user with template
Required permission : `NAMESPACE:{namespace}:NOTIFICATION [CREATE]` with scope `social`

Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplateShort(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "notificationWithTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateAccepted:
		return v, nil
	case *NotificationWithTemplateBadRequest:
		return nil, v
	case *NotificationWithTemplateUnauthorized:
		return nil, v
	case *NotificationWithTemplateForbidden:
		return nil, v
	case *NotificationWithTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetGameTemplateShort instead.

GetGameTemplate get all notification template in a namespace
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get all templates in a namespace
*/
func (a *Client) GetGameTemplate(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateOK, *GetGameTemplateBadRequest, *GetGameTemplateUnauthorized, *GetGameTemplateForbidden, *GetGameTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetGameTemplateOK:
		return v, nil, nil, nil, nil, nil

	case *GetGameTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetGameTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetGameTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetGameTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameTemplateShort get all notification template in a namespace
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get all templates in a namespace
*/
func (a *Client) GetGameTemplateShort(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getGameTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameTemplateOK:
		return v, nil
	case *GetGameTemplateBadRequest:
		return nil, v
	case *GetGameTemplateUnauthorized:
		return nil, v
	case *GetGameTemplateForbidden:
		return nil, v
	case *GetGameTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateTemplateShort instead.

CreateTemplate create new notification template
Required permission : `NAMESPACE:{namespace}:TEMPLATE [CREATE]` with scope `social`

Create new notification template. Include handlebars {{key}} for replaceable contexts. The the key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.
*/
func (a *Client) CreateTemplate(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateNoContent, *CreateTemplateBadRequest, *CreateTemplateUnauthorized, *CreateTemplateForbidden, *CreateTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateTemplateNoContent:
		return v, nil, nil, nil, nil, nil

	case *CreateTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTemplateShort create new notification template
Required permission : `NAMESPACE:{namespace}:TEMPLATE [CREATE]` with scope `social`

Create new notification template. Include handlebars {{key}} for replaceable contexts. The the key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.
*/
func (a *Client) CreateTemplateShort(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTemplateNoContent:
		return v, nil
	case *CreateTemplateBadRequest:
		return nil, v
	case *CreateTemplateUnauthorized:
		return nil, v
	case *CreateTemplateForbidden:
		return nil, v
	case *CreateTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSlugTemplateShort instead.

GetSlugTemplate get all notification template in a slug
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get all templates in a namespace
*/
func (a *Client) GetSlugTemplate(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateOK, *GetSlugTemplateBadRequest, *GetSlugTemplateUnauthorized, *GetSlugTemplateForbidden, *GetSlugTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlugTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSlugTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlugTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSlugTemplateOK:
		return v, nil, nil, nil, nil, nil

	case *GetSlugTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetSlugTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetSlugTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetSlugTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSlugTemplateShort get all notification template in a slug
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get all templates in a namespace
*/
func (a *Client) GetSlugTemplateShort(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlugTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSlugTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlugTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSlugTemplateOK:
		return v, nil
	case *GetSlugTemplateBadRequest:
		return nil, v
	case *GetSlugTemplateUnauthorized:
		return nil, v
	case *GetSlugTemplateForbidden:
		return nil, v
	case *GetSlugTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTemplateSlugShort instead.

DeleteTemplateSlug delete template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [DELETE]` with scope `social`

Delete localization template
*/
func (a *Client) DeleteTemplateSlug(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugNoContent, *DeleteTemplateSlugBadRequest, *DeleteTemplateSlugUnauthorized, *DeleteTemplateSlugForbidden, *DeleteTemplateSlugNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateSlugParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTemplateSlug",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateSlugReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateSlugNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteTemplateSlugBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteTemplateSlugUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteTemplateSlugForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteTemplateSlugNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateSlugShort delete template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [DELETE]` with scope `social`

Delete localization template
*/
func (a *Client) DeleteTemplateSlugShort(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateSlugParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTemplateSlug",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateSlugReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateSlugNoContent:
		return v, nil
	case *DeleteTemplateSlugBadRequest:
		return nil, v
	case *DeleteTemplateSlugUnauthorized:
		return nil, v
	case *DeleteTemplateSlugForbidden:
		return nil, v
	case *DeleteTemplateSlugNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLocalizationTemplateShort instead.

GetLocalizationTemplate get a template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get a template localization
*/
func (a *Client) GetLocalizationTemplate(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateOK, *GetLocalizationTemplateBadRequest, *GetLocalizationTemplateUnauthorized, *GetLocalizationTemplateForbidden, *GetLocalizationTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocalizationTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocalizationTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLocalizationTemplateOK:
		return v, nil, nil, nil, nil, nil

	case *GetLocalizationTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetLocalizationTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetLocalizationTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetLocalizationTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocalizationTemplateShort get a template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

Get a template localization
*/
func (a *Client) GetLocalizationTemplateShort(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocalizationTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLocalizationTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocalizationTemplateOK:
		return v, nil
	case *GetLocalizationTemplateBadRequest:
		return nil, v
	case *GetLocalizationTemplateUnauthorized:
		return nil, v
	case *GetLocalizationTemplateForbidden:
		return nil, v
	case *GetLocalizationTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateLocalizationTemplateShort instead.

UpdateLocalizationTemplate update template draft
Required permission : `NAMESPACE:{namespace}:TEMPLATE [UPDATE]` with scope `social`

Modify draft template
*/
func (a *Client) UpdateLocalizationTemplate(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateNoContent, *UpdateLocalizationTemplateBadRequest, *UpdateLocalizationTemplateUnauthorized, *UpdateLocalizationTemplateForbidden, *UpdateLocalizationTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizationTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLocalizationTemplate",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizationTemplateNoContent:
		return v, nil, nil, nil, nil, nil

	case *UpdateLocalizationTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateLocalizationTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateLocalizationTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateLocalizationTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizationTemplateShort update template draft
Required permission : `NAMESPACE:{namespace}:TEMPLATE [UPDATE]` with scope `social`

Modify draft template
*/
func (a *Client) UpdateLocalizationTemplateShort(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizationTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateLocalizationTemplate",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizationTemplateNoContent:
		return v, nil
	case *UpdateLocalizationTemplateBadRequest:
		return nil, v
	case *UpdateLocalizationTemplateUnauthorized:
		return nil, v
	case *UpdateLocalizationTemplateForbidden:
		return nil, v
	case *UpdateLocalizationTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTemplateLocalizationShort instead.

DeleteTemplateLocalization delete template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [DELETE]` with scope `social`

Delete all template in a slug
*/
func (a *Client) DeleteTemplateLocalization(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationNoContent, *DeleteTemplateLocalizationBadRequest, *DeleteTemplateLocalizationUnauthorized, *DeleteTemplateLocalizationForbidden, *DeleteTemplateLocalizationNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTemplateLocalization",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteTemplateLocalizationBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteTemplateLocalizationUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteTemplateLocalizationForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteTemplateLocalizationNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateLocalizationShort delete template localization
Required permission : `NAMESPACE:{namespace}:TEMPLATE [DELETE]` with scope `social`

Delete all template in a slug
*/
func (a *Client) DeleteTemplateLocalizationShort(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTemplateLocalization",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationNoContent:
		return v, nil
	case *DeleteTemplateLocalizationBadRequest:
		return nil, v
	case *DeleteTemplateLocalizationUnauthorized:
		return nil, v
	case *DeleteTemplateLocalizationForbidden:
		return nil, v
	case *DeleteTemplateLocalizationNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublishTemplateShort instead.

PublishTemplate publish draft template
Required permission : `NAMESPACE:{namespace}:TEMPLATE [CREATE]` with scope `social`

Publish notification template draft. Empty draft can not be published.
*/
func (a *Client) PublishTemplate(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateNoContent, *PublishTemplateBadRequest, *PublishTemplateUnauthorized, *PublishTemplateForbidden, *PublishTemplateNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublishTemplateBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublishTemplateUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublishTemplateForbidden:
		return nil, nil, nil, v, nil, nil

	case *PublishTemplateNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishTemplateShort publish draft template
Required permission : `NAMESPACE:{namespace}:TEMPLATE [CREATE]` with scope `social`

Publish notification template draft. Empty draft can not be published.
*/
func (a *Client) PublishTemplateShort(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateNoContent:
		return v, nil
	case *PublishTemplateBadRequest:
		return nil, v
	case *PublishTemplateUnauthorized:
		return nil, v
	case *PublishTemplateForbidden:
		return nil, v
	case *PublishTemplateNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
