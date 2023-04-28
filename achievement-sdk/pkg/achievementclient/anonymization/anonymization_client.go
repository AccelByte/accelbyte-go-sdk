// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminAnonymizeUserAchievement(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementNoContent, *AdminAnonymizeUserAchievementUnauthorized, *AdminAnonymizeUserAchievementInternalServerError, error)
	AdminAnonymizeUserAchievementShort(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminAnonymizeUserAchievementShort instead.

AdminAnonymizeUserAchievement anonymize user's achievement


This API will delete specified user achievement




Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]`
*/
func (a *Client) AdminAnonymizeUserAchievement(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementNoContent, *AdminAnonymizeUserAchievementUnauthorized, *AdminAnonymizeUserAchievementInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAnonymizeUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAnonymizeUserAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAnonymizeUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAnonymizeUserAchievementNoContent:
		return v, nil, nil, nil

	case *AdminAnonymizeUserAchievementUnauthorized:
		return nil, v, nil, nil

	case *AdminAnonymizeUserAchievementInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAnonymizeUserAchievementShort anonymize user's achievement


This API will delete specified user achievement




Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]`
*/
func (a *Client) AdminAnonymizeUserAchievementShort(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAnonymizeUserAchievementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAnonymizeUserAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAnonymizeUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAnonymizeUserAchievementNoContent:
		return v, nil
	case *AdminAnonymizeUserAchievementUnauthorized:
		return nil, v
	case *AdminAnonymizeUserAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
