// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package platform_account_closure_client

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform account closure client API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform account closure client API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPlatformAccountClosureClients(params *AdminGetPlatformAccountClosureClientsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientsOK, *AdminGetPlatformAccountClosureClientsBadRequest, *AdminGetPlatformAccountClosureClientsUnauthorized, *AdminGetPlatformAccountClosureClientsForbidden, *AdminGetPlatformAccountClosureClientsNotFound, *AdminGetPlatformAccountClosureClientsInternalServerError, error)
	AdminGetPlatformAccountClosureClientsShort(params *AdminGetPlatformAccountClosureClientsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientsOK, error)
	AdminValidateXboxBPCertFile(params *AdminValidateXboxBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminValidateXboxBPCertFileOK, *AdminValidateXboxBPCertFileBadRequest, *AdminValidateXboxBPCertFileUnauthorized, *AdminValidateXboxBPCertFileForbidden, *AdminValidateXboxBPCertFileNotFound, *AdminValidateXboxBPCertFileInternalServerError, error)
	AdminValidateXboxBPCertFileShort(params *AdminValidateXboxBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminValidateXboxBPCertFileOK, error)
	AdminGetPlatformAccountClosureClient(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, *AdminGetPlatformAccountClosureClientBadRequest, *AdminGetPlatformAccountClosureClientUnauthorized, *AdminGetPlatformAccountClosureClientForbidden, *AdminGetPlatformAccountClosureClientNotFound, *AdminGetPlatformAccountClosureClientInternalServerError, error)
	AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, error)
	AdminUpdatePlatformAccountClosureClient(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, *AdminUpdatePlatformAccountClosureClientBadRequest, *AdminUpdatePlatformAccountClosureClientUnauthorized, *AdminUpdatePlatformAccountClosureClientForbidden, *AdminUpdatePlatformAccountClosureClientInternalServerError, error)
	AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, error)
	AdminDeletePlatformAccountClosureClient(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, *AdminDeletePlatformAccountClosureClientBadRequest, *AdminDeletePlatformAccountClosureClientUnauthorized, *AdminDeletePlatformAccountClosureClientForbidden, *AdminDeletePlatformAccountClosureClientNotFound, *AdminDeletePlatformAccountClosureClientInternalServerError, error)
	AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, error)
	AdminMockPlatformAccountClosureData(params *AdminMockPlatformAccountClosureDataParams, authInfo runtime.ClientAuthInfoWriter) (*AdminMockPlatformAccountClosureDataNoContent, *AdminMockPlatformAccountClosureDataBadRequest, *AdminMockPlatformAccountClosureDataUnauthorized, *AdminMockPlatformAccountClosureDataForbidden, *AdminMockPlatformAccountClosureDataInternalServerError, error)
	AdminMockPlatformAccountClosureDataShort(params *AdminMockPlatformAccountClosureDataParams, authInfo runtime.ClientAuthInfoWriter) (*AdminMockPlatformAccountClosureDataNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlatformAccountClosureClientsShort instead.

AdminGetPlatformAccountClosureClients get platform account closure configs
Get platform account closure configs.
------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClients(params *AdminGetPlatformAccountClosureClientsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientsOK, *AdminGetPlatformAccountClosureClientsBadRequest, *AdminGetPlatformAccountClosureClientsUnauthorized, *AdminGetPlatformAccountClosureClientsForbidden, *AdminGetPlatformAccountClosureClientsNotFound, *AdminGetPlatformAccountClosureClientsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureClientsParams()
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
		ID:                 "AdminGetPlatformAccountClosureClients",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/closure/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureClientsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureClientsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlatformAccountClosureClientsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlatformAccountClosureClientsShort get platform account closure configs
Get platform account closure configs.
------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClientsShort(params *AdminGetPlatformAccountClosureClientsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureClientsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetPlatformAccountClosureClients",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/closure/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureClientsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureClientsOK:
		return v, nil
	case *AdminGetPlatformAccountClosureClientsBadRequest:
		return nil, v
	case *AdminGetPlatformAccountClosureClientsUnauthorized:
		return nil, v
	case *AdminGetPlatformAccountClosureClientsForbidden:
		return nil, v
	case *AdminGetPlatformAccountClosureClientsNotFound:
		return nil, v
	case *AdminGetPlatformAccountClosureClientsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminValidateXboxBPCertFileShort instead.

AdminValidateXboxBPCertFile validate xbox bp cert file
Check xbox BP cert file whether it's expired and return expiration date
*/
func (a *Client) AdminValidateXboxBPCertFile(params *AdminValidateXboxBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminValidateXboxBPCertFileOK, *AdminValidateXboxBPCertFileBadRequest, *AdminValidateXboxBPCertFileUnauthorized, *AdminValidateXboxBPCertFileForbidden, *AdminValidateXboxBPCertFileNotFound, *AdminValidateXboxBPCertFileInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminValidateXboxBPCertFileParams()
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
		ID:                 "AdminValidateXboxBPCertFile",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminValidateXboxBPCertFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminValidateXboxBPCertFileOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminValidateXboxBPCertFileBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminValidateXboxBPCertFileUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminValidateXboxBPCertFileForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminValidateXboxBPCertFileNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminValidateXboxBPCertFileInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminValidateXboxBPCertFileShort validate xbox bp cert file
Check xbox BP cert file whether it's expired and return expiration date
*/
func (a *Client) AdminValidateXboxBPCertFileShort(params *AdminValidateXboxBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminValidateXboxBPCertFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminValidateXboxBPCertFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminValidateXboxBPCertFile",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminValidateXboxBPCertFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminValidateXboxBPCertFileOK:
		return v, nil
	case *AdminValidateXboxBPCertFileBadRequest:
		return nil, v
	case *AdminValidateXboxBPCertFileUnauthorized:
		return nil, v
	case *AdminValidateXboxBPCertFileForbidden:
		return nil, v
	case *AdminValidateXboxBPCertFileNotFound:
		return nil, v
	case *AdminValidateXboxBPCertFileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlatformAccountClosureClientShort instead.

AdminGetPlatformAccountClosureClient get platform account closure config
Get platform account closure config.
The namespace should be **publisher or studio namespace**
----------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClient(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, *AdminGetPlatformAccountClosureClientBadRequest, *AdminGetPlatformAccountClosureClientUnauthorized, *AdminGetPlatformAccountClosureClientForbidden, *AdminGetPlatformAccountClosureClientNotFound, *AdminGetPlatformAccountClosureClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureClientParams()
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
		ID:                 "AdminGetPlatformAccountClosureClient",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureClientOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetPlatformAccountClosureClientNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetPlatformAccountClosureClientInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlatformAccountClosureClientShort get platform account closure config
Get platform account closure config.
The namespace should be **publisher or studio namespace**
----------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetPlatformAccountClosureClient",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureClientOK:
		return v, nil
	case *AdminGetPlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminGetPlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminGetPlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminGetPlatformAccountClosureClientNotFound:
		return nil, v
	case *AdminGetPlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdatePlatformAccountClosureClientShort instead.

AdminUpdatePlatformAccountClosureClient update platform account closure client
Update platform account closure client.
The namespace should be the **publisher or studio namespace**.
------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureClient(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, *AdminUpdatePlatformAccountClosureClientBadRequest, *AdminUpdatePlatformAccountClosureClientUnauthorized, *AdminUpdatePlatformAccountClosureClientForbidden, *AdminUpdatePlatformAccountClosureClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformAccountClosureClientParams()
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
		ID:                 "AdminUpdatePlatformAccountClosureClient",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformAccountClosureClientNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdatePlatformAccountClosureClientBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdatePlatformAccountClosureClientUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdatePlatformAccountClosureClientForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdatePlatformAccountClosureClientInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformAccountClosureClientShort update platform account closure client
Update platform account closure client.
The namespace should be the **publisher or studio namespace**.
------
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformAccountClosureClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdatePlatformAccountClosureClient",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformAccountClosureClientNoContent:
		return v, nil
	case *AdminUpdatePlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeletePlatformAccountClosureClientShort instead.

AdminDeletePlatformAccountClosureClient delete platform account closure client
Delete platform account closure client.
The namespace should be **publisher or studio namespace**
-------
Platform:
- steamnetwork
- xbox
- psn
*/
func (a *Client) AdminDeletePlatformAccountClosureClient(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, *AdminDeletePlatformAccountClosureClientBadRequest, *AdminDeletePlatformAccountClosureClientUnauthorized, *AdminDeletePlatformAccountClosureClientForbidden, *AdminDeletePlatformAccountClosureClientNotFound, *AdminDeletePlatformAccountClosureClientInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformAccountClosureClientParams()
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
		ID:                 "AdminDeletePlatformAccountClosureClient",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformAccountClosureClientNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeletePlatformAccountClosureClientBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeletePlatformAccountClosureClientUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeletePlatformAccountClosureClientForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeletePlatformAccountClosureClientNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeletePlatformAccountClosureClientInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformAccountClosureClientShort delete platform account closure client
Delete platform account closure client.
The namespace should be **publisher or studio namespace**
-------
Platform:
- steamnetwork
- xbox
- psn
*/
func (a *Client) AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformAccountClosureClientParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeletePlatformAccountClosureClient",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformAccountClosureClientNoContent:
		return v, nil
	case *AdminDeletePlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientNotFound:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminMockPlatformAccountClosureDataShort instead.

AdminMockPlatformAccountClosureData mock platform account closure data
Mock platform account closure data.
-----
**This is only for testing**
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminMockPlatformAccountClosureData(params *AdminMockPlatformAccountClosureDataParams, authInfo runtime.ClientAuthInfoWriter) (*AdminMockPlatformAccountClosureDataNoContent, *AdminMockPlatformAccountClosureDataBadRequest, *AdminMockPlatformAccountClosureDataUnauthorized, *AdminMockPlatformAccountClosureDataForbidden, *AdminMockPlatformAccountClosureDataInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminMockPlatformAccountClosureDataParams()
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
		ID:                 "AdminMockPlatformAccountClosureData",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminMockPlatformAccountClosureDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminMockPlatformAccountClosureDataNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminMockPlatformAccountClosureDataBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminMockPlatformAccountClosureDataUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminMockPlatformAccountClosureDataForbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminMockPlatformAccountClosureDataInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminMockPlatformAccountClosureDataShort mock platform account closure data
Mock platform account closure data.
-----
**This is only for testing**
Platform:
- steamnetwork
- xbox
- psn
Scope: account
*/
func (a *Client) AdminMockPlatformAccountClosureDataShort(params *AdminMockPlatformAccountClosureDataParams, authInfo runtime.ClientAuthInfoWriter) (*AdminMockPlatformAccountClosureDataNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminMockPlatformAccountClosureDataParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminMockPlatformAccountClosureData",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminMockPlatformAccountClosureDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminMockPlatformAccountClosureDataNoContent:
		return v, nil
	case *AdminMockPlatformAccountClosureDataBadRequest:
		return nil, v
	case *AdminMockPlatformAccountClosureDataUnauthorized:
		return nil, v
	case *AdminMockPlatformAccountClosureDataForbidden:
		return nil, v
	case *AdminMockPlatformAccountClosureDataInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
