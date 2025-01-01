// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package iap_notification

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new iap notification API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for iap notification API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryThirdPartyNotifications(params *QueryThirdPartyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartyNotificationsOK, error)
	QueryThirdPartyNotificationsShort(params *QueryThirdPartyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartyNotificationsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QueryThirdPartyNotificationsShort instead.

QueryThirdPartyNotifications query third party notifications
Query third party notifications.
Other detail info:
                          * Returns : Third Party Platform notifications
*/
func (a *Client) QueryThirdPartyNotifications(params *QueryThirdPartyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartyNotificationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryThirdPartyNotificationsParams()
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
		ID:                 "queryThirdPartyNotifications",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryThirdPartyNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryThirdPartyNotificationsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryThirdPartyNotificationsShort query third party notifications
Query third party notifications.
Other detail info:
                          * Returns : Third Party Platform notifications
*/
func (a *Client) QueryThirdPartyNotificationsShort(params *QueryThirdPartyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartyNotificationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryThirdPartyNotificationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryThirdPartyNotifications",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryThirdPartyNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryThirdPartyNotificationsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
