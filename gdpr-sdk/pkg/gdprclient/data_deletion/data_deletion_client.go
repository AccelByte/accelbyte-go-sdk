// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package data_deletion

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data deletion API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data deletion API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCancelUserAccountDeletionRequest(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestNoContent, *AdminCancelUserAccountDeletionRequestBadRequest, *AdminCancelUserAccountDeletionRequestUnauthorized, *AdminCancelUserAccountDeletionRequestForbidden, *AdminCancelUserAccountDeletionRequestNotFound, *AdminCancelUserAccountDeletionRequestInternalServerError, error)
	AdminCancelUserAccountDeletionRequestShort(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestNoContent, error)
	AdminGetListDeletionDataRequest(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, *AdminGetListDeletionDataRequestBadRequest, *AdminGetListDeletionDataRequestUnauthorized, *AdminGetListDeletionDataRequestForbidden, *AdminGetListDeletionDataRequestNotFound, *AdminGetListDeletionDataRequestInternalServerError, error)
	AdminGetListDeletionDataRequestShort(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, error)
	AdminGetUserAccountDeletionRequest(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, *AdminGetUserAccountDeletionRequestUnauthorized, *AdminGetUserAccountDeletionRequestForbidden, *AdminGetUserAccountDeletionRequestNotFound, *AdminGetUserAccountDeletionRequestInternalServerError, error)
	AdminGetUserAccountDeletionRequestShort(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, error)
	AdminSubmitUserAccountDeletionRequest(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, *AdminSubmitUserAccountDeletionRequestUnauthorized, *AdminSubmitUserAccountDeletionRequestForbidden, *AdminSubmitUserAccountDeletionRequestNotFound, *AdminSubmitUserAccountDeletionRequestConflict, *AdminSubmitUserAccountDeletionRequestInternalServerError, error)
	AdminSubmitUserAccountDeletionRequestShort(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, error)
	PublicCancelUserAccountDeletionRequest(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, *PublicCancelUserAccountDeletionRequestUnauthorized, *PublicCancelUserAccountDeletionRequestForbidden, *PublicCancelUserAccountDeletionRequestNotFound, *PublicCancelUserAccountDeletionRequestInternalServerError, error)
	PublicCancelUserAccountDeletionRequestShort(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, error)
	PublicGetUserAccountDeletionStatus(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, *PublicGetUserAccountDeletionStatusUnauthorized, *PublicGetUserAccountDeletionStatusForbidden, *PublicGetUserAccountDeletionStatusInternalServerError, error)
	PublicGetUserAccountDeletionStatusShort(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, error)
	PublicSubmitUserAccountDeletionRequest(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, *PublicSubmitUserAccountDeletionRequestBadRequest, *PublicSubmitUserAccountDeletionRequestUnauthorized, *PublicSubmitUserAccountDeletionRequestForbidden, *PublicSubmitUserAccountDeletionRequestNotFound, *PublicSubmitUserAccountDeletionRequestInternalServerError, error)
	PublicSubmitUserAccountDeletionRequestShort(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminCancelUserAccountDeletionRequest cancels user s account deletion request

  &lt;p&gt;Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]&lt;/code&gt; and scope &lt;code&gt;account&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) AdminCancelUserAccountDeletionRequest(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestNoContent, *AdminCancelUserAccountDeletionRequestBadRequest, *AdminCancelUserAccountDeletionRequestUnauthorized, *AdminCancelUserAccountDeletionRequestForbidden, *AdminCancelUserAccountDeletionRequestNotFound, *AdminCancelUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserAccountDeletionRequestNoContent:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCancelUserAccountDeletionRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCancelUserAccountDeletionRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCancelUserAccountDeletionRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCancelUserAccountDeletionRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCancelUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminCancelUserAccountDeletionRequestShort(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserAccountDeletionRequestNoContent:
		return v, nil
	case *AdminCancelUserAccountDeletionRequestBadRequest:
		return nil, v
	case *AdminCancelUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *AdminCancelUserAccountDeletionRequestForbidden:
		return nil, v
	case *AdminCancelUserAccountDeletionRequestNotFound:
		return nil, v
	case *AdminCancelUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetListDeletionDataRequest retrieves all user s account deletion requests in specified date

  &lt;p&gt;Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:INFORMATION:USER[READ]&lt;/code&gt; and scope &lt;code&gt;account&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) AdminGetListDeletionDataRequest(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, *AdminGetListDeletionDataRequestBadRequest, *AdminGetListDeletionDataRequestUnauthorized, *AdminGetListDeletionDataRequestForbidden, *AdminGetListDeletionDataRequestNotFound, *AdminGetListDeletionDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListDeletionDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListDeletionDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListDeletionDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListDeletionDataRequestOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetListDeletionDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetListDeletionDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetListDeletionDataRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetListDeletionDataRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetListDeletionDataRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetListDeletionDataRequestShort(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListDeletionDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListDeletionDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListDeletionDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListDeletionDataRequestOK:
		return v, nil
	case *AdminGetListDeletionDataRequestBadRequest:
		return nil, v
	case *AdminGetListDeletionDataRequestUnauthorized:
		return nil, v
	case *AdminGetListDeletionDataRequestForbidden:
		return nil, v
	case *AdminGetListDeletionDataRequestNotFound:
		return nil, v
	case *AdminGetListDeletionDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminGetUserAccountDeletionRequest retrieves specific user s account deletion request

  &lt;p&gt;Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId}[READ]&lt;/code&gt; and scope &lt;code&gt;account&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) AdminGetUserAccountDeletionRequest(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, *AdminGetUserAccountDeletionRequestUnauthorized, *AdminGetUserAccountDeletionRequestForbidden, *AdminGetUserAccountDeletionRequestNotFound, *AdminGetUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserAccountDeletionRequestOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetUserAccountDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetUserAccountDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetUserAccountDeletionRequestNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetUserAccountDeletionRequestShort(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserAccountDeletionRequestOK:
		return v, nil
	case *AdminGetUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *AdminGetUserAccountDeletionRequestForbidden:
		return nil, v
	case *AdminGetUserAccountDeletionRequestNotFound:
		return nil, v
	case *AdminGetUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminSubmitUserAccountDeletionRequest submits user s account deletion requests

  &lt;p&gt;Required permission &lt;code&gt;ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [CREATE]&lt;/code&gt; and scope &lt;code&gt;account&lt;/code&gt;&lt;/p&gt;
*/
func (a *Client) AdminSubmitUserAccountDeletionRequest(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, *AdminSubmitUserAccountDeletionRequestUnauthorized, *AdminSubmitUserAccountDeletionRequestForbidden, *AdminSubmitUserAccountDeletionRequestNotFound, *AdminSubmitUserAccountDeletionRequestConflict, *AdminSubmitUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSubmitUserAccountDeletionRequestCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminSubmitUserAccountDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminSubmitUserAccountDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminSubmitUserAccountDeletionRequestNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminSubmitUserAccountDeletionRequestConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminSubmitUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminSubmitUserAccountDeletionRequestShort(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSubmitUserAccountDeletionRequestCreated:
		return v, nil
	case *AdminSubmitUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *AdminSubmitUserAccountDeletionRequestForbidden:
		return nil, v
	case *AdminSubmitUserAccountDeletionRequestNotFound:
		return nil, v
	case *AdminSubmitUserAccountDeletionRequestConflict:
		return nil, v
	case *AdminSubmitUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicCancelUserAccountDeletionRequest cancels user s account deletion request

  &lt;p&gt;Requires valid user access token&lt;/p&gt;
*/
func (a *Client) PublicCancelUserAccountDeletionRequest(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, *PublicCancelUserAccountDeletionRequestUnauthorized, *PublicCancelUserAccountDeletionRequestForbidden, *PublicCancelUserAccountDeletionRequestNotFound, *PublicCancelUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserAccountDeletionRequestNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicCancelUserAccountDeletionRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicCancelUserAccountDeletionRequestForbidden:
		return nil, nil, v, nil, nil, nil

	case *PublicCancelUserAccountDeletionRequestNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicCancelUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicCancelUserAccountDeletionRequestShort(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserAccountDeletionRequestNoContent:
		return v, nil
	case *PublicCancelUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *PublicCancelUserAccountDeletionRequestForbidden:
		return nil, v
	case *PublicCancelUserAccountDeletionRequestNotFound:
		return nil, v
	case *PublicCancelUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetUserAccountDeletionStatus retrieves specific user s account deletion status

  &lt;p&gt;Requires valid user access token&lt;/p&gt;
*/
func (a *Client) PublicGetUserAccountDeletionStatus(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, *PublicGetUserAccountDeletionStatusUnauthorized, *PublicGetUserAccountDeletionStatusForbidden, *PublicGetUserAccountDeletionStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAccountDeletionStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAccountDeletionStatusOK:
		return v, nil, nil, nil, nil

	case *PublicGetUserAccountDeletionStatusUnauthorized:
		return nil, v, nil, nil, nil

	case *PublicGetUserAccountDeletionStatusForbidden:
		return nil, nil, v, nil, nil

	case *PublicGetUserAccountDeletionStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetUserAccountDeletionStatusShort(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAccountDeletionStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAccountDeletionStatusOK:
		return v, nil
	case *PublicGetUserAccountDeletionStatusUnauthorized:
		return nil, v
	case *PublicGetUserAccountDeletionStatusForbidden:
		return nil, v
	case *PublicGetUserAccountDeletionStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicSubmitUserAccountDeletionRequest submits user s account deletion requests

  &lt;p&gt;Requires valid user access token and password
*/
func (a *Client) PublicSubmitUserAccountDeletionRequest(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, *PublicSubmitUserAccountDeletionRequestBadRequest, *PublicSubmitUserAccountDeletionRequestUnauthorized, *PublicSubmitUserAccountDeletionRequestForbidden, *PublicSubmitUserAccountDeletionRequestNotFound, *PublicSubmitUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitUserAccountDeletionRequestCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *PublicSubmitUserAccountDeletionRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PublicSubmitUserAccountDeletionRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PublicSubmitUserAccountDeletionRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PublicSubmitUserAccountDeletionRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PublicSubmitUserAccountDeletionRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicSubmitUserAccountDeletionRequestShort(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitUserAccountDeletionRequestCreated:
		return v, nil
	case *PublicSubmitUserAccountDeletionRequestBadRequest:
		return nil, v
	case *PublicSubmitUserAccountDeletionRequestUnauthorized:
		return nil, v
	case *PublicSubmitUserAccountDeletionRequestForbidden:
		return nil, v
	case *PublicSubmitUserAccountDeletionRequestNotFound:
		return nil, v
	case *PublicSubmitUserAccountDeletionRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
