// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package data_retrieval_s2_s

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval s2 s API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval s2 s API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	S2SGetListFinishedPersonalDataRequest(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestOK, *S2SGetListFinishedPersonalDataRequestBadRequest, *S2SGetListFinishedPersonalDataRequestUnauthorized, *S2SGetListFinishedPersonalDataRequestForbidden, *S2SGetListFinishedPersonalDataRequestInternalServerError, error)
	S2SGetListFinishedPersonalDataRequestShort(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestOK, error)
	S2SRequestDataRetrieval(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalCreated, *S2SRequestDataRetrievalBadRequest, *S2SRequestDataRetrievalUnauthorized, *S2SRequestDataRetrievalNotFound, *S2SRequestDataRetrievalInternalServerError, error)
	S2SRequestDataRetrievalShort(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalCreated, error)
	S2SGeneratePersonalDataURL(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLOK, *S2SGeneratePersonalDataURLBadRequest, *S2SGeneratePersonalDataURLUnauthorized, *S2SGeneratePersonalDataURLNotFound, *S2SGeneratePersonalDataURLInternalServerError, error)
	S2SGeneratePersonalDataURLShort(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use S2SGetListFinishedPersonalDataRequestShort instead.

S2SGetListFinishedPersonalDataRequest get list of finished personal data requests
Scope: account

Get list of finished personal data requests based on the finished time period.
Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

**Anonymize userId for deleted account:**
For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetListFinishedPersonalDataRequest(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestOK, *S2SGetListFinishedPersonalDataRequestBadRequest, *S2SGetListFinishedPersonalDataRequestUnauthorized, *S2SGetListFinishedPersonalDataRequestForbidden, *S2SGetListFinishedPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetListFinishedPersonalDataRequestParams()
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
		ID:                 "S2SGetListFinishedPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/requests/finished",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetListFinishedPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *S2SGetListFinishedPersonalDataRequestOK:
		return v, nil, nil, nil, nil, nil

	case *S2SGetListFinishedPersonalDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil

	case *S2SGetListFinishedPersonalDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *S2SGetListFinishedPersonalDataRequestForbidden:
		return nil, nil, nil, v, nil, nil

	case *S2SGetListFinishedPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SGetListFinishedPersonalDataRequestShort get list of finished personal data requests
Scope: account

Get list of finished personal data requests based on the finished time period.
Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

**Anonymize userId for deleted account:**
For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetListFinishedPersonalDataRequestShort(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetListFinishedPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "S2SGetListFinishedPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/requests/finished",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetListFinishedPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGetListFinishedPersonalDataRequestOK:
		return v, nil
	case *S2SGetListFinishedPersonalDataRequestBadRequest:
		return nil, v
	case *S2SGetListFinishedPersonalDataRequestUnauthorized:
		return nil, v
	case *S2SGetListFinishedPersonalDataRequestForbidden:
		return nil, v
	case *S2SGetListFinishedPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use S2SRequestDataRetrievalShort instead.

S2SRequestDataRetrieval submit user personal data retrieval request
Scope: account

Submit user personal data retrieval request.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only

**Notes:**

1. This API will **not send GDPR email notification** both for player and admin notification.
*/
func (a *Client) S2SRequestDataRetrieval(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalCreated, *S2SRequestDataRetrievalBadRequest, *S2SRequestDataRetrievalUnauthorized, *S2SRequestDataRetrievalNotFound, *S2SRequestDataRetrievalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SRequestDataRetrievalParams()
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
		ID:                 "S2SRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *S2SRequestDataRetrievalCreated:
		return v, nil, nil, nil, nil, nil

	case *S2SRequestDataRetrievalBadRequest:
		return nil, v, nil, nil, nil, nil

	case *S2SRequestDataRetrievalUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *S2SRequestDataRetrievalNotFound:
		return nil, nil, nil, v, nil, nil

	case *S2SRequestDataRetrievalInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SRequestDataRetrievalShort submit user personal data retrieval request
Scope: account

Submit user personal data retrieval request.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only

**Notes:**

1. This API will **not send GDPR email notification** both for player and admin notification.
*/
func (a *Client) S2SRequestDataRetrievalShort(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SRequestDataRetrievalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "S2SRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SRequestDataRetrievalCreated:
		return v, nil
	case *S2SRequestDataRetrievalBadRequest:
		return nil, v
	case *S2SRequestDataRetrievalUnauthorized:
		return nil, v
	case *S2SRequestDataRetrievalNotFound:
		return nil, v
	case *S2SRequestDataRetrievalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use S2SGeneratePersonalDataURLShort instead.

S2SGeneratePersonalDataURL generate personal data download url
Scope: account

Generate personal data download url.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGeneratePersonalDataURL(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLOK, *S2SGeneratePersonalDataURLBadRequest, *S2SGeneratePersonalDataURLUnauthorized, *S2SGeneratePersonalDataURLNotFound, *S2SGeneratePersonalDataURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGeneratePersonalDataURLParams()
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
		ID:                 "S2SGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *S2SGeneratePersonalDataURLOK:
		return v, nil, nil, nil, nil, nil

	case *S2SGeneratePersonalDataURLBadRequest:
		return nil, v, nil, nil, nil, nil

	case *S2SGeneratePersonalDataURLUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *S2SGeneratePersonalDataURLNotFound:
		return nil, nil, nil, v, nil, nil

	case *S2SGeneratePersonalDataURLInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SGeneratePersonalDataURLShort generate personal data download url
Scope: account

Generate personal data download url.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGeneratePersonalDataURLShort(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGeneratePersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "S2SGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGeneratePersonalDataURLOK:
		return v, nil
	case *S2SGeneratePersonalDataURLBadRequest:
		return nil, v
	case *S2SGeneratePersonalDataURLUnauthorized:
		return nil, v
	case *S2SGeneratePersonalDataURLNotFound:
		return nil, v
	case *S2SGeneratePersonalDataURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
