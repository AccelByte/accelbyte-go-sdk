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

	AdminGetListDeletionDataRequest(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, *AdminGetListDeletionDataRequestBadRequest, *AdminGetListDeletionDataRequestUnauthorized, *AdminGetListDeletionDataRequestForbidden, *AdminGetListDeletionDataRequestNotFound, *AdminGetListDeletionDataRequestInternalServerError, error)

	AdminGetUserAccountDeletionRequest(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, *AdminGetUserAccountDeletionRequestUnauthorized, *AdminGetUserAccountDeletionRequestForbidden, *AdminGetUserAccountDeletionRequestNotFound, *AdminGetUserAccountDeletionRequestInternalServerError, error)

	AdminSubmitUserAccountDeletionRequest(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, *AdminSubmitUserAccountDeletionRequestUnauthorized, *AdminSubmitUserAccountDeletionRequestForbidden, *AdminSubmitUserAccountDeletionRequestNotFound, *AdminSubmitUserAccountDeletionRequestConflict, *AdminSubmitUserAccountDeletionRequestInternalServerError, error)

	PublicCancelUserAccountDeletionRequest(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, *PublicCancelUserAccountDeletionRequestUnauthorized, *PublicCancelUserAccountDeletionRequestForbidden, *PublicCancelUserAccountDeletionRequestNotFound, *PublicCancelUserAccountDeletionRequestInternalServerError, error)

	PublicGetUserAccountDeletionStatus(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, *PublicGetUserAccountDeletionStatusUnauthorized, *PublicGetUserAccountDeletionStatusForbidden, *PublicGetUserAccountDeletionStatusInternalServerError, error)

	PublicSubmitUserAccountDeletionRequest(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, *PublicSubmitUserAccountDeletionRequestBadRequest, *PublicSubmitUserAccountDeletionRequestUnauthorized, *PublicSubmitUserAccountDeletionRequestForbidden, *PublicSubmitUserAccountDeletionRequestNotFound, *PublicSubmitUserAccountDeletionRequestInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminCancelUserAccountDeletionRequest cancels user s account deletion request

  <p>Required permission <code>ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]</code> and scope <code>account</code></p>
*/
func (a *Client) AdminCancelUserAccountDeletionRequest(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestNoContent, *AdminCancelUserAccountDeletionRequestBadRequest, *AdminCancelUserAccountDeletionRequestUnauthorized, *AdminCancelUserAccountDeletionRequestForbidden, *AdminCancelUserAccountDeletionRequestNotFound, *AdminCancelUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

/*
  AdminGetListDeletionDataRequest retrieves all user s account deletion requests in specified date

  <p>Required permission <code>ADMIN:NAMESPACE:{namespace}:INFORMATION:USER[READ]</code> and scope <code>account</code></p>
*/
func (a *Client) AdminGetListDeletionDataRequest(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestOK, *AdminGetListDeletionDataRequestBadRequest, *AdminGetListDeletionDataRequestUnauthorized, *AdminGetListDeletionDataRequestForbidden, *AdminGetListDeletionDataRequestNotFound, *AdminGetListDeletionDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListDeletionDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListDeletionDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

/*
  AdminGetUserAccountDeletionRequest retrieves specific user s account deletion request

  <p>Required permission <code>ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId}[READ]</code> and scope <code>account</code></p>
*/
func (a *Client) AdminGetUserAccountDeletionRequest(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestOK, *AdminGetUserAccountDeletionRequestUnauthorized, *AdminGetUserAccountDeletionRequestForbidden, *AdminGetUserAccountDeletionRequestNotFound, *AdminGetUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

/*
  AdminSubmitUserAccountDeletionRequest submits user s account deletion requests

  <p>Required permission <code>ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [CREATE]</code> and scope <code>account</code></p>
*/
func (a *Client) AdminSubmitUserAccountDeletionRequest(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestCreated, *AdminSubmitUserAccountDeletionRequestUnauthorized, *AdminSubmitUserAccountDeletionRequestForbidden, *AdminSubmitUserAccountDeletionRequestNotFound, *AdminSubmitUserAccountDeletionRequestConflict, *AdminSubmitUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"http"},
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

/*
  PublicCancelUserAccountDeletionRequest cancels user s account deletion request

  <p>Requires valid user access token</p>
*/
func (a *Client) PublicCancelUserAccountDeletionRequest(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestNoContent, *PublicCancelUserAccountDeletionRequestUnauthorized, *PublicCancelUserAccountDeletionRequestForbidden, *PublicCancelUserAccountDeletionRequestNotFound, *PublicCancelUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

/*
  PublicGetUserAccountDeletionStatus retrieves specific user s account deletion status

  <p>Requires valid user access token</p>
*/
func (a *Client) PublicGetUserAccountDeletionStatus(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusOK, *PublicGetUserAccountDeletionStatusUnauthorized, *PublicGetUserAccountDeletionStatusForbidden, *PublicGetUserAccountDeletionStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAccountDeletionStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
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

/*
  PublicSubmitUserAccountDeletionRequest submits user s account deletion requests

  <p>Requires valid user access token and password
*/
func (a *Client) PublicSubmitUserAccountDeletionRequest(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestCreated, *PublicSubmitUserAccountDeletionRequestBadRequest, *PublicSubmitUserAccountDeletionRequestUnauthorized, *PublicSubmitUserAccountDeletionRequestForbidden, *PublicSubmitUserAccountDeletionRequestNotFound, *PublicSubmitUserAccountDeletionRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitUserAccountDeletionRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"http"},
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}