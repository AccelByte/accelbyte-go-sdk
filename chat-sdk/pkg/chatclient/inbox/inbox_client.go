// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package inbox

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new inbox API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for inbox API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetInboxCategories(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, *AdminGetInboxCategoriesBadRequest, *AdminGetInboxCategoriesUnauthorized, *AdminGetInboxCategoriesForbidden, *AdminGetInboxCategoriesInternalServerError, error)
	AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, error)
	AdminAddInboxCategory(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, *AdminAddInboxCategoryBadRequest, *AdminAddInboxCategoryUnauthorized, *AdminAddInboxCategoryForbidden, *AdminAddInboxCategoryInternalServerError, error)
	AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, error)
	AdminDeleteInboxCategory(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, *AdminDeleteInboxCategoryBadRequest, *AdminDeleteInboxCategoryUnauthorized, *AdminDeleteInboxCategoryForbidden, *AdminDeleteInboxCategoryInternalServerError, error)
	AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, error)
	AdminUpdateInboxCategory(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, *AdminUpdateInboxCategoryBadRequest, *AdminUpdateInboxCategoryUnauthorized, *AdminUpdateInboxCategoryForbidden, *AdminUpdateInboxCategoryInternalServerError, error)
	AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, error)
	AdminGetCategorySchema(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, *AdminGetCategorySchemaBadRequest, *AdminGetCategorySchemaUnauthorized, *AdminGetCategorySchemaForbidden, *AdminGetCategorySchemaNotFound, *AdminGetCategorySchemaInternalServerError, error)
	AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, error)
	AdminListKafkaTopic(params *AdminListKafkaTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListKafkaTopicOK, *AdminListKafkaTopicUnauthorized, *AdminListKafkaTopicForbidden, *AdminListKafkaTopicInternalServerError, error)
	AdminListKafkaTopicShort(params *AdminListKafkaTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListKafkaTopicOK, error)
	AdminDeleteInboxMessage(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, *AdminDeleteInboxMessageBadRequest, *AdminDeleteInboxMessageUnauthorized, *AdminDeleteInboxMessageForbidden, *AdminDeleteInboxMessageInternalServerError, error)
	AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, error)
	AdminGetInboxMessages(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, *AdminGetInboxMessagesBadRequest, *AdminGetInboxMessagesUnauthorized, *AdminGetInboxMessagesForbidden, *AdminGetInboxMessagesInternalServerError, error)
	AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, error)
	AdminSaveInboxMessage(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, *AdminSaveInboxMessageBadRequest, *AdminSaveInboxMessageUnauthorized, *AdminSaveInboxMessageForbidden, *AdminSaveInboxMessageInternalServerError, error)
	AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, error)
	AdminUnsendInboxMessage(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, *AdminUnsendInboxMessageBadRequest, *AdminUnsendInboxMessageUnauthorized, *AdminUnsendInboxMessageForbidden, *AdminUnsendInboxMessageInternalServerError, error)
	AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, error)
	AdminGetInboxUsers(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, *AdminGetInboxUsersBadRequest, *AdminGetInboxUsersUnauthorized, *AdminGetInboxUsersForbidden, *AdminGetInboxUsersInternalServerError, error)
	AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, error)
	AdminUpdateInboxMessage(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, *AdminUpdateInboxMessageBadRequest, *AdminUpdateInboxMessageUnauthorized, *AdminUpdateInboxMessageForbidden, *AdminUpdateInboxMessageInternalServerError, error)
	AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, error)
	AdminSendInboxMessage(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, *AdminSendInboxMessageBadRequest, *AdminSendInboxMessageUnauthorized, *AdminSendInboxMessageForbidden, *AdminSendInboxMessageInternalServerError, error)
	AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, error)
	AdminGetInboxStats(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, *AdminGetInboxStatsBadRequest, *AdminGetInboxStatsUnauthorized, *AdminGetInboxStatsForbidden, *AdminGetInboxStatsInternalServerError, error)
	AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetInboxCategoriesShort instead.

AdminGetInboxCategories admin get inbox categories
Get inbox categories
*/
func (a *Client) AdminGetInboxCategories(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, *AdminGetInboxCategoriesBadRequest, *AdminGetInboxCategoriesUnauthorized, *AdminGetInboxCategoriesForbidden, *AdminGetInboxCategoriesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxCategoriesParams()
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
		ID:                 "adminGetInboxCategories",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxCategoriesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetInboxCategoriesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetInboxCategoriesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetInboxCategoriesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetInboxCategoriesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxCategoriesShort admin get inbox categories
Get inbox categories
*/
func (a *Client) AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetInboxCategories",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxCategoriesOK:
		return v, nil
	case *AdminGetInboxCategoriesBadRequest:
		return nil, v
	case *AdminGetInboxCategoriesUnauthorized:
		return nil, v
	case *AdminGetInboxCategoriesForbidden:
		return nil, v
	case *AdminGetInboxCategoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddInboxCategoryShort instead.

AdminAddInboxCategory add inbox category
Add inbox category.
*/
func (a *Client) AdminAddInboxCategory(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, *AdminAddInboxCategoryBadRequest, *AdminAddInboxCategoryUnauthorized, *AdminAddInboxCategoryForbidden, *AdminAddInboxCategoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddInboxCategoryParams()
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
		ID:                 "adminAddInboxCategory",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddInboxCategoryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminAddInboxCategoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminAddInboxCategoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminAddInboxCategoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminAddInboxCategoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddInboxCategoryShort add inbox category
Add inbox category.
*/
func (a *Client) AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddInboxCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddInboxCategory",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddInboxCategoryOK:
		return v, nil
	case *AdminAddInboxCategoryBadRequest:
		return nil, v
	case *AdminAddInboxCategoryUnauthorized:
		return nil, v
	case *AdminAddInboxCategoryForbidden:
		return nil, v
	case *AdminAddInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteInboxCategoryShort instead.

AdminDeleteInboxCategory admin delete inbox category
Delete inbox category
*/
func (a *Client) AdminDeleteInboxCategory(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, *AdminDeleteInboxCategoryBadRequest, *AdminDeleteInboxCategoryUnauthorized, *AdminDeleteInboxCategoryForbidden, *AdminDeleteInboxCategoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxCategoryParams()
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
		ID:                 "adminDeleteInboxCategory",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxCategoryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteInboxCategoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteInboxCategoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteInboxCategoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteInboxCategoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxCategoryShort admin delete inbox category
Delete inbox category
*/
func (a *Client) AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteInboxCategory",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxCategoryOK:
		return v, nil
	case *AdminDeleteInboxCategoryBadRequest:
		return nil, v
	case *AdminDeleteInboxCategoryUnauthorized:
		return nil, v
	case *AdminDeleteInboxCategoryForbidden:
		return nil, v
	case *AdminDeleteInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateInboxCategoryShort instead.

AdminUpdateInboxCategory admin update inbox category
Update inbox category
*/
func (a *Client) AdminUpdateInboxCategory(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, *AdminUpdateInboxCategoryBadRequest, *AdminUpdateInboxCategoryUnauthorized, *AdminUpdateInboxCategoryForbidden, *AdminUpdateInboxCategoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxCategoryParams()
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
		ID:                 "adminUpdateInboxCategory",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxCategoryOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateInboxCategoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateInboxCategoryUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateInboxCategoryForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateInboxCategoryInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxCategoryShort admin update inbox category
Update inbox category
*/
func (a *Client) AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateInboxCategory",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxCategoryOK:
		return v, nil
	case *AdminUpdateInboxCategoryBadRequest:
		return nil, v
	case *AdminUpdateInboxCategoryUnauthorized:
		return nil, v
	case *AdminUpdateInboxCategoryForbidden:
		return nil, v
	case *AdminUpdateInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetCategorySchemaShort instead.

AdminGetCategorySchema admin get category schema
Get category schema.
*/
func (a *Client) AdminGetCategorySchema(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, *AdminGetCategorySchemaBadRequest, *AdminGetCategorySchemaUnauthorized, *AdminGetCategorySchemaForbidden, *AdminGetCategorySchemaNotFound, *AdminGetCategorySchemaInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCategorySchemaParams()
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
		ID:                 "adminGetCategorySchema",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCategorySchemaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetCategorySchemaOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetCategorySchemaBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetCategorySchemaUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetCategorySchemaForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetCategorySchemaNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetCategorySchemaInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCategorySchemaShort admin get category schema
Get category schema.
*/
func (a *Client) AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCategorySchemaParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetCategorySchema",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCategorySchemaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCategorySchemaOK:
		return v, nil
	case *AdminGetCategorySchemaBadRequest:
		return nil, v
	case *AdminGetCategorySchemaUnauthorized:
		return nil, v
	case *AdminGetCategorySchemaForbidden:
		return nil, v
	case *AdminGetCategorySchemaNotFound:
		return nil, v
	case *AdminGetCategorySchemaInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListKafkaTopicShort instead.

AdminListKafkaTopic admin get list kafka topic
Get list kafka topic. example result chat,sessionNotification
*/
func (a *Client) AdminListKafkaTopic(params *AdminListKafkaTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListKafkaTopicOK, *AdminListKafkaTopicUnauthorized, *AdminListKafkaTopicForbidden, *AdminListKafkaTopicInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListKafkaTopicParams()
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
		ID:                 "adminListKafkaTopic",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListKafkaTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListKafkaTopicOK:
		return v, nil, nil, nil, nil

	case *AdminListKafkaTopicUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminListKafkaTopicForbidden:
		return nil, nil, v, nil, nil

	case *AdminListKafkaTopicInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListKafkaTopicShort admin get list kafka topic
Get list kafka topic. example result chat,sessionNotification
*/
func (a *Client) AdminListKafkaTopicShort(params *AdminListKafkaTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListKafkaTopicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListKafkaTopicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListKafkaTopic",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListKafkaTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListKafkaTopicOK:
		return v, nil
	case *AdminListKafkaTopicUnauthorized:
		return nil, v
	case *AdminListKafkaTopicForbidden:
		return nil, v
	case *AdminListKafkaTopicInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteInboxMessageShort instead.

AdminDeleteInboxMessage admin delete inbox message
Delete inbox message
*/
func (a *Client) AdminDeleteInboxMessage(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, *AdminDeleteInboxMessageBadRequest, *AdminDeleteInboxMessageUnauthorized, *AdminDeleteInboxMessageForbidden, *AdminDeleteInboxMessageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxMessageParams()
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
		ID:                 "adminDeleteInboxMessage",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxMessageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteInboxMessageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteInboxMessageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteInboxMessageForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteInboxMessageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxMessageShort admin delete inbox message
Delete inbox message
*/
func (a *Client) AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxMessageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteInboxMessage",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxMessageOK:
		return v, nil
	case *AdminDeleteInboxMessageBadRequest:
		return nil, v
	case *AdminDeleteInboxMessageUnauthorized:
		return nil, v
	case *AdminDeleteInboxMessageForbidden:
		return nil, v
	case *AdminDeleteInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetInboxMessagesShort instead.

AdminGetInboxMessages admin get inbox messages
Get inbox messages
*/
func (a *Client) AdminGetInboxMessages(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, *AdminGetInboxMessagesBadRequest, *AdminGetInboxMessagesUnauthorized, *AdminGetInboxMessagesForbidden, *AdminGetInboxMessagesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxMessagesParams()
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
		ID:                 "adminGetInboxMessages",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxMessagesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetInboxMessagesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetInboxMessagesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetInboxMessagesForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetInboxMessagesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxMessagesShort admin get inbox messages
Get inbox messages
*/
func (a *Client) AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxMessagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetInboxMessages",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxMessagesOK:
		return v, nil
	case *AdminGetInboxMessagesBadRequest:
		return nil, v
	case *AdminGetInboxMessagesUnauthorized:
		return nil, v
	case *AdminGetInboxMessagesForbidden:
		return nil, v
	case *AdminGetInboxMessagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSaveInboxMessageShort instead.

AdminSaveInboxMessage admin save inbox message
Save inbox message
*/
func (a *Client) AdminSaveInboxMessage(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, *AdminSaveInboxMessageBadRequest, *AdminSaveInboxMessageUnauthorized, *AdminSaveInboxMessageForbidden, *AdminSaveInboxMessageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveInboxMessageParams()
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
		ID:                 "adminSaveInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSaveInboxMessageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminSaveInboxMessageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSaveInboxMessageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSaveInboxMessageForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSaveInboxMessageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveInboxMessageShort admin save inbox message
Save inbox message
*/
func (a *Client) AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveInboxMessageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSaveInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveInboxMessageOK:
		return v, nil
	case *AdminSaveInboxMessageBadRequest:
		return nil, v
	case *AdminSaveInboxMessageUnauthorized:
		return nil, v
	case *AdminSaveInboxMessageForbidden:
		return nil, v
	case *AdminSaveInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUnsendInboxMessageShort instead.

AdminUnsendInboxMessage admin unsend inbox message
Unsend inbox message
*/
func (a *Client) AdminUnsendInboxMessage(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, *AdminUnsendInboxMessageBadRequest, *AdminUnsendInboxMessageUnauthorized, *AdminUnsendInboxMessageForbidden, *AdminUnsendInboxMessageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnsendInboxMessageParams()
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
		ID:                 "adminUnsendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnsendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUnsendInboxMessageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUnsendInboxMessageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUnsendInboxMessageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUnsendInboxMessageForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUnsendInboxMessageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnsendInboxMessageShort admin unsend inbox message
Unsend inbox message
*/
func (a *Client) AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnsendInboxMessageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUnsendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnsendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnsendInboxMessageOK:
		return v, nil
	case *AdminUnsendInboxMessageBadRequest:
		return nil, v
	case *AdminUnsendInboxMessageUnauthorized:
		return nil, v
	case *AdminUnsendInboxMessageForbidden:
		return nil, v
	case *AdminUnsendInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetInboxUsersShort instead.

AdminGetInboxUsers admin get inbox users
Get inbox users
*/
func (a *Client) AdminGetInboxUsers(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, *AdminGetInboxUsersBadRequest, *AdminGetInboxUsersUnauthorized, *AdminGetInboxUsersForbidden, *AdminGetInboxUsersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxUsersParams()
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
		ID:                 "adminGetInboxUsers",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxUsersOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetInboxUsersBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetInboxUsersUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetInboxUsersForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetInboxUsersInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxUsersShort admin get inbox users
Get inbox users
*/
func (a *Client) AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetInboxUsers",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxUsersOK:
		return v, nil
	case *AdminGetInboxUsersBadRequest:
		return nil, v
	case *AdminGetInboxUsersUnauthorized:
		return nil, v
	case *AdminGetInboxUsersForbidden:
		return nil, v
	case *AdminGetInboxUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateInboxMessageShort instead.

AdminUpdateInboxMessage admin update inbox message
Update inbox message
*/
func (a *Client) AdminUpdateInboxMessage(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, *AdminUpdateInboxMessageBadRequest, *AdminUpdateInboxMessageUnauthorized, *AdminUpdateInboxMessageForbidden, *AdminUpdateInboxMessageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxMessageParams()
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
		ID:                 "adminUpdateInboxMessage",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxMessageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateInboxMessageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateInboxMessageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateInboxMessageForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateInboxMessageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxMessageShort admin update inbox message
Update inbox message
*/
func (a *Client) AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxMessageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateInboxMessage",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxMessageOK:
		return v, nil
	case *AdminUpdateInboxMessageBadRequest:
		return nil, v
	case *AdminUpdateInboxMessageUnauthorized:
		return nil, v
	case *AdminUpdateInboxMessageForbidden:
		return nil, v
	case *AdminUpdateInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSendInboxMessageShort instead.

AdminSendInboxMessage admin send inbox message
Send inbox message
*/
func (a *Client) AdminSendInboxMessage(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, *AdminSendInboxMessageBadRequest, *AdminSendInboxMessageUnauthorized, *AdminSendInboxMessageForbidden, *AdminSendInboxMessageInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendInboxMessageParams()
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
		ID:                 "adminSendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSendInboxMessageOK:
		return v, nil, nil, nil, nil, nil

	case *AdminSendInboxMessageBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminSendInboxMessageUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminSendInboxMessageForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminSendInboxMessageInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendInboxMessageShort admin send inbox message
Send inbox message
*/
func (a *Client) AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendInboxMessageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendInboxMessageOK:
		return v, nil
	case *AdminSendInboxMessageBadRequest:
		return nil, v
	case *AdminSendInboxMessageUnauthorized:
		return nil, v
	case *AdminSendInboxMessageForbidden:
		return nil, v
	case *AdminSendInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetInboxStatsShort instead.

AdminGetInboxStats admin get inbox stats
Get inbox stats
*/
func (a *Client) AdminGetInboxStats(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, *AdminGetInboxStatsBadRequest, *AdminGetInboxStatsUnauthorized, *AdminGetInboxStatsForbidden, *AdminGetInboxStatsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxStatsParams()
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
		ID:                 "adminGetInboxStats",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxStatsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetInboxStatsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetInboxStatsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetInboxStatsForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetInboxStatsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxStatsShort admin get inbox stats
Get inbox stats
*/
func (a *Client) AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxStatsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetInboxStats",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxStatsOK:
		return v, nil
	case *AdminGetInboxStatsBadRequest:
		return nil, v
	case *AdminGetInboxStatsUnauthorized:
		return nil, v
	case *AdminGetInboxStatsForbidden:
		return nil, v
	case *AdminGetInboxStatsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
