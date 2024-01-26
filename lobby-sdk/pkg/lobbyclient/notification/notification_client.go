// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package notification

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new notification API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for notification API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SendMultipleUsersFreeformNotificationV1Admin(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminNoContent, *SendMultipleUsersFreeformNotificationV1AdminBadRequest, *SendMultipleUsersFreeformNotificationV1AdminUnauthorized, *SendMultipleUsersFreeformNotificationV1AdminForbidden, error)
	SendMultipleUsersFreeformNotificationV1AdminShort(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminNoContent, error)
	SendUsersFreeformNotificationV1Admin(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminAccepted, *SendUsersFreeformNotificationV1AdminBadRequest, *SendUsersFreeformNotificationV1AdminUnauthorized, *SendUsersFreeformNotificationV1AdminForbidden, *SendUsersFreeformNotificationV1AdminNotFound, error)
	SendUsersFreeformNotificationV1AdminShort(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminAccepted, error)
	SendPartyFreeformNotificationV1Admin(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminNoContent, *SendPartyFreeformNotificationV1AdminBadRequest, *SendPartyFreeformNotificationV1AdminUnauthorized, *SendPartyFreeformNotificationV1AdminForbidden, *SendPartyFreeformNotificationV1AdminNotFound, error)
	SendPartyFreeformNotificationV1AdminShort(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminNoContent, error)
	SendPartyTemplatedNotificationV1Admin(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminNoContent, *SendPartyTemplatedNotificationV1AdminBadRequest, *SendPartyTemplatedNotificationV1AdminUnauthorized, *SendPartyTemplatedNotificationV1AdminForbidden, *SendPartyTemplatedNotificationV1AdminNotFound, error)
	SendPartyTemplatedNotificationV1AdminShort(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminNoContent, error)
	GetAllNotificationTemplatesV1Admin(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminOK, *GetAllNotificationTemplatesV1AdminBadRequest, *GetAllNotificationTemplatesV1AdminUnauthorized, *GetAllNotificationTemplatesV1AdminForbidden, *GetAllNotificationTemplatesV1AdminNotFound, *GetAllNotificationTemplatesV1AdminInternalServerError, error)
	GetAllNotificationTemplatesV1AdminShort(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminOK, error)
	CreateNotificationTemplateV1Admin(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminNoContent, *CreateNotificationTemplateV1AdminBadRequest, *CreateNotificationTemplateV1AdminUnauthorized, *CreateNotificationTemplateV1AdminForbidden, *CreateNotificationTemplateV1AdminNotFound, *CreateNotificationTemplateV1AdminConflict, error)
	CreateNotificationTemplateV1AdminShort(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminNoContent, error)
	SendUsersTemplatedNotificationV1Admin(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminAccepted, *SendUsersTemplatedNotificationV1AdminBadRequest, *SendUsersTemplatedNotificationV1AdminUnauthorized, *SendUsersTemplatedNotificationV1AdminForbidden, *SendUsersTemplatedNotificationV1AdminNotFound, error)
	SendUsersTemplatedNotificationV1AdminShort(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminAccepted, error)
	GetTemplateSlugLocalizationsTemplateV1Admin(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminOK, *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest, *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized, *GetTemplateSlugLocalizationsTemplateV1AdminForbidden, *GetTemplateSlugLocalizationsTemplateV1AdminNotFound, error)
	GetTemplateSlugLocalizationsTemplateV1AdminShort(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminOK, error)
	DeleteNotificationTemplateSlugV1Admin(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminNoContent, *DeleteNotificationTemplateSlugV1AdminBadRequest, *DeleteNotificationTemplateSlugV1AdminUnauthorized, *DeleteNotificationTemplateSlugV1AdminForbidden, *DeleteNotificationTemplateSlugV1AdminNotFound, error)
	DeleteNotificationTemplateSlugV1AdminShort(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminNoContent, error)
	GetSingleTemplateLocalizationV1Admin(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminOK, *GetSingleTemplateLocalizationV1AdminUnauthorized, *GetSingleTemplateLocalizationV1AdminForbidden, *GetSingleTemplateLocalizationV1AdminNotFound, *GetSingleTemplateLocalizationV1AdminInternalServerError, error)
	GetSingleTemplateLocalizationV1AdminShort(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminOK, error)
	UpdateTemplateLocalizationV1Admin(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminNoContent, *UpdateTemplateLocalizationV1AdminBadRequest, *UpdateTemplateLocalizationV1AdminUnauthorized, *UpdateTemplateLocalizationV1AdminForbidden, *UpdateTemplateLocalizationV1AdminNotFound, *UpdateTemplateLocalizationV1AdminInternalServerError, error)
	UpdateTemplateLocalizationV1AdminShort(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminNoContent, error)
	DeleteTemplateLocalizationV1Admin(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminNoContent, *DeleteTemplateLocalizationV1AdminUnauthorized, *DeleteTemplateLocalizationV1AdminForbidden, *DeleteTemplateLocalizationV1AdminNotFound, *DeleteTemplateLocalizationV1AdminInternalServerError, error)
	DeleteTemplateLocalizationV1AdminShort(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminNoContent, error)
	PublishTemplateLocalizationV1Admin(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminNoContent, *PublishTemplateLocalizationV1AdminUnauthorized, *PublishTemplateLocalizationV1AdminForbidden, *PublishTemplateLocalizationV1AdminNotFound, *PublishTemplateLocalizationV1AdminInternalServerError, error)
	PublishTemplateLocalizationV1AdminShort(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminNoContent, error)
	GetAllNotificationTopicsV1Admin(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminOK, *GetAllNotificationTopicsV1AdminUnauthorized, *GetAllNotificationTopicsV1AdminForbidden, *GetAllNotificationTopicsV1AdminNotFound, *GetAllNotificationTopicsV1AdminInternalServerError, error)
	GetAllNotificationTopicsV1AdminShort(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminOK, error)
	CreateNotificationTopicV1Admin(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminNoContent, *CreateNotificationTopicV1AdminBadRequest, *CreateNotificationTopicV1AdminUnauthorized, *CreateNotificationTopicV1AdminForbidden, error)
	CreateNotificationTopicV1AdminShort(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminNoContent, error)
	GetNotificationTopicV1Admin(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminOK, *GetNotificationTopicV1AdminUnauthorized, *GetNotificationTopicV1AdminForbidden, *GetNotificationTopicV1AdminNotFound, *GetNotificationTopicV1AdminInternalServerError, error)
	GetNotificationTopicV1AdminShort(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminOK, error)
	UpdateNotificationTopicV1Admin(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminNoContent, *UpdateNotificationTopicV1AdminBadRequest, *UpdateNotificationTopicV1AdminUnauthorized, *UpdateNotificationTopicV1AdminForbidden, *UpdateNotificationTopicV1AdminNotFound, *UpdateNotificationTopicV1AdminInternalServerError, error)
	UpdateNotificationTopicV1AdminShort(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminNoContent, error)
	DeleteNotificationTopicV1Admin(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminNoContent, *DeleteNotificationTopicV1AdminUnauthorized, *DeleteNotificationTopicV1AdminForbidden, *DeleteNotificationTopicV1AdminNotFound, *DeleteNotificationTopicV1AdminInternalServerError, error)
	DeleteNotificationTopicV1AdminShort(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminNoContent, error)
	SendSpecificUserFreeformNotificationV1Admin(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminNoContent, *SendSpecificUserFreeformNotificationV1AdminBadRequest, *SendSpecificUserFreeformNotificationV1AdminUnauthorized, *SendSpecificUserFreeformNotificationV1AdminForbidden, *SendSpecificUserFreeformNotificationV1AdminNotFound, error)
	SendSpecificUserFreeformNotificationV1AdminShort(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminNoContent, error)
	SendSpecificUserTemplatedNotificationV1Admin(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminNoContent, *SendSpecificUserTemplatedNotificationV1AdminBadRequest, *SendSpecificUserTemplatedNotificationV1AdminUnauthorized, *SendSpecificUserTemplatedNotificationV1AdminForbidden, *SendSpecificUserTemplatedNotificationV1AdminNotFound, error)
	SendSpecificUserTemplatedNotificationV1AdminShort(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminNoContent, error)
	GetTopicByNamespace(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceOK, *GetTopicByNamespaceUnauthorized, *GetTopicByNamespaceForbidden, *GetTopicByNamespaceNotFound, *GetTopicByNamespaceInternalServerError, error)
	GetTopicByNamespaceShort(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceOK, error)
	CreateTopic(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicCreated, *CreateTopicBadRequest, *CreateTopicUnauthorized, *CreateTopicForbidden, *CreateTopicConflict, error)
	CreateTopicShort(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicCreated, error)
	GetTopicByTopicName(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameOK, *GetTopicByTopicNameUnauthorized, *GetTopicByTopicNameForbidden, *GetTopicByTopicNameNotFound, *GetTopicByTopicNameInternalServerError, error)
	GetTopicByTopicNameShort(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameOK, error)
	UpdateTopicByTopicName(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameNoContent, *UpdateTopicByTopicNameUnauthorized, *UpdateTopicByTopicNameForbidden, *UpdateTopicByTopicNameNotFound, *UpdateTopicByTopicNameInternalServerError, error)
	UpdateTopicByTopicNameShort(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameNoContent, error)
	DeleteTopicByTopicName(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameNoContent, *DeleteTopicByTopicNameUnauthorized, *DeleteTopicByTopicNameForbidden, *DeleteTopicByTopicNameNotFound, *DeleteTopicByTopicNameInternalServerError, error)
	DeleteTopicByTopicNameShort(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameNoContent, error)
	FreeFormNotificationByUserID(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDNoContent, *FreeFormNotificationByUserIDBadRequest, *FreeFormNotificationByUserIDUnauthorized, *FreeFormNotificationByUserIDForbidden, *FreeFormNotificationByUserIDNotFound, error)
	FreeFormNotificationByUserIDShort(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDNoContent, error)
	NotificationWithTemplateByUserID(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDNoContent, *NotificationWithTemplateByUserIDBadRequest, *NotificationWithTemplateByUserIDUnauthorized, *NotificationWithTemplateByUserIDForbidden, *NotificationWithTemplateByUserIDNotFound, error)
	NotificationWithTemplateByUserIDShort(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use SendMultipleUsersFreeformNotificationV1AdminShort instead.

SendMultipleUsersFreeformNotificationV1Admin send freeform notification to multiple users
Sends notification to multiple user.
Action Code: 50211
*/
func (a *Client) SendMultipleUsersFreeformNotificationV1Admin(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminNoContent, *SendMultipleUsersFreeformNotificationV1AdminBadRequest, *SendMultipleUsersFreeformNotificationV1AdminUnauthorized, *SendMultipleUsersFreeformNotificationV1AdminForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMultipleUsersFreeformNotificationV1AdminParams()
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
		ID:                 "sendMultipleUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMultipleUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendMultipleUsersFreeformNotificationV1AdminNoContent:
		return v, nil, nil, nil, nil

	case *SendMultipleUsersFreeformNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil

	case *SendMultipleUsersFreeformNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil

	case *SendMultipleUsersFreeformNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendMultipleUsersFreeformNotificationV1AdminShort send freeform notification to multiple users
Sends notification to multiple user.
Action Code: 50211
*/
func (a *Client) SendMultipleUsersFreeformNotificationV1AdminShort(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMultipleUsersFreeformNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendMultipleUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMultipleUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendMultipleUsersFreeformNotificationV1AdminNoContent:
		return v, nil
	case *SendMultipleUsersFreeformNotificationV1AdminBadRequest:
		return nil, v
	case *SendMultipleUsersFreeformNotificationV1AdminUnauthorized:
		return nil, v
	case *SendMultipleUsersFreeformNotificationV1AdminForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendUsersFreeformNotificationV1AdminShort instead.

SendUsersFreeformNotificationV1Admin send freeform notification to connected users
Sends notification to all connected users in a namespace.

Action Code: 50201
*/
func (a *Client) SendUsersFreeformNotificationV1Admin(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminAccepted, *SendUsersFreeformNotificationV1AdminBadRequest, *SendUsersFreeformNotificationV1AdminUnauthorized, *SendUsersFreeformNotificationV1AdminForbidden, *SendUsersFreeformNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersFreeformNotificationV1AdminParams()
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
		ID:                 "sendUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendUsersFreeformNotificationV1AdminAccepted:
		return v, nil, nil, nil, nil, nil

	case *SendUsersFreeformNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendUsersFreeformNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendUsersFreeformNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendUsersFreeformNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendUsersFreeformNotificationV1AdminShort send freeform notification to connected users
Sends notification to all connected users in a namespace.

Action Code: 50201
*/
func (a *Client) SendUsersFreeformNotificationV1AdminShort(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersFreeformNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendUsersFreeformNotificationV1AdminAccepted:
		return v, nil
	case *SendUsersFreeformNotificationV1AdminBadRequest:
		return nil, v
	case *SendUsersFreeformNotificationV1AdminUnauthorized:
		return nil, v
	case *SendUsersFreeformNotificationV1AdminForbidden:
		return nil, v
	case *SendUsersFreeformNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendPartyFreeformNotificationV1AdminShort instead.

SendPartyFreeformNotificationV1Admin send freeform notification to a party
Sends notification to a party.
*/
func (a *Client) SendPartyFreeformNotificationV1Admin(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminNoContent, *SendPartyFreeformNotificationV1AdminBadRequest, *SendPartyFreeformNotificationV1AdminUnauthorized, *SendPartyFreeformNotificationV1AdminForbidden, *SendPartyFreeformNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyFreeformNotificationV1AdminParams()
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
		ID:                 "sendPartyFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendPartyFreeformNotificationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *SendPartyFreeformNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendPartyFreeformNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendPartyFreeformNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendPartyFreeformNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendPartyFreeformNotificationV1AdminShort send freeform notification to a party
Sends notification to a party.
*/
func (a *Client) SendPartyFreeformNotificationV1AdminShort(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyFreeformNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendPartyFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendPartyFreeformNotificationV1AdminNoContent:
		return v, nil
	case *SendPartyFreeformNotificationV1AdminBadRequest:
		return nil, v
	case *SendPartyFreeformNotificationV1AdminUnauthorized:
		return nil, v
	case *SendPartyFreeformNotificationV1AdminForbidden:
		return nil, v
	case *SendPartyFreeformNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendPartyTemplatedNotificationV1AdminShort instead.

SendPartyTemplatedNotificationV1Admin send templated notification to a party
Sends templated notification to a party.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) SendPartyTemplatedNotificationV1Admin(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminNoContent, *SendPartyTemplatedNotificationV1AdminBadRequest, *SendPartyTemplatedNotificationV1AdminUnauthorized, *SendPartyTemplatedNotificationV1AdminForbidden, *SendPartyTemplatedNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyTemplatedNotificationV1AdminParams()
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
		ID:                 "sendPartyTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendPartyTemplatedNotificationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *SendPartyTemplatedNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendPartyTemplatedNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendPartyTemplatedNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendPartyTemplatedNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendPartyTemplatedNotificationV1AdminShort send templated notification to a party
Sends templated notification to a party.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) SendPartyTemplatedNotificationV1AdminShort(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyTemplatedNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendPartyTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendPartyTemplatedNotificationV1AdminNoContent:
		return v, nil
	case *SendPartyTemplatedNotificationV1AdminBadRequest:
		return nil, v
	case *SendPartyTemplatedNotificationV1AdminUnauthorized:
		return nil, v
	case *SendPartyTemplatedNotificationV1AdminForbidden:
		return nil, v
	case *SendPartyTemplatedNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllNotificationTemplatesV1AdminShort instead.

GetAllNotificationTemplatesV1Admin get all notification template in a namespace
Get all templates in a namespace

Action Code: 50203
*/
func (a *Client) GetAllNotificationTemplatesV1Admin(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminOK, *GetAllNotificationTemplatesV1AdminBadRequest, *GetAllNotificationTemplatesV1AdminUnauthorized, *GetAllNotificationTemplatesV1AdminForbidden, *GetAllNotificationTemplatesV1AdminNotFound, *GetAllNotificationTemplatesV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTemplatesV1AdminParams()
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
		ID:                 "getAllNotificationTemplatesV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTemplatesV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTemplatesV1AdminOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetAllNotificationTemplatesV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetAllNotificationTemplatesV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetAllNotificationTemplatesV1AdminForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetAllNotificationTemplatesV1AdminNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetAllNotificationTemplatesV1AdminInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllNotificationTemplatesV1AdminShort get all notification template in a namespace
Get all templates in a namespace

Action Code: 50203
*/
func (a *Client) GetAllNotificationTemplatesV1AdminShort(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTemplatesV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAllNotificationTemplatesV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTemplatesV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTemplatesV1AdminOK:
		return v, nil
	case *GetAllNotificationTemplatesV1AdminBadRequest:
		return nil, v
	case *GetAllNotificationTemplatesV1AdminUnauthorized:
		return nil, v
	case *GetAllNotificationTemplatesV1AdminForbidden:
		return nil, v
	case *GetAllNotificationTemplatesV1AdminNotFound:
		return nil, v
	case *GetAllNotificationTemplatesV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNotificationTemplateV1AdminShort instead.

CreateNotificationTemplateV1Admin create new notification template
Create new notification template. Include handlebars {{key}} for replaceable contexts. The key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.

Action Code: 50204
*/
func (a *Client) CreateNotificationTemplateV1Admin(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminNoContent, *CreateNotificationTemplateV1AdminBadRequest, *CreateNotificationTemplateV1AdminUnauthorized, *CreateNotificationTemplateV1AdminForbidden, *CreateNotificationTemplateV1AdminNotFound, *CreateNotificationTemplateV1AdminConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTemplateV1AdminParams()
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
		ID:                 "createNotificationTemplateV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTemplateV1AdminNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *CreateNotificationTemplateV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *CreateNotificationTemplateV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *CreateNotificationTemplateV1AdminForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *CreateNotificationTemplateV1AdminNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *CreateNotificationTemplateV1AdminConflict:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNotificationTemplateV1AdminShort create new notification template
Create new notification template. Include handlebars {{key}} for replaceable contexts. The key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.

Action Code: 50204
*/
func (a *Client) CreateNotificationTemplateV1AdminShort(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTemplateV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNotificationTemplateV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTemplateV1AdminNoContent:
		return v, nil
	case *CreateNotificationTemplateV1AdminBadRequest:
		return nil, v
	case *CreateNotificationTemplateV1AdminUnauthorized:
		return nil, v
	case *CreateNotificationTemplateV1AdminForbidden:
		return nil, v
	case *CreateNotificationTemplateV1AdminNotFound:
		return nil, v
	case *CreateNotificationTemplateV1AdminConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendUsersTemplatedNotificationV1AdminShort instead.

SendUsersTemplatedNotificationV1Admin send notification to connected users with template
Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50202
*/
func (a *Client) SendUsersTemplatedNotificationV1Admin(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminAccepted, *SendUsersTemplatedNotificationV1AdminBadRequest, *SendUsersTemplatedNotificationV1AdminUnauthorized, *SendUsersTemplatedNotificationV1AdminForbidden, *SendUsersTemplatedNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersTemplatedNotificationV1AdminParams()
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
		ID:                 "sendUsersTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendUsersTemplatedNotificationV1AdminAccepted:
		return v, nil, nil, nil, nil, nil

	case *SendUsersTemplatedNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendUsersTemplatedNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendUsersTemplatedNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendUsersTemplatedNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendUsersTemplatedNotificationV1AdminShort send notification to connected users with template
Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50202
*/
func (a *Client) SendUsersTemplatedNotificationV1AdminShort(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminAccepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersTemplatedNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendUsersTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendUsersTemplatedNotificationV1AdminAccepted:
		return v, nil
	case *SendUsersTemplatedNotificationV1AdminBadRequest:
		return nil, v
	case *SendUsersTemplatedNotificationV1AdminUnauthorized:
		return nil, v
	case *SendUsersTemplatedNotificationV1AdminForbidden:
		return nil, v
	case *SendUsersTemplatedNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTemplateSlugLocalizationsTemplateV1AdminShort instead.

GetTemplateSlugLocalizationsTemplateV1Admin get all notification template localization in a slug
Get all templates in a namespace

Action Code: 50205
*/
func (a *Client) GetTemplateSlugLocalizationsTemplateV1Admin(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminOK, *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest, *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized, *GetTemplateSlugLocalizationsTemplateV1AdminForbidden, *GetTemplateSlugLocalizationsTemplateV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTemplateSlugLocalizationsTemplateV1AdminParams()
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
		ID:                 "getTemplateSlugLocalizationsTemplateV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTemplateSlugLocalizationsTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTemplateSlugLocalizationsTemplateV1AdminOK:
		return v, nil, nil, nil, nil, nil

	case *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetTemplateSlugLocalizationsTemplateV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetTemplateSlugLocalizationsTemplateV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTemplateSlugLocalizationsTemplateV1AdminShort get all notification template localization in a slug
Get all templates in a namespace

Action Code: 50205
*/
func (a *Client) GetTemplateSlugLocalizationsTemplateV1AdminShort(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTemplateSlugLocalizationsTemplateV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTemplateSlugLocalizationsTemplateV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTemplateSlugLocalizationsTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTemplateSlugLocalizationsTemplateV1AdminOK:
		return v, nil
	case *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest:
		return nil, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized:
		return nil, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminForbidden:
		return nil, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNotificationTemplateSlugV1AdminShort instead.

DeleteNotificationTemplateSlugV1Admin delete template slug in notification template
Delete template slug in notification template

Action Code: 50206
*/
func (a *Client) DeleteNotificationTemplateSlugV1Admin(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminNoContent, *DeleteNotificationTemplateSlugV1AdminBadRequest, *DeleteNotificationTemplateSlugV1AdminUnauthorized, *DeleteNotificationTemplateSlugV1AdminForbidden, *DeleteNotificationTemplateSlugV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTemplateSlugV1AdminParams()
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
		ID:                 "deleteNotificationTemplateSlugV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTemplateSlugV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTemplateSlugV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteNotificationTemplateSlugV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteNotificationTemplateSlugV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteNotificationTemplateSlugV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteNotificationTemplateSlugV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNotificationTemplateSlugV1AdminShort delete template slug in notification template
Delete template slug in notification template

Action Code: 50206
*/
func (a *Client) DeleteNotificationTemplateSlugV1AdminShort(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTemplateSlugV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNotificationTemplateSlugV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTemplateSlugV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTemplateSlugV1AdminNoContent:
		return v, nil
	case *DeleteNotificationTemplateSlugV1AdminBadRequest:
		return nil, v
	case *DeleteNotificationTemplateSlugV1AdminUnauthorized:
		return nil, v
	case *DeleteNotificationTemplateSlugV1AdminForbidden:
		return nil, v
	case *DeleteNotificationTemplateSlugV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSingleTemplateLocalizationV1AdminShort instead.

GetSingleTemplateLocalizationV1Admin get a template localization
Get a template localization

Action Code: 50207
*/
func (a *Client) GetSingleTemplateLocalizationV1Admin(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminOK, *GetSingleTemplateLocalizationV1AdminUnauthorized, *GetSingleTemplateLocalizationV1AdminForbidden, *GetSingleTemplateLocalizationV1AdminNotFound, *GetSingleTemplateLocalizationV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleTemplateLocalizationV1AdminParams()
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
		ID:                 "getSingleTemplateLocalizationV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetSingleTemplateLocalizationV1AdminOK:
		return v, nil, nil, nil, nil, nil

	case *GetSingleTemplateLocalizationV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetSingleTemplateLocalizationV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetSingleTemplateLocalizationV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetSingleTemplateLocalizationV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleTemplateLocalizationV1AdminShort get a template localization
Get a template localization

Action Code: 50207
*/
func (a *Client) GetSingleTemplateLocalizationV1AdminShort(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleTemplateLocalizationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSingleTemplateLocalizationV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleTemplateLocalizationV1AdminOK:
		return v, nil
	case *GetSingleTemplateLocalizationV1AdminUnauthorized:
		return nil, v
	case *GetSingleTemplateLocalizationV1AdminForbidden:
		return nil, v
	case *GetSingleTemplateLocalizationV1AdminNotFound:
		return nil, v
	case *GetSingleTemplateLocalizationV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateTemplateLocalizationV1AdminShort instead.

UpdateTemplateLocalizationV1Admin update template localization
Update template localization

Action Code: 50208
*/
func (a *Client) UpdateTemplateLocalizationV1Admin(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminNoContent, *UpdateTemplateLocalizationV1AdminBadRequest, *UpdateTemplateLocalizationV1AdminUnauthorized, *UpdateTemplateLocalizationV1AdminForbidden, *UpdateTemplateLocalizationV1AdminNotFound, *UpdateTemplateLocalizationV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTemplateLocalizationV1AdminParams()
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
		ID:                 "updateTemplateLocalizationV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateTemplateLocalizationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateTemplateLocalizationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateTemplateLocalizationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateTemplateLocalizationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateTemplateLocalizationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateTemplateLocalizationV1AdminInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTemplateLocalizationV1AdminShort update template localization
Update template localization

Action Code: 50208
*/
func (a *Client) UpdateTemplateLocalizationV1AdminShort(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTemplateLocalizationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTemplateLocalizationV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTemplateLocalizationV1AdminNoContent:
		return v, nil
	case *UpdateTemplateLocalizationV1AdminBadRequest:
		return nil, v
	case *UpdateTemplateLocalizationV1AdminUnauthorized:
		return nil, v
	case *UpdateTemplateLocalizationV1AdminForbidden:
		return nil, v
	case *UpdateTemplateLocalizationV1AdminNotFound:
		return nil, v
	case *UpdateTemplateLocalizationV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTemplateLocalizationV1AdminShort instead.

DeleteTemplateLocalizationV1Admin delete template localization
Delete template localization

Action Code: 50209
*/
func (a *Client) DeleteTemplateLocalizationV1Admin(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminNoContent, *DeleteTemplateLocalizationV1AdminUnauthorized, *DeleteTemplateLocalizationV1AdminForbidden, *DeleteTemplateLocalizationV1AdminNotFound, *DeleteTemplateLocalizationV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationV1AdminParams()
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
		ID:                 "deleteTemplateLocalizationV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteTemplateLocalizationV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteTemplateLocalizationV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteTemplateLocalizationV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteTemplateLocalizationV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateLocalizationV1AdminShort delete template localization
Delete template localization

Action Code: 50209
*/
func (a *Client) DeleteTemplateLocalizationV1AdminShort(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTemplateLocalizationV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationV1AdminNoContent:
		return v, nil
	case *DeleteTemplateLocalizationV1AdminUnauthorized:
		return nil, v
	case *DeleteTemplateLocalizationV1AdminForbidden:
		return nil, v
	case *DeleteTemplateLocalizationV1AdminNotFound:
		return nil, v
	case *DeleteTemplateLocalizationV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublishTemplateLocalizationV1AdminShort instead.

PublishTemplateLocalizationV1Admin publish template localization draft
Publish notification template draft. Empty draft can not be published.

Action Code: 50210
*/
func (a *Client) PublishTemplateLocalizationV1Admin(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminNoContent, *PublishTemplateLocalizationV1AdminUnauthorized, *PublishTemplateLocalizationV1AdminForbidden, *PublishTemplateLocalizationV1AdminNotFound, *PublishTemplateLocalizationV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateLocalizationV1AdminParams()
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
		ID:                 "publishTemplateLocalizationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateLocalizationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublishTemplateLocalizationV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublishTemplateLocalizationV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublishTemplateLocalizationV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublishTemplateLocalizationV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishTemplateLocalizationV1AdminShort publish template localization draft
Publish notification template draft. Empty draft can not be published.

Action Code: 50210
*/
func (a *Client) PublishTemplateLocalizationV1AdminShort(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateLocalizationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishTemplateLocalizationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateLocalizationV1AdminNoContent:
		return v, nil
	case *PublishTemplateLocalizationV1AdminUnauthorized:
		return nil, v
	case *PublishTemplateLocalizationV1AdminForbidden:
		return nil, v
	case *PublishTemplateLocalizationV1AdminNotFound:
		return nil, v
	case *PublishTemplateLocalizationV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetAllNotificationTopicsV1AdminShort instead.

GetAllNotificationTopicsV1Admin get topic by namespace
Get topic by namespace.

Action Code: 50213
*/
func (a *Client) GetAllNotificationTopicsV1Admin(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminOK, *GetAllNotificationTopicsV1AdminUnauthorized, *GetAllNotificationTopicsV1AdminForbidden, *GetAllNotificationTopicsV1AdminNotFound, *GetAllNotificationTopicsV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTopicsV1AdminParams()
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
		ID:                 "getAllNotificationTopicsV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTopicsV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTopicsV1AdminOK:
		return v, nil, nil, nil, nil, nil

	case *GetAllNotificationTopicsV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetAllNotificationTopicsV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetAllNotificationTopicsV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetAllNotificationTopicsV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllNotificationTopicsV1AdminShort get topic by namespace
Get topic by namespace.

Action Code: 50213
*/
func (a *Client) GetAllNotificationTopicsV1AdminShort(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTopicsV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAllNotificationTopicsV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTopicsV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTopicsV1AdminOK:
		return v, nil
	case *GetAllNotificationTopicsV1AdminUnauthorized:
		return nil, v
	case *GetAllNotificationTopicsV1AdminForbidden:
		return nil, v
	case *GetAllNotificationTopicsV1AdminNotFound:
		return nil, v
	case *GetAllNotificationTopicsV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateNotificationTopicV1AdminShort instead.

CreateNotificationTopicV1Admin create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50214
*/
func (a *Client) CreateNotificationTopicV1Admin(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminNoContent, *CreateNotificationTopicV1AdminBadRequest, *CreateNotificationTopicV1AdminUnauthorized, *CreateNotificationTopicV1AdminForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTopicV1AdminParams()
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
		ID:                 "createNotificationTopicV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTopicV1AdminNoContent:
		return v, nil, nil, nil, nil

	case *CreateNotificationTopicV1AdminBadRequest:
		return nil, v, nil, nil, nil

	case *CreateNotificationTopicV1AdminUnauthorized:
		return nil, nil, v, nil, nil

	case *CreateNotificationTopicV1AdminForbidden:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNotificationTopicV1AdminShort create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50214
*/
func (a *Client) CreateNotificationTopicV1AdminShort(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTopicV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createNotificationTopicV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTopicV1AdminNoContent:
		return v, nil
	case *CreateNotificationTopicV1AdminBadRequest:
		return nil, v
	case *CreateNotificationTopicV1AdminUnauthorized:
		return nil, v
	case *CreateNotificationTopicV1AdminForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetNotificationTopicV1AdminShort instead.

GetNotificationTopicV1Admin get topic information by topic name
Get topic information by topic name.

Action Code: 50215
*/
func (a *Client) GetNotificationTopicV1Admin(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminOK, *GetNotificationTopicV1AdminUnauthorized, *GetNotificationTopicV1AdminForbidden, *GetNotificationTopicV1AdminNotFound, *GetNotificationTopicV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationTopicV1AdminParams()
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
		ID:                 "getNotificationTopicV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetNotificationTopicV1AdminOK:
		return v, nil, nil, nil, nil, nil

	case *GetNotificationTopicV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetNotificationTopicV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetNotificationTopicV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetNotificationTopicV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNotificationTopicV1AdminShort get topic information by topic name
Get topic information by topic name.

Action Code: 50215
*/
func (a *Client) GetNotificationTopicV1AdminShort(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationTopicV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getNotificationTopicV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNotificationTopicV1AdminOK:
		return v, nil
	case *GetNotificationTopicV1AdminUnauthorized:
		return nil, v
	case *GetNotificationTopicV1AdminForbidden:
		return nil, v
	case *GetNotificationTopicV1AdminNotFound:
		return nil, v
	case *GetNotificationTopicV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateNotificationTopicV1AdminShort instead.

UpdateNotificationTopicV1Admin update topic information by topic name
Update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50216
*/
func (a *Client) UpdateNotificationTopicV1Admin(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminNoContent, *UpdateNotificationTopicV1AdminBadRequest, *UpdateNotificationTopicV1AdminUnauthorized, *UpdateNotificationTopicV1AdminForbidden, *UpdateNotificationTopicV1AdminNotFound, *UpdateNotificationTopicV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNotificationTopicV1AdminParams()
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
		ID:                 "updateNotificationTopicV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateNotificationTopicV1AdminNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *UpdateNotificationTopicV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *UpdateNotificationTopicV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *UpdateNotificationTopicV1AdminForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *UpdateNotificationTopicV1AdminNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *UpdateNotificationTopicV1AdminInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNotificationTopicV1AdminShort update topic information by topic name
Update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50216
*/
func (a *Client) UpdateNotificationTopicV1AdminShort(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNotificationTopicV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNotificationTopicV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNotificationTopicV1AdminNoContent:
		return v, nil
	case *UpdateNotificationTopicV1AdminBadRequest:
		return nil, v
	case *UpdateNotificationTopicV1AdminUnauthorized:
		return nil, v
	case *UpdateNotificationTopicV1AdminForbidden:
		return nil, v
	case *UpdateNotificationTopicV1AdminNotFound:
		return nil, v
	case *UpdateNotificationTopicV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteNotificationTopicV1AdminShort instead.

DeleteNotificationTopicV1Admin delete topic information by topic name
Delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50217
*/
func (a *Client) DeleteNotificationTopicV1Admin(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminNoContent, *DeleteNotificationTopicV1AdminUnauthorized, *DeleteNotificationTopicV1AdminForbidden, *DeleteNotificationTopicV1AdminNotFound, *DeleteNotificationTopicV1AdminInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTopicV1AdminParams()
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
		ID:                 "deleteNotificationTopicV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTopicV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteNotificationTopicV1AdminUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteNotificationTopicV1AdminForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteNotificationTopicV1AdminNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteNotificationTopicV1AdminInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNotificationTopicV1AdminShort delete topic information by topic name
Delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50217
*/
func (a *Client) DeleteNotificationTopicV1AdminShort(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTopicV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteNotificationTopicV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTopicV1AdminNoContent:
		return v, nil
	case *DeleteNotificationTopicV1AdminUnauthorized:
		return nil, v
	case *DeleteNotificationTopicV1AdminForbidden:
		return nil, v
	case *DeleteNotificationTopicV1AdminNotFound:
		return nil, v
	case *DeleteNotificationTopicV1AdminInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendSpecificUserFreeformNotificationV1AdminShort instead.

SendSpecificUserFreeformNotificationV1Admin send freeform notification to a user
Sends notification to a user.
Action Code: 50211
*/
func (a *Client) SendSpecificUserFreeformNotificationV1Admin(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminNoContent, *SendSpecificUserFreeformNotificationV1AdminBadRequest, *SendSpecificUserFreeformNotificationV1AdminUnauthorized, *SendSpecificUserFreeformNotificationV1AdminForbidden, *SendSpecificUserFreeformNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserFreeformNotificationV1AdminParams()
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
		ID:                 "sendSpecificUserFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserFreeformNotificationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *SendSpecificUserFreeformNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendSpecificUserFreeformNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendSpecificUserFreeformNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendSpecificUserFreeformNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendSpecificUserFreeformNotificationV1AdminShort send freeform notification to a user
Sends notification to a user.
Action Code: 50211
*/
func (a *Client) SendSpecificUserFreeformNotificationV1AdminShort(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserFreeformNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendSpecificUserFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserFreeformNotificationV1AdminNoContent:
		return v, nil
	case *SendSpecificUserFreeformNotificationV1AdminBadRequest:
		return nil, v
	case *SendSpecificUserFreeformNotificationV1AdminUnauthorized:
		return nil, v
	case *SendSpecificUserFreeformNotificationV1AdminForbidden:
		return nil, v
	case *SendSpecificUserFreeformNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SendSpecificUserTemplatedNotificationV1AdminShort instead.

SendSpecificUserTemplatedNotificationV1Admin send templated notification to specific user
Sends templated notification to a user.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50212
*/
func (a *Client) SendSpecificUserTemplatedNotificationV1Admin(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminNoContent, *SendSpecificUserTemplatedNotificationV1AdminBadRequest, *SendSpecificUserTemplatedNotificationV1AdminUnauthorized, *SendSpecificUserTemplatedNotificationV1AdminForbidden, *SendSpecificUserTemplatedNotificationV1AdminNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserTemplatedNotificationV1AdminParams()
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
		ID:                 "sendSpecificUserTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserTemplatedNotificationV1AdminNoContent:
		return v, nil, nil, nil, nil, nil

	case *SendSpecificUserTemplatedNotificationV1AdminBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SendSpecificUserTemplatedNotificationV1AdminUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *SendSpecificUserTemplatedNotificationV1AdminForbidden:
		return nil, nil, nil, v, nil, nil

	case *SendSpecificUserTemplatedNotificationV1AdminNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendSpecificUserTemplatedNotificationV1AdminShort send templated notification to specific user
Sends templated notification to a user.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50212
*/
func (a *Client) SendSpecificUserTemplatedNotificationV1AdminShort(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserTemplatedNotificationV1AdminParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "sendSpecificUserTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserTemplatedNotificationV1AdminNoContent:
		return v, nil
	case *SendSpecificUserTemplatedNotificationV1AdminBadRequest:
		return nil, v
	case *SendSpecificUserTemplatedNotificationV1AdminUnauthorized:
		return nil, v
	case *SendSpecificUserTemplatedNotificationV1AdminForbidden:
		return nil, v
	case *SendSpecificUserTemplatedNotificationV1AdminNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTopicByNamespaceShort instead.

GetTopicByNamespace get topic by namespace
get topic by namespace.
*/
func (a *Client) GetTopicByNamespace(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceOK, *GetTopicByNamespaceUnauthorized, *GetTopicByNamespaceForbidden, *GetTopicByNamespaceNotFound, *GetTopicByNamespaceInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByNamespaceParams()
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
		ID:                 "getTopicByNamespace",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTopicByNamespaceOK:
		return v, nil, nil, nil, nil, nil

	case *GetTopicByNamespaceUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetTopicByNamespaceForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetTopicByNamespaceNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetTopicByNamespaceInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTopicByNamespaceShort get topic by namespace
get topic by namespace.
*/
func (a *Client) GetTopicByNamespaceShort(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTopicByNamespace",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTopicByNamespaceOK:
		return v, nil
	case *GetTopicByNamespaceUnauthorized:
		return nil, v
	case *GetTopicByNamespaceForbidden:
		return nil, v
	case *GetTopicByNamespaceNotFound:
		return nil, v
	case *GetTopicByNamespaceInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateTopicShort instead.

CreateTopic create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) CreateTopic(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicCreated, *CreateTopicBadRequest, *CreateTopicUnauthorized, *CreateTopicForbidden, *CreateTopicConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicParams()
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
		ID:                 "createTopic",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateTopicCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateTopicBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateTopicUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateTopicForbidden:
		return nil, nil, nil, v, nil, nil

	case *CreateTopicConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTopicShort create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) CreateTopicShort(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createTopic",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTopicCreated:
		return v, nil
	case *CreateTopicBadRequest:
		return nil, v
	case *CreateTopicUnauthorized:
		return nil, v
	case *CreateTopicForbidden:
		return nil, v
	case *CreateTopicConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTopicByTopicNameShort instead.

GetTopicByTopicName get topic information by topic name
get topic information by topic name.
*/
func (a *Client) GetTopicByTopicName(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameOK, *GetTopicByTopicNameUnauthorized, *GetTopicByTopicNameForbidden, *GetTopicByTopicNameNotFound, *GetTopicByTopicNameInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByTopicNameParams()
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
		ID:                 "getTopicByTopicName",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTopicByTopicNameOK:
		return v, nil, nil, nil, nil, nil

	case *GetTopicByTopicNameUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *GetTopicByTopicNameForbidden:
		return nil, nil, v, nil, nil, nil

	case *GetTopicByTopicNameNotFound:
		return nil, nil, nil, v, nil, nil

	case *GetTopicByTopicNameInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTopicByTopicNameShort get topic information by topic name
get topic information by topic name.
*/
func (a *Client) GetTopicByTopicNameShort(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByTopicNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTopicByTopicName",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTopicByTopicNameOK:
		return v, nil
	case *GetTopicByTopicNameUnauthorized:
		return nil, v
	case *GetTopicByTopicNameForbidden:
		return nil, v
	case *GetTopicByTopicNameNotFound:
		return nil, v
	case *GetTopicByTopicNameInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateTopicByTopicNameShort instead.

UpdateTopicByTopicName update topic information by topic name
update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) UpdateTopicByTopicName(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameNoContent, *UpdateTopicByTopicNameUnauthorized, *UpdateTopicByTopicNameForbidden, *UpdateTopicByTopicNameNotFound, *UpdateTopicByTopicNameInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTopicByTopicNameParams()
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
		ID:                 "updateTopicByTopicName",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateTopicByTopicNameNoContent:
		return v, nil, nil, nil, nil, nil

	case *UpdateTopicByTopicNameUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *UpdateTopicByTopicNameForbidden:
		return nil, nil, v, nil, nil, nil

	case *UpdateTopicByTopicNameNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdateTopicByTopicNameInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTopicByTopicNameShort update topic information by topic name
update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) UpdateTopicByTopicNameShort(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTopicByTopicNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateTopicByTopicName",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTopicByTopicNameNoContent:
		return v, nil
	case *UpdateTopicByTopicNameUnauthorized:
		return nil, v
	case *UpdateTopicByTopicNameForbidden:
		return nil, v
	case *UpdateTopicByTopicNameNotFound:
		return nil, v
	case *UpdateTopicByTopicNameInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteTopicByTopicNameShort instead.

DeleteTopicByTopicName delete topic information by topic name
delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) DeleteTopicByTopicName(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameNoContent, *DeleteTopicByTopicNameUnauthorized, *DeleteTopicByTopicNameForbidden, *DeleteTopicByTopicNameNotFound, *DeleteTopicByTopicNameInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicByTopicNameParams()
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
		ID:                 "deleteTopicByTopicName",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicByTopicNameNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteTopicByTopicNameUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteTopicByTopicNameForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteTopicByTopicNameNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteTopicByTopicNameInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTopicByTopicNameShort delete topic information by topic name
delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) DeleteTopicByTopicNameShort(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicByTopicNameParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteTopicByTopicName",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicByTopicNameNoContent:
		return v, nil
	case *DeleteTopicByTopicNameUnauthorized:
		return nil, v
	case *DeleteTopicByTopicNameForbidden:
		return nil, v
	case *DeleteTopicByTopicNameNotFound:
		return nil, v
	case *DeleteTopicByTopicNameInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use FreeFormNotificationByUserIDShort instead.

FreeFormNotificationByUserID send freeform notification to a user
Sends notification to a user.
*/
func (a *Client) FreeFormNotificationByUserID(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDNoContent, *FreeFormNotificationByUserIDBadRequest, *FreeFormNotificationByUserIDUnauthorized, *FreeFormNotificationByUserIDForbidden, *FreeFormNotificationByUserIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationByUserIDParams()
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
		ID:                 "freeFormNotificationByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationByUserIDNoContent:
		return v, nil, nil, nil, nil, nil

	case *FreeFormNotificationByUserIDBadRequest:
		return nil, v, nil, nil, nil, nil

	case *FreeFormNotificationByUserIDUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *FreeFormNotificationByUserIDForbidden:
		return nil, nil, nil, v, nil, nil

	case *FreeFormNotificationByUserIDNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FreeFormNotificationByUserIDShort send freeform notification to a user
Sends notification to a user.
*/
func (a *Client) FreeFormNotificationByUserIDShort(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "freeFormNotificationByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationByUserIDNoContent:
		return v, nil
	case *FreeFormNotificationByUserIDBadRequest:
		return nil, v
	case *FreeFormNotificationByUserIDUnauthorized:
		return nil, v
	case *FreeFormNotificationByUserIDForbidden:
		return nil, v
	case *FreeFormNotificationByUserIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use NotificationWithTemplateByUserIDShort instead.

NotificationWithTemplateByUserID send notification to a user with template
Sends notification to a user with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplateByUserID(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDNoContent, *NotificationWithTemplateByUserIDBadRequest, *NotificationWithTemplateByUserIDUnauthorized, *NotificationWithTemplateByUserIDForbidden, *NotificationWithTemplateByUserIDNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateByUserIDParams()
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
		ID:                 "notificationWithTemplateByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateByUserIDNoContent:
		return v, nil, nil, nil, nil, nil

	case *NotificationWithTemplateByUserIDBadRequest:
		return nil, v, nil, nil, nil, nil

	case *NotificationWithTemplateByUserIDUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *NotificationWithTemplateByUserIDForbidden:
		return nil, nil, nil, v, nil, nil

	case *NotificationWithTemplateByUserIDNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
NotificationWithTemplateByUserIDShort send notification to a user with template
Sends notification to a user with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplateByUserIDShort(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "notificationWithTemplateByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateByUserIDNoContent:
		return v, nil
	case *NotificationWithTemplateByUserIDBadRequest:
		return nil, v
	case *NotificationWithTemplateByUserIDUnauthorized:
		return nil, v
	case *NotificationWithTemplateByUserIDForbidden:
		return nil, v
	case *NotificationWithTemplateByUserIDNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
