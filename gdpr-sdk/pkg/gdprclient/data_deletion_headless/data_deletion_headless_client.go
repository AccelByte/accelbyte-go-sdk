// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package data_deletion_headless

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data deletion headless API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data deletion headless API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicSubmitMyAccountDeletionRequest(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestCreated, *PublicSubmitMyAccountDeletionRequestBadRequest, *PublicSubmitMyAccountDeletionRequestUnauthorized, *PublicSubmitMyAccountDeletionRequestForbidden, *PublicSubmitMyAccountDeletionRequestNotFound, *PublicSubmitMyAccountDeletionRequestConflict, *PublicSubmitMyAccountDeletionRequestInternalServerError, error)
	PublicSubmitMyAccountDeletionRequestShort(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestCreated, error)
	PublicCancelMyAccountDeletionRequest(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestNoContent, *PublicCancelMyAccountDeletionRequestUnauthorized, *PublicCancelMyAccountDeletionRequestForbidden, *PublicCancelMyAccountDeletionRequestNotFound, *PublicCancelMyAccountDeletionRequestInternalServerError, error)
	PublicCancelMyAccountDeletionRequestShort(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestNoContent, error)
	PublicGetMyAccountDeletionStatus(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusOK, *PublicGetMyAccountDeletionStatusUnauthorized, *PublicGetMyAccountDeletionStatusForbidden, *PublicGetMyAccountDeletionStatusInternalServerError, error)
	PublicGetMyAccountDeletionStatusShort(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusOK, error)
	PublicSubmitMyHeadlessDeletionRequest(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestCreated, *PublicSubmitMyHeadlessDeletionRequestUnauthorized, *PublicSubmitMyHeadlessDeletionRequestForbidden, *PublicSubmitMyHeadlessDeletionRequestConflict, *PublicSubmitMyHeadlessDeletionRequestInternalServerError, error)
	PublicSubmitMyHeadlessDeletionRequestShort(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicSubmitMyAccountDeletionRequestShort instead.

PublicSubmitMyAccountDeletionRequest submit my account deletion request
Submit an Account Deletion Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyAccountDeletionRequest(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestCreated, *PublicSubmitMyAccountDeletionRequestBadRequest, *PublicSubmitMyAccountDeletionRequestUnauthorized, *PublicSubmitMyAccountDeletionRequestForbidden, *PublicSubmitMyAccountDeletionRequestNotFound, *PublicSubmitMyAccountDeletionRequestConflict, *PublicSubmitMyAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyAccountDeletionRequestParams()
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
		ID:                 "PublicSubmitMyAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyAccountDeletionRequestCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicSubmitMyAccountDeletionRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicSubmitMyAccountDeletionRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicSubmitMyAccountDeletionRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicSubmitMyAccountDeletionRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicSubmitMyAccountDeletionRequestConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicSubmitMyAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyAccountDeletionRequestShort submit my account deletion request
Submit an Account Deletion Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyAccountDeletionRequestShort(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitMyAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyAccountDeletionRequestCreated:
		return v, nil
	case *PublicSubmitMyAccountDeletionRequestBadRequest:
		return nil, v
	case *PublicSubmitMyAccountDeletionRequestUnauthorized:
		return nil, v
	case *PublicSubmitMyAccountDeletionRequestForbidden:
		return nil, v
	case *PublicSubmitMyAccountDeletionRequestNotFound:
		return nil, v
	case *PublicSubmitMyAccountDeletionRequestConflict:
		return nil, v
	case *PublicSubmitMyAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCancelMyAccountDeletionRequestShort instead.

PublicCancelMyAccountDeletionRequest cancel my account deletion request
Cancel my account deletion request
Requires valid user access token
*/
func (a *Client) PublicCancelMyAccountDeletionRequest(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestNoContent, *PublicCancelMyAccountDeletionRequestUnauthorized, *PublicCancelMyAccountDeletionRequestForbidden, *PublicCancelMyAccountDeletionRequestNotFound, *PublicCancelMyAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyAccountDeletionRequestParams()
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
		ID:                 "PublicCancelMyAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyAccountDeletionRequestNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicCancelMyAccountDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicCancelMyAccountDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicCancelMyAccountDeletionRequestNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicCancelMyAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelMyAccountDeletionRequestShort cancel my account deletion request
Cancel my account deletion request
Requires valid user access token
*/
func (a *Client) PublicCancelMyAccountDeletionRequestShort(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelMyAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyAccountDeletionRequestNoContent:
		return v, nil
	case *PublicCancelMyAccountDeletionRequestUnauthorized:
		return nil, v
	case *PublicCancelMyAccountDeletionRequestForbidden:
		return nil, v
	case *PublicCancelMyAccountDeletionRequestNotFound:
		return nil, v
	case *PublicCancelMyAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyAccountDeletionStatusShort instead.

PublicGetMyAccountDeletionStatus retrieve my account deletion status
Retrieve my account deletion status
Requires valid user access token
*/
func (a *Client) PublicGetMyAccountDeletionStatus(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusOK, *PublicGetMyAccountDeletionStatusUnauthorized, *PublicGetMyAccountDeletionStatusForbidden, *PublicGetMyAccountDeletionStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAccountDeletionStatusParams()
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
		ID:                 "PublicGetMyAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAccountDeletionStatusOK:
		return v, nil, nil, nil, nil

	case *PublicGetMyAccountDeletionStatusUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetMyAccountDeletionStatusForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetMyAccountDeletionStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyAccountDeletionStatusShort retrieve my account deletion status
Retrieve my account deletion status
Requires valid user access token
*/
func (a *Client) PublicGetMyAccountDeletionStatusShort(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAccountDeletionStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAccountDeletionStatusOK:
		return v, nil
	case *PublicGetMyAccountDeletionStatusUnauthorized:
		return nil, v
	case *PublicGetMyAccountDeletionStatusForbidden:
		return nil, v
	case *PublicGetMyAccountDeletionStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSubmitMyHeadlessDeletionRequestShort instead.

PublicSubmitMyHeadlessDeletionRequest submit my headless account deletion request
Submit an Account Deletion Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 10 seconds).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.
*/
func (a *Client) PublicSubmitMyHeadlessDeletionRequest(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestCreated, *PublicSubmitMyHeadlessDeletionRequestUnauthorized, *PublicSubmitMyHeadlessDeletionRequestForbidden, *PublicSubmitMyHeadlessDeletionRequestConflict, *PublicSubmitMyHeadlessDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessDeletionRequestParams()
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
		ID:                 "PublicSubmitMyHeadlessDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessDeletionRequestCreated:
		return v, nil, nil, nil, nil, nil

	case *PublicSubmitMyHeadlessDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicSubmitMyHeadlessDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicSubmitMyHeadlessDeletionRequestConflict:
		return nil, nil, nil, v, nil, nil

	case *PublicSubmitMyHeadlessDeletionRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyHeadlessDeletionRequestShort submit my headless account deletion request
Submit an Account Deletion Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 10 seconds).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.
*/
func (a *Client) PublicSubmitMyHeadlessDeletionRequestShort(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitMyHeadlessDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessDeletionRequestCreated:
		return v, nil
	case *PublicSubmitMyHeadlessDeletionRequestUnauthorized:
		return nil, v
	case *PublicSubmitMyHeadlessDeletionRequestForbidden:
		return nil, v
	case *PublicSubmitMyHeadlessDeletionRequestConflict:
		return nil, v
	case *PublicSubmitMyHeadlessDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
