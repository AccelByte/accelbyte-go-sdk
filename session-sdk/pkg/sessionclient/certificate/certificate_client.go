// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package certificate

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new certificate API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for certificate API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	HandleUploadXboxPFXCertificate(params *HandleUploadXboxPFXCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*HandleUploadXboxPFXCertificateOK, *HandleUploadXboxPFXCertificateBadRequest, *HandleUploadXboxPFXCertificateUnauthorized, *HandleUploadXboxPFXCertificateForbidden, *HandleUploadXboxPFXCertificateNotFound, *HandleUploadXboxPFXCertificateInternalServerError, error)
	HandleUploadXboxPFXCertificateShort(params *HandleUploadXboxPFXCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*HandleUploadXboxPFXCertificateOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use HandleUploadXboxPFXCertificateShort instead.

HandleUploadXboxPFXCertificate upload certificates for xbox. requires admin:namespace:{namespace}:session:certificates [update]
Upload certificates for xbox. Certificate must be in the valid form of PFX format.
*/
func (a *Client) HandleUploadXboxPFXCertificate(params *HandleUploadXboxPFXCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*HandleUploadXboxPFXCertificateOK, *HandleUploadXboxPFXCertificateBadRequest, *HandleUploadXboxPFXCertificateUnauthorized, *HandleUploadXboxPFXCertificateForbidden, *HandleUploadXboxPFXCertificateNotFound, *HandleUploadXboxPFXCertificateInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHandleUploadXboxPFXCertificateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "HandleUploadXboxPFXCertificate",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HandleUploadXboxPFXCertificateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *HandleUploadXboxPFXCertificateOK:
		return v, nil, nil, nil, nil, nil, nil

	case *HandleUploadXboxPFXCertificateBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *HandleUploadXboxPFXCertificateUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *HandleUploadXboxPFXCertificateForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *HandleUploadXboxPFXCertificateNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *HandleUploadXboxPFXCertificateInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HandleUploadXboxPFXCertificateShort upload certificates for xbox. requires admin:namespace:{namespace}:session:certificates [update]
Upload certificates for xbox. Certificate must be in the valid form of PFX format.
*/
func (a *Client) HandleUploadXboxPFXCertificateShort(params *HandleUploadXboxPFXCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*HandleUploadXboxPFXCertificateOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHandleUploadXboxPFXCertificateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "HandleUploadXboxPFXCertificate",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HandleUploadXboxPFXCertificateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HandleUploadXboxPFXCertificateOK:
		return v, nil
	case *HandleUploadXboxPFXCertificateBadRequest:
		return nil, v
	case *HandleUploadXboxPFXCertificateUnauthorized:
		return nil, v
	case *HandleUploadXboxPFXCertificateForbidden:
		return nil, v
	case *HandleUploadXboxPFXCertificateNotFound:
		return nil, v
	case *HandleUploadXboxPFXCertificateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
