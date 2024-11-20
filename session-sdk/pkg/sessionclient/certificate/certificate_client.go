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
	AdminUploadXBoxCertificate(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateOK, *AdminUploadXBoxCertificateBadRequest, *AdminUploadXBoxCertificateUnauthorized, *AdminUploadXBoxCertificateForbidden, *AdminUploadXBoxCertificateNotFound, *AdminUploadXBoxCertificateInternalServerError, error)
	AdminUploadXBoxCertificateShort(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminUploadXBoxCertificateShort instead.

AdminUploadXBoxCertificate upload certificates for xbox.
Upload certificates for XBox. Certificate must be in the valid form of PFX format.
*/
func (a *Client) AdminUploadXBoxCertificate(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateOK, *AdminUploadXBoxCertificateBadRequest, *AdminUploadXBoxCertificateUnauthorized, *AdminUploadXBoxCertificateForbidden, *AdminUploadXBoxCertificateNotFound, *AdminUploadXBoxCertificateInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadXBoxCertificateParams()
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
		ID:                 "adminUploadXBoxCertificate",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadXBoxCertificateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUploadXBoxCertificateOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUploadXBoxCertificateBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUploadXBoxCertificateUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUploadXBoxCertificateForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUploadXBoxCertificateNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUploadXBoxCertificateInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadXBoxCertificateShort upload certificates for xbox.
Upload certificates for XBox. Certificate must be in the valid form of PFX format.
*/
func (a *Client) AdminUploadXBoxCertificateShort(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadXBoxCertificateParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUploadXBoxCertificate",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadXBoxCertificateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadXBoxCertificateOK:
		return v, nil
	case *AdminUploadXBoxCertificateBadRequest:
		return nil, v
	case *AdminUploadXBoxCertificateUnauthorized:
		return nil, v
	case *AdminUploadXBoxCertificateForbidden:
		return nil, v
	case *AdminUploadXBoxCertificateNotFound:
		return nil, v
	case *AdminUploadXBoxCertificateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
