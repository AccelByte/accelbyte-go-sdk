// Code generated by go-swagger; DO NOT EDIT.

package utility

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new utility API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for utility API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CheckReadiness(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error)
	CheckReadinessShort(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  CheckReadiness checks legal data readiness

  Readiness status defined as at least one legal basePolicy is present and having active basePolicy.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;NAMESPACE:{namespace}:LEGAL&#34;, action=2 (READ)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) CheckReadiness(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckReadinessParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkReadiness",
		Method:             "GET",
		PathPattern:        "/agreement/public/readiness",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckReadinessReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckReadinessOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) CheckReadinessShort(params *CheckReadinessParams, authInfo runtime.ClientAuthInfoWriter) (*CheckReadinessOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckReadinessParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkReadiness",
		Method:             "GET",
		PathPattern:        "/agreement/public/readiness",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckReadinessReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckReadinessOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
