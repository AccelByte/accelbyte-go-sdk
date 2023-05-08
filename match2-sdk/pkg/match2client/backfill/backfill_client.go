// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package backfill

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new backfill API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for backfill API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateBackfill(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, *CreateBackfillBadRequest, *CreateBackfillUnauthorized, *CreateBackfillForbidden, *CreateBackfillNotFound, *CreateBackfillConflict, *CreateBackfillInternalServerError, error)
	CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, error)
	GetBackfillProposal(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, *GetBackfillProposalBadRequest, *GetBackfillProposalUnauthorized, *GetBackfillProposalForbidden, *GetBackfillProposalNotFound, *GetBackfillProposalInternalServerError, error)
	GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, error)
	GetBackfill(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, *GetBackfillBadRequest, *GetBackfillUnauthorized, *GetBackfillForbidden, *GetBackfillNotFound, *GetBackfillInternalServerError, error)
	GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, error)
	DeleteBackfill(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, *DeleteBackfillUnauthorized, *DeleteBackfillForbidden, *DeleteBackfillNotFound, *DeleteBackfillInternalServerError, error)
	DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, error)
	AcceptBackfill(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, *AcceptBackfillBadRequest, *AcceptBackfillUnauthorized, *AcceptBackfillForbidden, *AcceptBackfillNotFound, *AcceptBackfillInternalServerError, error)
	AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, error)
	RejectBackfill(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, *RejectBackfillBadRequest, *RejectBackfillUnauthorized, *RejectBackfillForbidden, *RejectBackfillNotFound, *RejectBackfillInternalServerError, error)
	RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateBackfillShort instead.

CreateBackfill create a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

Required Scope: social

Create backfill ticket
*/
func (a *Client) CreateBackfill(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, *CreateBackfillBadRequest, *CreateBackfillUnauthorized, *CreateBackfillForbidden, *CreateBackfillNotFound, *CreateBackfillConflict, *CreateBackfillInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateBackfill",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateBackfillCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *CreateBackfillBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *CreateBackfillUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *CreateBackfillForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *CreateBackfillNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *CreateBackfillConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *CreateBackfillInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateBackfillShort create a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

Required Scope: social

Create backfill ticket
*/
func (a *Client) CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateBackfill",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateBackfillCreated:
		return v, nil
	case *CreateBackfillBadRequest:
		return nil, v
	case *CreateBackfillUnauthorized:
		return nil, v
	case *CreateBackfillForbidden:
		return nil, v
	case *CreateBackfillNotFound:
		return nil, v
	case *CreateBackfillConflict:
		return nil, v
	case *CreateBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetBackfillProposalShort instead.

GetBackfillProposal get backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

Required Scope: social

Get backfill proposal
*/
func (a *Client) GetBackfillProposal(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, *GetBackfillProposalBadRequest, *GetBackfillProposalUnauthorized, *GetBackfillProposalForbidden, *GetBackfillProposalNotFound, *GetBackfillProposalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillProposalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBackfillProposal",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/proposal",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillProposalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetBackfillProposalOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetBackfillProposalBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetBackfillProposalUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetBackfillProposalForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetBackfillProposalNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetBackfillProposalInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillProposalShort get backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

Required Scope: social

Get backfill proposal
*/
func (a *Client) GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillProposalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBackfillProposal",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/proposal",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillProposalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBackfillProposalOK:
		return v, nil
	case *GetBackfillProposalBadRequest:
		return nil, v
	case *GetBackfillProposalUnauthorized:
		return nil, v
	case *GetBackfillProposalForbidden:
		return nil, v
	case *GetBackfillProposalNotFound:
		return nil, v
	case *GetBackfillProposalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetBackfillShort instead.

GetBackfill get a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

Required Scope: social

Get backfill ticket by ID
*/
func (a *Client) GetBackfill(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, *GetBackfillBadRequest, *GetBackfillUnauthorized, *GetBackfillForbidden, *GetBackfillNotFound, *GetBackfillInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBackfill",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetBackfillOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetBackfillBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetBackfillUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetBackfillForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetBackfillNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetBackfillInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillShort get a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

Required Scope: social

Get backfill ticket by ID
*/
func (a *Client) GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetBackfill",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBackfillOK:
		return v, nil
	case *GetBackfillBadRequest:
		return nil, v
	case *GetBackfillUnauthorized:
		return nil, v
	case *GetBackfillForbidden:
		return nil, v
	case *GetBackfillNotFound:
		return nil, v
	case *GetBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteBackfillShort instead.

DeleteBackfill delete a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

Required Scope: social

Delete backfill ticket
*/
func (a *Client) DeleteBackfill(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, *DeleteBackfillUnauthorized, *DeleteBackfillForbidden, *DeleteBackfillNotFound, *DeleteBackfillInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteBackfill",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteBackfillNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteBackfillUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteBackfillForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteBackfillNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteBackfillInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBackfillShort delete a backfill ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

Required Scope: social

Delete backfill ticket
*/
func (a *Client) DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteBackfill",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBackfillNoContent:
		return v, nil
	case *DeleteBackfillUnauthorized:
		return nil, v
	case *DeleteBackfillForbidden:
		return nil, v
	case *DeleteBackfillNotFound:
		return nil, v
	case *DeleteBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AcceptBackfillShort instead.

AcceptBackfill accept a backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

Required Scope: social

Accept backfill proposal
*/
func (a *Client) AcceptBackfill(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, *AcceptBackfillBadRequest, *AcceptBackfillUnauthorized, *AcceptBackfillForbidden, *AcceptBackfillNotFound, *AcceptBackfillInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AcceptBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AcceptBackfillOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AcceptBackfillBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AcceptBackfillUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AcceptBackfillForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AcceptBackfillNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AcceptBackfillInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptBackfillShort accept a backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

Required Scope: social

Accept backfill proposal
*/
func (a *Client) AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AcceptBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptBackfillOK:
		return v, nil
	case *AcceptBackfillBadRequest:
		return nil, v
	case *AcceptBackfillUnauthorized:
		return nil, v
	case *AcceptBackfillForbidden:
		return nil, v
	case *AcceptBackfillNotFound:
		return nil, v
	case *AcceptBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RejectBackfillShort instead.

RejectBackfill reject a backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

Required Scope: social

Reject backfill proposal
*/
func (a *Client) RejectBackfill(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, *RejectBackfillBadRequest, *RejectBackfillUnauthorized, *RejectBackfillForbidden, *RejectBackfillNotFound, *RejectBackfillInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RejectBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *RejectBackfillOK:
		return v, nil, nil, nil, nil, nil, nil

	case *RejectBackfillBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *RejectBackfillUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *RejectBackfillForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *RejectBackfillNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *RejectBackfillInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectBackfillShort reject a backfill proposal
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

Required Scope: social

Reject backfill proposal
*/
func (a *Client) RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectBackfillParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RejectBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectBackfillOK:
		return v, nil
	case *RejectBackfillBadRequest:
		return nil, v
	case *RejectBackfillUnauthorized:
		return nil, v
	case *RejectBackfillForbidden:
		return nil, v
	case *RejectBackfillNotFound:
		return nil, v
	case *RejectBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
