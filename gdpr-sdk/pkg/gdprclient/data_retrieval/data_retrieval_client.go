// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package data_retrieval

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetListPersonalDataRequest(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestOK, *AdminGetListPersonalDataRequestBadRequest, *AdminGetListPersonalDataRequestUnauthorized, *AdminGetListPersonalDataRequestForbidden, *AdminGetListPersonalDataRequestNotFound, *AdminGetListPersonalDataRequestInternalServerError, error)
	AdminGetListPersonalDataRequestShort(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestOK, error)
	AdminGetUserPersonalDataRequests(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsOK, *AdminGetUserPersonalDataRequestsBadRequest, *AdminGetUserPersonalDataRequestsUnauthorized, *AdminGetUserPersonalDataRequestsInternalServerError, error)
	AdminGetUserPersonalDataRequestsShort(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsOK, error)
	AdminRequestDataRetrieval(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalCreated, *AdminRequestDataRetrievalBadRequest, *AdminRequestDataRetrievalUnauthorized, *AdminRequestDataRetrievalInternalServerError, error)
	AdminRequestDataRetrievalShort(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalCreated, error)
	AdminCancelUserPersonalDataRequest(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestNoContent, *AdminCancelUserPersonalDataRequestUnauthorized, *AdminCancelUserPersonalDataRequestNotFound, *AdminCancelUserPersonalDataRequestConflict, *AdminCancelUserPersonalDataRequestInternalServerError, error)
	AdminCancelUserPersonalDataRequestShort(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestNoContent, error)
	AdminGeneratePersonalDataURL(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLOK, *AdminGeneratePersonalDataURLBadRequest, *AdminGeneratePersonalDataURLUnauthorized, *AdminGeneratePersonalDataURLNotFound, *AdminGeneratePersonalDataURLInternalServerError, error)
	AdminGeneratePersonalDataURLShort(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLOK, error)
	PublicGetUserPersonalDataRequests(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsOK, *PublicGetUserPersonalDataRequestsBadRequest, *PublicGetUserPersonalDataRequestsUnauthorized, *PublicGetUserPersonalDataRequestsInternalServerError, error)
	PublicGetUserPersonalDataRequestsShort(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsOK, error)
	PublicRequestDataRetrieval(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalCreated, *PublicRequestDataRetrievalBadRequest, *PublicRequestDataRetrievalUnauthorized, *PublicRequestDataRetrievalInternalServerError, error)
	PublicRequestDataRetrievalShort(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalCreated, error)
	PublicCancelUserPersonalDataRequest(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestNoContent, *PublicCancelUserPersonalDataRequestUnauthorized, *PublicCancelUserPersonalDataRequestNotFound, *PublicCancelUserPersonalDataRequestConflict, *PublicCancelUserPersonalDataRequestInternalServerError, error)
	PublicCancelUserPersonalDataRequestShort(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestNoContent, error)
	PublicGeneratePersonalDataURL(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLOK, *PublicGeneratePersonalDataURLBadRequest, *PublicGeneratePersonalDataURLUnauthorized, *PublicGeneratePersonalDataURLNotFound, *PublicGeneratePersonalDataURLInternalServerError, error)
	PublicGeneratePersonalDataURLShort(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetListPersonalDataRequestShort instead.

AdminGetListPersonalDataRequest get list personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER [READ]` and scope `account`
*/
func (a *Client) AdminGetListPersonalDataRequest(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestOK, *AdminGetListPersonalDataRequestBadRequest, *AdminGetListPersonalDataRequestUnauthorized, *AdminGetListPersonalDataRequestForbidden, *AdminGetListPersonalDataRequestNotFound, *AdminGetListPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetListPersonalDataRequestOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetListPersonalDataRequestBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetListPersonalDataRequestUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetListPersonalDataRequestForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetListPersonalDataRequestNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetListPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListPersonalDataRequestShort get list personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER [READ]` and scope `account`
*/
func (a *Client) AdminGetListPersonalDataRequestShort(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListPersonalDataRequestOK:
		return v, nil
	case *AdminGetListPersonalDataRequestBadRequest:
		return nil, v
	case *AdminGetListPersonalDataRequestUnauthorized:
		return nil, v
	case *AdminGetListPersonalDataRequestForbidden:
		return nil, v
	case *AdminGetListPersonalDataRequestNotFound:
		return nil, v
	case *AdminGetListPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUserPersonalDataRequestsShort instead.

AdminGetUserPersonalDataRequests get user's personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`
*/
func (a *Client) AdminGetUserPersonalDataRequests(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsOK, *AdminGetUserPersonalDataRequestsBadRequest, *AdminGetUserPersonalDataRequestsUnauthorized, *AdminGetUserPersonalDataRequestsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPersonalDataRequestsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPersonalDataRequestsOK:
		return v, nil, nil, nil, nil

	case *AdminGetUserPersonalDataRequestsBadRequest:
		return nil, v, nil, nil, nil

	case *AdminGetUserPersonalDataRequestsUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminGetUserPersonalDataRequestsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPersonalDataRequestsShort get user's personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`
*/
func (a *Client) AdminGetUserPersonalDataRequestsShort(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPersonalDataRequestsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPersonalDataRequestsOK:
		return v, nil
	case *AdminGetUserPersonalDataRequestsBadRequest:
		return nil, v
	case *AdminGetUserPersonalDataRequestsUnauthorized:
		return nil, v
	case *AdminGetUserPersonalDataRequestsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminRequestDataRetrievalShort instead.

AdminRequestDataRetrieval submit user personal data retrieval request


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [CREATE]` and scope `account`




If admin request data for themselves, password is need to be set
*/
func (a *Client) AdminRequestDataRetrieval(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalCreated, *AdminRequestDataRetrievalBadRequest, *AdminRequestDataRetrievalUnauthorized, *AdminRequestDataRetrievalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRequestDataRetrievalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminRequestDataRetrievalCreated:
		return v, nil, nil, nil, nil

	case *AdminRequestDataRetrievalBadRequest:
		return nil, v, nil, nil, nil

	case *AdminRequestDataRetrievalUnauthorized:
		return nil, nil, v, nil, nil

	case *AdminRequestDataRetrievalInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRequestDataRetrievalShort submit user personal data retrieval request


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [CREATE]` and scope `account`




If admin request data for themselves, password is need to be set
*/
func (a *Client) AdminRequestDataRetrievalShort(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRequestDataRetrievalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRequestDataRetrievalCreated:
		return v, nil
	case *AdminRequestDataRetrievalBadRequest:
		return nil, v
	case *AdminRequestDataRetrievalUnauthorized:
		return nil, v
	case *AdminRequestDataRetrievalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCancelUserPersonalDataRequestShort instead.

AdminCancelUserPersonalDataRequest cancel user's personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]` and scope `account`
*/
func (a *Client) AdminCancelUserPersonalDataRequest(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestNoContent, *AdminCancelUserPersonalDataRequestUnauthorized, *AdminCancelUserPersonalDataRequestNotFound, *AdminCancelUserPersonalDataRequestConflict, *AdminCancelUserPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserPersonalDataRequestNoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminCancelUserPersonalDataRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminCancelUserPersonalDataRequestNotFound:
		return nil, nil, v, nil, nil, nil

	case *AdminCancelUserPersonalDataRequestConflict:
		return nil, nil, nil, v, nil, nil

	case *AdminCancelUserPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCancelUserPersonalDataRequestShort cancel user's personal data requests


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [DELETE]` and scope `account`
*/
func (a *Client) AdminCancelUserPersonalDataRequestShort(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserPersonalDataRequestNoContent:
		return v, nil
	case *AdminCancelUserPersonalDataRequestUnauthorized:
		return nil, v
	case *AdminCancelUserPersonalDataRequestNotFound:
		return nil, v
	case *AdminCancelUserPersonalDataRequestConflict:
		return nil, v
	case *AdminCancelUserPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGeneratePersonalDataURLShort instead.

AdminGeneratePersonalDataURL generate personal data download url


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`
*/
func (a *Client) AdminGeneratePersonalDataURL(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLOK, *AdminGeneratePersonalDataURLBadRequest, *AdminGeneratePersonalDataURLUnauthorized, *AdminGeneratePersonalDataURLNotFound, *AdminGeneratePersonalDataURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGeneratePersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGeneratePersonalDataURLOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGeneratePersonalDataURLBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGeneratePersonalDataURLUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGeneratePersonalDataURLNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGeneratePersonalDataURLInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGeneratePersonalDataURLShort generate personal data download url


Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`
*/
func (a *Client) AdminGeneratePersonalDataURLShort(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGeneratePersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGeneratePersonalDataURLOK:
		return v, nil
	case *AdminGeneratePersonalDataURLBadRequest:
		return nil, v
	case *AdminGeneratePersonalDataURLUnauthorized:
		return nil, v
	case *AdminGeneratePersonalDataURLNotFound:
		return nil, v
	case *AdminGeneratePersonalDataURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetUserPersonalDataRequestsShort instead.

PublicGetUserPersonalDataRequests get user's personal data requests


Requires valid user access token
*/
func (a *Client) PublicGetUserPersonalDataRequests(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsOK, *PublicGetUserPersonalDataRequestsBadRequest, *PublicGetUserPersonalDataRequestsUnauthorized, *PublicGetUserPersonalDataRequestsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPersonalDataRequestsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPersonalDataRequestsOK:
		return v, nil, nil, nil, nil

	case *PublicGetUserPersonalDataRequestsBadRequest:
		return nil, v, nil, nil, nil

	case *PublicGetUserPersonalDataRequestsUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicGetUserPersonalDataRequestsInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPersonalDataRequestsShort get user's personal data requests


Requires valid user access token
*/
func (a *Client) PublicGetUserPersonalDataRequestsShort(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPersonalDataRequestsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPersonalDataRequestsOK:
		return v, nil
	case *PublicGetUserPersonalDataRequestsBadRequest:
		return nil, v
	case *PublicGetUserPersonalDataRequestsUnauthorized:
		return nil, v
	case *PublicGetUserPersonalDataRequestsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicRequestDataRetrievalShort instead.

PublicRequestDataRetrieval submit personal data retrieval request


Requires valid user access token
*/
func (a *Client) PublicRequestDataRetrieval(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalCreated, *PublicRequestDataRetrievalBadRequest, *PublicRequestDataRetrievalUnauthorized, *PublicRequestDataRetrievalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRequestDataRetrievalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicRequestDataRetrievalCreated:
		return v, nil, nil, nil, nil

	case *PublicRequestDataRetrievalBadRequest:
		return nil, v, nil, nil, nil

	case *PublicRequestDataRetrievalUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicRequestDataRetrievalInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRequestDataRetrievalShort submit personal data retrieval request


Requires valid user access token
*/
func (a *Client) PublicRequestDataRetrievalShort(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRequestDataRetrievalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRequestDataRetrievalCreated:
		return v, nil
	case *PublicRequestDataRetrievalBadRequest:
		return nil, v
	case *PublicRequestDataRetrievalUnauthorized:
		return nil, v
	case *PublicRequestDataRetrievalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicCancelUserPersonalDataRequestShort instead.

PublicCancelUserPersonalDataRequest cancel user's personal data requests


Requires valid user access token
*/
func (a *Client) PublicCancelUserPersonalDataRequest(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestNoContent, *PublicCancelUserPersonalDataRequestUnauthorized, *PublicCancelUserPersonalDataRequestNotFound, *PublicCancelUserPersonalDataRequestConflict, *PublicCancelUserPersonalDataRequestInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserPersonalDataRequestNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicCancelUserPersonalDataRequestUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *PublicCancelUserPersonalDataRequestNotFound:
		return nil, nil, v, nil, nil, nil

	case *PublicCancelUserPersonalDataRequestConflict:
		return nil, nil, nil, v, nil, nil

	case *PublicCancelUserPersonalDataRequestInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelUserPersonalDataRequestShort cancel user's personal data requests


Requires valid user access token
*/
func (a *Client) PublicCancelUserPersonalDataRequestShort(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserPersonalDataRequestParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserPersonalDataRequestNoContent:
		return v, nil
	case *PublicCancelUserPersonalDataRequestUnauthorized:
		return nil, v
	case *PublicCancelUserPersonalDataRequestNotFound:
		return nil, v
	case *PublicCancelUserPersonalDataRequestConflict:
		return nil, v
	case *PublicCancelUserPersonalDataRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGeneratePersonalDataURLShort instead.

PublicGeneratePersonalDataURL generate personal data download url


Requires valid user access token
*/
func (a *Client) PublicGeneratePersonalDataURL(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLOK, *PublicGeneratePersonalDataURLBadRequest, *PublicGeneratePersonalDataURLUnauthorized, *PublicGeneratePersonalDataURLNotFound, *PublicGeneratePersonalDataURLInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePersonalDataURLOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGeneratePersonalDataURLBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGeneratePersonalDataURLUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGeneratePersonalDataURLNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGeneratePersonalDataURLInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratePersonalDataURLShort generate personal data download url


Requires valid user access token
*/
func (a *Client) PublicGeneratePersonalDataURLShort(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePersonalDataURLParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePersonalDataURLOK:
		return v, nil
	case *PublicGeneratePersonalDataURLBadRequest:
		return nil, v
	case *PublicGeneratePersonalDataURLUnauthorized:
		return nil, v
	case *PublicGeneratePersonalDataURLNotFound:
		return nil, v
	case *PublicGeneratePersonalDataURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
