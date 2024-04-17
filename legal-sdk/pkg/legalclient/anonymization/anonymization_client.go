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
	AnonymizeUserAgreement(params *AnonymizeUserAgreementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserAgreementNoContent, *AnonymizeUserAgreementNotFound, error)
	AnonymizeUserAgreementShort(params *AnonymizeUserAgreementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserAgreementNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AnonymizeUserAgreementShort instead.

AnonymizeUserAgreement anonymize user's agreement record
This API will anonymize agreement record for specified user.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=8 (DELETE)
*/
func (a *Client) AnonymizeUserAgreement(params *AnonymizeUserAgreementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserAgreementNoContent, *AnonymizeUserAgreementNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeUserAgreementParams()
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
		ID:                 "anonymizeUserAgreement",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/users/{userId}/anonymization/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeUserAgreementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AnonymizeUserAgreementNoContent:
		return v, nil, nil

	case *AnonymizeUserAgreementNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AnonymizeUserAgreementShort anonymize user's agreement record
This API will anonymize agreement record for specified user.
Other detail info:
      * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=8 (DELETE)
*/
func (a *Client) AnonymizeUserAgreementShort(params *AnonymizeUserAgreementParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserAgreementNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeUserAgreementParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "anonymizeUserAgreement",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/users/{userId}/anonymization/agreements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeUserAgreementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeUserAgreementNoContent:
		return v, nil
	case *AnonymizeUserAgreementNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
