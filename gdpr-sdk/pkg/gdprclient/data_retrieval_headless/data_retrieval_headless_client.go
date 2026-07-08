// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package data_retrieval_headless

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval headless API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval headless API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicSubmitMyHeadlessPersonalDataRequest(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestCreated, *PublicSubmitMyHeadlessPersonalDataRequestBadRequest, *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized, *PublicSubmitMyHeadlessPersonalDataRequestForbidden, *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests, *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError, error)
	PublicSubmitMyHeadlessPersonalDataRequestShort(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestCreated, error)
	PublicGenerateMyHeadlessPersonalDataURL(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLOK, *PublicGenerateMyHeadlessPersonalDataURLBadRequest, *PublicGenerateMyHeadlessPersonalDataURLUnauthorized, *PublicGenerateMyHeadlessPersonalDataURLForbidden, *PublicGenerateMyHeadlessPersonalDataURLNotFound, *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests, *PublicGenerateMyHeadlessPersonalDataURLInternalServerError, error)
	PublicGenerateMyHeadlessPersonalDataURLShort(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLOK, error)
	PublicGetMyPersonalDataRequests(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsOK, *PublicGetMyPersonalDataRequestsUnauthorized, *PublicGetMyPersonalDataRequestsForbidden, *PublicGetMyPersonalDataRequestsInternalServerError, error)
	PublicGetMyPersonalDataRequestsShort(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsOK, error)
	PublicSubmitMyPersonalDataRequest(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestCreated, *PublicSubmitMyPersonalDataRequestBadRequest, *PublicSubmitMyPersonalDataRequestUnauthorized, *PublicSubmitMyPersonalDataRequestForbidden, *PublicSubmitMyPersonalDataRequestTooManyRequests, *PublicSubmitMyPersonalDataRequestInternalServerError, error)
	PublicSubmitMyPersonalDataRequestShort(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestCreated, error)
	PublicCancelMyPersonalDataRequest(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestNoContent, *PublicCancelMyPersonalDataRequestBadRequest, *PublicCancelMyPersonalDataRequestUnauthorized, *PublicCancelMyPersonalDataRequestForbidden, *PublicCancelMyPersonalDataRequestNotFound, *PublicCancelMyPersonalDataRequestInternalServerError, error)
	PublicCancelMyPersonalDataRequestShort(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PublicSubmitMyHeadlessPersonalDataRequestShort instead.

PublicSubmitMyHeadlessPersonalDataRequest submit my headless personal data request
Submit a Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyHeadlessPersonalDataRequest(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestCreated, *PublicSubmitMyHeadlessPersonalDataRequestBadRequest, *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized, *PublicSubmitMyHeadlessPersonalDataRequestForbidden, *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests, *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessPersonalDataRequestParams()
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
		ID:                 "PublicSubmitMyHeadlessPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessPersonalDataRequestCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicSubmitMyHeadlessPersonalDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicSubmitMyHeadlessPersonalDataRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyHeadlessPersonalDataRequestShort submit my headless personal data request
Submit a Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyHeadlessPersonalDataRequestShort(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitMyHeadlessPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessPersonalDataRequestCreated:
		return v, nil
	case *PublicSubmitMyHeadlessPersonalDataRequestBadRequest:
		return nil, v
	case *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized:
		return nil, v
	case *PublicSubmitMyHeadlessPersonalDataRequestForbidden:
		return nil, v
	case *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests:
		return nil, v
	case *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGenerateMyHeadlessPersonalDataURLShort instead.

PublicGenerateMyHeadlessPersonalDataURL generate my headless personal data download url
Generate a download url for a completed Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` instead.
*/
func (a *Client) PublicGenerateMyHeadlessPersonalDataURL(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLOK, *PublicGenerateMyHeadlessPersonalDataURLBadRequest, *PublicGenerateMyHeadlessPersonalDataURLUnauthorized, *PublicGenerateMyHeadlessPersonalDataURLForbidden, *PublicGenerateMyHeadlessPersonalDataURLNotFound, *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests, *PublicGenerateMyHeadlessPersonalDataURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyHeadlessPersonalDataURLParams()
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
		ID:                 "PublicGenerateMyHeadlessPersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyHeadlessPersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyHeadlessPersonalDataURLOK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *PublicGenerateMyHeadlessPersonalDataURLInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyHeadlessPersonalDataURLShort generate my headless personal data download url
Generate a download url for a completed Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` instead.
*/
func (a *Client) PublicGenerateMyHeadlessPersonalDataURLShort(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyHeadlessPersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGenerateMyHeadlessPersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyHeadlessPersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyHeadlessPersonalDataURLOK:
		return v, nil
	case *PublicGenerateMyHeadlessPersonalDataURLBadRequest:
		return nil, v
	case *PublicGenerateMyHeadlessPersonalDataURLUnauthorized:
		return nil, v
	case *PublicGenerateMyHeadlessPersonalDataURLForbidden:
		return nil, v
	case *PublicGenerateMyHeadlessPersonalDataURLNotFound:
		return nil, v
	case *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests:
		return nil, v
	case *PublicGenerateMyHeadlessPersonalDataURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetMyPersonalDataRequestsShort instead.

PublicGetMyPersonalDataRequests get my personal data requests
List my personal data requests. Requires a valid access token.
*/
func (a *Client) PublicGetMyPersonalDataRequests(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsOK, *PublicGetMyPersonalDataRequestsUnauthorized, *PublicGetMyPersonalDataRequestsForbidden, *PublicGetMyPersonalDataRequestsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyPersonalDataRequestsParams()
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
		ID:                 "PublicGetMyPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyPersonalDataRequestsOK:
		return v, nil, nil, nil, nil

	case *PublicGetMyPersonalDataRequestsUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetMyPersonalDataRequestsForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetMyPersonalDataRequestsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyPersonalDataRequestsShort get my personal data requests
List my personal data requests. Requires a valid access token.
*/
func (a *Client) PublicGetMyPersonalDataRequestsShort(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyPersonalDataRequestsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyPersonalDataRequestsOK:
		return v, nil
	case *PublicGetMyPersonalDataRequestsUnauthorized:
		return nil, v
	case *PublicGetMyPersonalDataRequestsForbidden:
		return nil, v
	case *PublicGetMyPersonalDataRequestsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicSubmitMyPersonalDataRequestShort instead.

PublicSubmitMyPersonalDataRequest submit my personal data request
Submit a Personal Data Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyPersonalDataRequest(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestCreated, *PublicSubmitMyPersonalDataRequestBadRequest, *PublicSubmitMyPersonalDataRequestUnauthorized, *PublicSubmitMyPersonalDataRequestForbidden, *PublicSubmitMyPersonalDataRequestTooManyRequests, *PublicSubmitMyPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyPersonalDataRequestParams()
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
		ID:                 "PublicSubmitMyPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyPersonalDataRequestCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicSubmitMyPersonalDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicSubmitMyPersonalDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicSubmitMyPersonalDataRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicSubmitMyPersonalDataRequestTooManyRequests:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicSubmitMyPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyPersonalDataRequestShort submit my personal data request
Submit a Personal Data Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyPersonalDataRequestShort(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitMyPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyPersonalDataRequestCreated:
		return v, nil
	case *PublicSubmitMyPersonalDataRequestBadRequest:
		return nil, v
	case *PublicSubmitMyPersonalDataRequestUnauthorized:
		return nil, v
	case *PublicSubmitMyPersonalDataRequestForbidden:
		return nil, v
	case *PublicSubmitMyPersonalDataRequestTooManyRequests:
		return nil, v
	case *PublicSubmitMyPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCancelMyPersonalDataRequestShort instead.

PublicCancelMyPersonalDataRequest cancel my personal data request
Cancel a pending Personal Data Request by its request date. Requires a valid access token.
*/
func (a *Client) PublicCancelMyPersonalDataRequest(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestNoContent, *PublicCancelMyPersonalDataRequestBadRequest, *PublicCancelMyPersonalDataRequestUnauthorized, *PublicCancelMyPersonalDataRequestForbidden, *PublicCancelMyPersonalDataRequestNotFound, *PublicCancelMyPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyPersonalDataRequestParams()
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
		ID:                 "PublicCancelMyPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyPersonalDataRequestNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicCancelMyPersonalDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicCancelMyPersonalDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicCancelMyPersonalDataRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicCancelMyPersonalDataRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicCancelMyPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelMyPersonalDataRequestShort cancel my personal data request
Cancel a pending Personal Data Request by its request date. Requires a valid access token.
*/
func (a *Client) PublicCancelMyPersonalDataRequestShort(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelMyPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyPersonalDataRequestNoContent:
		return v, nil
	case *PublicCancelMyPersonalDataRequestBadRequest:
		return nil, v
	case *PublicCancelMyPersonalDataRequestUnauthorized:
		return nil, v
	case *PublicCancelMyPersonalDataRequestForbidden:
		return nil, v
	case *PublicCancelMyPersonalDataRequestNotFound:
		return nil, v
	case *PublicCancelMyPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
