// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package public_reports

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public reports API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public reports API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SubmitReport(params *SubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*SubmitReportCreated, *SubmitReportBadRequest, *SubmitReportConflict, *SubmitReportTooManyRequests, *SubmitReportInternalServerError, error)
	SubmitReportShort(params *SubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*SubmitReportCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use SubmitReportShort instead.

SubmitReport submit a report
User need to be authenticated to access this endpoint.
Submit a report and will return ticket for reported object.
New ticket will be created if no OPEN ticket present for reported object (based by objectId and objectType) in a namespace.

User can only submit report once for each different user / object reported in the same OPEN ticket.
Reporting the same user / object in the same OPEN ticket will return HTTP code 409 (conflict).

Fill the 'reason' field with a 'reason title'
Supported category:

  * UGC
  * USER
  * CHAT
  * EXTENSION
*/
func (a *Client) SubmitReport(params *SubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*SubmitReportCreated, *SubmitReportBadRequest, *SubmitReportConflict, *SubmitReportTooManyRequests, *SubmitReportInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSubmitReportParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "submitReport",
		Method:             "POST",
		PathPattern:        "/reporting/v1/public/namespaces/{namespace}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SubmitReportReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SubmitReportCreated:
		return v, nil, nil, nil, nil, nil

	case *SubmitReportBadRequest:
		return nil, v, nil, nil, nil, nil

	case *SubmitReportConflict:
		return nil, nil, v, nil, nil, nil

	case *SubmitReportTooManyRequests:
		return nil, nil, nil, v, nil, nil

	case *SubmitReportInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SubmitReportShort submit a report
User need to be authenticated to access this endpoint.
Submit a report and will return ticket for reported object.
New ticket will be created if no OPEN ticket present for reported object (based by objectId and objectType) in a namespace.

User can only submit report once for each different user / object reported in the same OPEN ticket.
Reporting the same user / object in the same OPEN ticket will return HTTP code 409 (conflict).

Fill the 'reason' field with a 'reason title'
Supported category:

  * UGC
  * USER
  * CHAT
  * EXTENSION
*/
func (a *Client) SubmitReportShort(params *SubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*SubmitReportCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSubmitReportParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "submitReport",
		Method:             "POST",
		PathPattern:        "/reporting/v1/public/namespaces/{namespace}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SubmitReportReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SubmitReportCreated:
		return v, nil
	case *SubmitReportBadRequest:
		return nil, v
	case *SubmitReportConflict:
		return nil, v
	case *SubmitReportTooManyRequests:
		return nil, v
	case *SubmitReportInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
