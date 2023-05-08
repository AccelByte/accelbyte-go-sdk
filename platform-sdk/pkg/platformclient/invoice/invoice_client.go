// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package invoice

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new invoice API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for invoice API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DownloadInvoiceDetails(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsOK, error)
	DownloadInvoiceDetailsShort(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsOK, error)
	GenerateInvoiceSummary(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryOK, *GenerateInvoiceSummaryUnprocessableEntity, error)
	GenerateInvoiceSummaryShort(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use DownloadInvoiceDetailsShort instead.

DownloadInvoiceDetails download invoice details
Download invoice details as a csv file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2 (READ)
  *  Returns : invoice details csv file
*/
func (a *Client) DownloadInvoiceDetails(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadInvoiceDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "downloadInvoiceDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/details.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadInvoiceDetailsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadInvoiceDetailsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadInvoiceDetailsShort download invoice details
Download invoice details as a csv file.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2 (READ)
  *  Returns : invoice details csv file
*/
func (a *Client) DownloadInvoiceDetailsShort(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadInvoiceDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "downloadInvoiceDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/details.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadInvoiceDetailsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadInvoiceDetailsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GenerateInvoiceSummaryShort instead.

GenerateInvoiceSummary generate invoice summary
Generate invoice summary.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2 (READ)
  *  Returns : query orders
*/
func (a *Client) GenerateInvoiceSummary(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryOK, *GenerateInvoiceSummaryUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateInvoiceSummaryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generateInvoiceSummary",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateInvoiceSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GenerateInvoiceSummaryOK:
		return v, nil, nil

	case *GenerateInvoiceSummaryUnprocessableEntity:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GenerateInvoiceSummaryShort generate invoice summary
Generate invoice summary.
Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2 (READ)
  *  Returns : query orders
*/
func (a *Client) GenerateInvoiceSummaryShort(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateInvoiceSummaryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "generateInvoiceSummary",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateInvoiceSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GenerateInvoiceSummaryOK:
		return v, nil
	case *GenerateInvoiceSummaryUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
