// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package data_deletion_s2_s

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data deletion s2 s API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data deletion s2 s API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	S2SGetListFinishedAccountDeletionRequest(params *S2SGetListFinishedAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedAccountDeletionRequestOK, *S2SGetListFinishedAccountDeletionRequestBadRequest, *S2SGetListFinishedAccountDeletionRequestUnauthorized, *S2SGetListFinishedAccountDeletionRequestForbidden, *S2SGetListFinishedAccountDeletionRequestInternalServerError, error)
	S2SGetListFinishedAccountDeletionRequestShort(params *S2SGetListFinishedAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedAccountDeletionRequestOK, error)
	S2SSubmitUserAccountDeletionRequest(params *S2SSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SSubmitUserAccountDeletionRequestCreated, *S2SSubmitUserAccountDeletionRequestUnauthorized, *S2SSubmitUserAccountDeletionRequestForbidden, *S2SSubmitUserAccountDeletionRequestNotFound, *S2SSubmitUserAccountDeletionRequestConflict, *S2SSubmitUserAccountDeletionRequestInternalServerError, error)
	S2SSubmitUserAccountDeletionRequestShort(params *S2SSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SSubmitUserAccountDeletionRequestCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use S2SGetListFinishedAccountDeletionRequestShort instead.

S2SGetListFinishedAccountDeletionRequest get list of finished account deletion requests
Scope: account

Get list of finished account deletion requests based on the finished time period.
Unfinished deletion requests will not appear here, i.e. have Status **Request**, **Pending** or **In-Progress**.

**Anonymize userId for deleted account:**
For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetListFinishedAccountDeletionRequest(params *S2SGetListFinishedAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedAccountDeletionRequestOK, *S2SGetListFinishedAccountDeletionRequestBadRequest, *S2SGetListFinishedAccountDeletionRequestUnauthorized, *S2SGetListFinishedAccountDeletionRequestForbidden, *S2SGetListFinishedAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetListFinishedAccountDeletionRequestParams()
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
		ID:                 "S2SGetListFinishedAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/deletions/finished",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetListFinishedAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *S2SGetListFinishedAccountDeletionRequestOK:
		return v, nil, nil, nil, nil, nil

	case *S2SGetListFinishedAccountDeletionRequestBadRequest:
		return nil, v, nil, nil, nil, nil

	case *S2SGetListFinishedAccountDeletionRequestUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *S2SGetListFinishedAccountDeletionRequestForbidden:
		return nil, nil, nil, v, nil, nil

	case *S2SGetListFinishedAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SGetListFinishedAccountDeletionRequestShort get list of finished account deletion requests
Scope: account

Get list of finished account deletion requests based on the finished time period.
Unfinished deletion requests will not appear here, i.e. have Status **Request**, **Pending** or **In-Progress**.

**Anonymize userId for deleted account:**
For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetListFinishedAccountDeletionRequestShort(params *S2SGetListFinishedAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedAccountDeletionRequestOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetListFinishedAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "S2SGetListFinishedAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/deletions/finished",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetListFinishedAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGetListFinishedAccountDeletionRequestOK:
		return v, nil
	case *S2SGetListFinishedAccountDeletionRequestBadRequest:
		return nil, v
	case *S2SGetListFinishedAccountDeletionRequestUnauthorized:
		return nil, v
	case *S2SGetListFinishedAccountDeletionRequestForbidden:
		return nil, v
	case *S2SGetListFinishedAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use S2SSubmitUserAccountDeletionRequestShort instead.

S2SSubmitUserAccountDeletionRequest submit user's account deletion request
Scope: account

Submit user's account deletion request.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only

**Notes:**

1. This API will **not send GDPR email notification** both for player and admin notification.
2. This API will **perform account deletion immediately** without GDPR grace period (i.e. 28 days grace period).
*/
func (a *Client) S2SSubmitUserAccountDeletionRequest(params *S2SSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SSubmitUserAccountDeletionRequestCreated, *S2SSubmitUserAccountDeletionRequestUnauthorized, *S2SSubmitUserAccountDeletionRequestForbidden, *S2SSubmitUserAccountDeletionRequestNotFound, *S2SSubmitUserAccountDeletionRequestConflict, *S2SSubmitUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SSubmitUserAccountDeletionRequestParams()
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
		ID:                 "S2SSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *S2SSubmitUserAccountDeletionRequestCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *S2SSubmitUserAccountDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *S2SSubmitUserAccountDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *S2SSubmitUserAccountDeletionRequestNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *S2SSubmitUserAccountDeletionRequestConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *S2SSubmitUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SSubmitUserAccountDeletionRequestShort submit user's account deletion request
Scope: account

Submit user's account deletion request.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only

**Notes:**

1. This API will **not send GDPR email notification** both for player and admin notification.
2. This API will **perform account deletion immediately** without GDPR grace period (i.e. 28 days grace period).
*/
func (a *Client) S2SSubmitUserAccountDeletionRequestShort(params *S2SSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SSubmitUserAccountDeletionRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "S2SSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SSubmitUserAccountDeletionRequestCreated:
		return v, nil
	case *S2SSubmitUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *S2SSubmitUserAccountDeletionRequestForbidden:
		return nil, v
	case *S2SSubmitUserAccountDeletionRequestNotFound:
		return nil, v
	case *S2SSubmitUserAccountDeletionRequestConflict:
		return nil, v
	case *S2SSubmitUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
