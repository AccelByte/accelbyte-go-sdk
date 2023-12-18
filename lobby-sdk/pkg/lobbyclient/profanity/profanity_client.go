// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package profanity

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new profanity API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for profanity API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminDebugProfanityFilters(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, *AdminDebugProfanityFiltersBadRequest, *AdminDebugProfanityFiltersUnauthorized, *AdminDebugProfanityFiltersForbidden, *AdminDebugProfanityFiltersNotFound, *AdminDebugProfanityFiltersInternalServerError, error)
	AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, error)
	AdminGetProfanityListFiltersV1(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, *AdminGetProfanityListFiltersV1BadRequest, *AdminGetProfanityListFiltersV1Unauthorized, *AdminGetProfanityListFiltersV1Forbidden, *AdminGetProfanityListFiltersV1NotFound, *AdminGetProfanityListFiltersV1InternalServerError, error)
	AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, error)
	AdminAddProfanityFilterIntoList(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, *AdminAddProfanityFilterIntoListBadRequest, *AdminAddProfanityFilterIntoListUnauthorized, *AdminAddProfanityFilterIntoListForbidden, *AdminAddProfanityFilterIntoListNotFound, *AdminAddProfanityFilterIntoListInternalServerError, error)
	AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, error)
	AdminAddProfanityFilters(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, *AdminAddProfanityFiltersBadRequest, *AdminAddProfanityFiltersUnauthorized, *AdminAddProfanityFiltersForbidden, *AdminAddProfanityFiltersNotFound, *AdminAddProfanityFiltersInternalServerError, error)
	AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, error)
	AdminImportProfanityFiltersFromFile(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, *AdminImportProfanityFiltersFromFileBadRequest, *AdminImportProfanityFiltersFromFileUnauthorized, *AdminImportProfanityFiltersFromFileForbidden, *AdminImportProfanityFiltersFromFileNotFound, *AdminImportProfanityFiltersFromFileInternalServerError, error)
	AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, error)
	AdminDeleteProfanityFilter(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, *AdminDeleteProfanityFilterBadRequest, *AdminDeleteProfanityFilterUnauthorized, *AdminDeleteProfanityFilterForbidden, *AdminDeleteProfanityFilterNotFound, *AdminDeleteProfanityFilterInternalServerError, error)
	AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, error)
	AdminGetProfanityLists(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, *AdminGetProfanityListsBadRequest, *AdminGetProfanityListsUnauthorized, *AdminGetProfanityListsForbidden, *AdminGetProfanityListsNotFound, *AdminGetProfanityListsInternalServerError, error)
	AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, error)
	AdminCreateProfanityList(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, *AdminCreateProfanityListBadRequest, *AdminCreateProfanityListUnauthorized, *AdminCreateProfanityListForbidden, *AdminCreateProfanityListNotFound, *AdminCreateProfanityListInternalServerError, error)
	AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, error)
	AdminUpdateProfanityList(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, *AdminUpdateProfanityListBadRequest, *AdminUpdateProfanityListUnauthorized, *AdminUpdateProfanityListForbidden, *AdminUpdateProfanityListNotFound, *AdminUpdateProfanityListInternalServerError, error)
	AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, error)
	AdminDeleteProfanityList(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, *AdminDeleteProfanityListBadRequest, *AdminDeleteProfanityListUnauthorized, *AdminDeleteProfanityListForbidden, *AdminDeleteProfanityListNotFound, *AdminDeleteProfanityListInternalServerError, error)
	AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, error)
	AdminGetProfanityRule(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, *AdminGetProfanityRuleBadRequest, *AdminGetProfanityRuleUnauthorized, *AdminGetProfanityRuleForbidden, *AdminGetProfanityRuleNotFound, *AdminGetProfanityRuleInternalServerError, error)
	AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, error)
	AdminSetProfanityRuleForNamespace(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, *AdminSetProfanityRuleForNamespaceBadRequest, *AdminSetProfanityRuleForNamespaceUnauthorized, *AdminSetProfanityRuleForNamespaceForbidden, *AdminSetProfanityRuleForNamespaceNotFound, *AdminSetProfanityRuleForNamespaceInternalServerError, error)
	AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, error)
	AdminVerifyMessageProfanityResponse(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, *AdminVerifyMessageProfanityResponseBadRequest, *AdminVerifyMessageProfanityResponseUnauthorized, *AdminVerifyMessageProfanityResponseForbidden, *AdminVerifyMessageProfanityResponseNotFound, *AdminVerifyMessageProfanityResponseInternalServerError, error)
	AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminDebugProfanityFiltersShort instead.

AdminDebugProfanityFilters get the list of filters that would modify the phrase
Get the list of filters that would modify the phrase
*/
func (a *Client) AdminDebugProfanityFilters(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, *AdminDebugProfanityFiltersBadRequest, *AdminDebugProfanityFiltersUnauthorized, *AdminDebugProfanityFiltersForbidden, *AdminDebugProfanityFiltersNotFound, *AdminDebugProfanityFiltersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDebugProfanityFiltersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDebugProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDebugProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDebugProfanityFiltersOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDebugProfanityFiltersBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDebugProfanityFiltersUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDebugProfanityFiltersForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDebugProfanityFiltersNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDebugProfanityFiltersInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDebugProfanityFiltersShort get the list of filters that would modify the phrase
Get the list of filters that would modify the phrase
*/
func (a *Client) AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDebugProfanityFiltersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDebugProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDebugProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDebugProfanityFiltersOK:
		return v, nil
	case *AdminDebugProfanityFiltersBadRequest:
		return nil, v
	case *AdminDebugProfanityFiltersUnauthorized:
		return nil, v
	case *AdminDebugProfanityFiltersForbidden:
		return nil, v
	case *AdminDebugProfanityFiltersNotFound:
		return nil, v
	case *AdminDebugProfanityFiltersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetProfanityListFiltersV1Short instead.

AdminGetProfanityListFiltersV1 get the list of filters inside the list
Get the list of filters inside the list.
*/
func (a *Client) AdminGetProfanityListFiltersV1(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, *AdminGetProfanityListFiltersV1BadRequest, *AdminGetProfanityListFiltersV1Unauthorized, *AdminGetProfanityListFiltersV1Forbidden, *AdminGetProfanityListFiltersV1NotFound, *AdminGetProfanityListFiltersV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListFiltersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityListFiltersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListFiltersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListFiltersV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetProfanityListFiltersV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetProfanityListFiltersV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetProfanityListFiltersV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetProfanityListFiltersV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetProfanityListFiltersV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListFiltersV1Short get the list of filters inside the list
Get the list of filters inside the list.
*/
func (a *Client) AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListFiltersV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityListFiltersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListFiltersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListFiltersV1OK:
		return v, nil
	case *AdminGetProfanityListFiltersV1BadRequest:
		return nil, v
	case *AdminGetProfanityListFiltersV1Unauthorized:
		return nil, v
	case *AdminGetProfanityListFiltersV1Forbidden:
		return nil, v
	case *AdminGetProfanityListFiltersV1NotFound:
		return nil, v
	case *AdminGetProfanityListFiltersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddProfanityFilterIntoListShort instead.

AdminAddProfanityFilterIntoList add a single filter into the list
Add a single filter into the list
*/
func (a *Client) AdminAddProfanityFilterIntoList(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, *AdminAddProfanityFilterIntoListBadRequest, *AdminAddProfanityFilterIntoListUnauthorized, *AdminAddProfanityFilterIntoListForbidden, *AdminAddProfanityFilterIntoListNotFound, *AdminAddProfanityFilterIntoListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFilterIntoListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddProfanityFilterIntoList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFilterIntoListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFilterIntoListOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminAddProfanityFilterIntoListBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminAddProfanityFilterIntoListUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminAddProfanityFilterIntoListForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminAddProfanityFilterIntoListNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminAddProfanityFilterIntoListInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFilterIntoListShort add a single filter into the list
Add a single filter into the list
*/
func (a *Client) AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFilterIntoListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddProfanityFilterIntoList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFilterIntoListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFilterIntoListOK:
		return v, nil
	case *AdminAddProfanityFilterIntoListBadRequest:
		return nil, v
	case *AdminAddProfanityFilterIntoListUnauthorized:
		return nil, v
	case *AdminAddProfanityFilterIntoListForbidden:
		return nil, v
	case *AdminAddProfanityFilterIntoListNotFound:
		return nil, v
	case *AdminAddProfanityFilterIntoListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminAddProfanityFiltersShort instead.

AdminAddProfanityFilters add multiple filters into the list
Add multiple filters into the list
*/
func (a *Client) AdminAddProfanityFilters(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, *AdminAddProfanityFiltersBadRequest, *AdminAddProfanityFiltersUnauthorized, *AdminAddProfanityFiltersForbidden, *AdminAddProfanityFiltersNotFound, *AdminAddProfanityFiltersInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFiltersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFiltersOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminAddProfanityFiltersBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminAddProfanityFiltersUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminAddProfanityFiltersForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminAddProfanityFiltersNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminAddProfanityFiltersInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFiltersShort add multiple filters into the list
Add multiple filters into the list
*/
func (a *Client) AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFiltersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminAddProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFiltersOK:
		return v, nil
	case *AdminAddProfanityFiltersBadRequest:
		return nil, v
	case *AdminAddProfanityFiltersUnauthorized:
		return nil, v
	case *AdminAddProfanityFiltersForbidden:
		return nil, v
	case *AdminAddProfanityFiltersNotFound:
		return nil, v
	case *AdminAddProfanityFiltersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminImportProfanityFiltersFromFileShort instead.

AdminImportProfanityFiltersFromFile import a file with filters
Import a file with filters
*/
func (a *Client) AdminImportProfanityFiltersFromFile(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, *AdminImportProfanityFiltersFromFileBadRequest, *AdminImportProfanityFiltersFromFileUnauthorized, *AdminImportProfanityFiltersFromFileForbidden, *AdminImportProfanityFiltersFromFileNotFound, *AdminImportProfanityFiltersFromFileInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportProfanityFiltersFromFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminImportProfanityFiltersFromFile",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportProfanityFiltersFromFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminImportProfanityFiltersFromFileOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminImportProfanityFiltersFromFileBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminImportProfanityFiltersFromFileUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminImportProfanityFiltersFromFileForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminImportProfanityFiltersFromFileNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminImportProfanityFiltersFromFileInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminImportProfanityFiltersFromFileShort import a file with filters
Import a file with filters
*/
func (a *Client) AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportProfanityFiltersFromFileParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminImportProfanityFiltersFromFile",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportProfanityFiltersFromFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminImportProfanityFiltersFromFileOK:
		return v, nil
	case *AdminImportProfanityFiltersFromFileBadRequest:
		return nil, v
	case *AdminImportProfanityFiltersFromFileUnauthorized:
		return nil, v
	case *AdminImportProfanityFiltersFromFileForbidden:
		return nil, v
	case *AdminImportProfanityFiltersFromFileNotFound:
		return nil, v
	case *AdminImportProfanityFiltersFromFileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteProfanityFilterShort instead.

AdminDeleteProfanityFilter delete the filter from the list
Delete the filter from the list
*/
func (a *Client) AdminDeleteProfanityFilter(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, *AdminDeleteProfanityFilterBadRequest, *AdminDeleteProfanityFilterUnauthorized, *AdminDeleteProfanityFilterForbidden, *AdminDeleteProfanityFilterNotFound, *AdminDeleteProfanityFilterInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityFilterParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteProfanityFilter",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityFilterReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityFilterOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteProfanityFilterBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteProfanityFilterUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteProfanityFilterForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteProfanityFilterNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteProfanityFilterInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityFilterShort delete the filter from the list
Delete the filter from the list
*/
func (a *Client) AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityFilterParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteProfanityFilter",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityFilterReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityFilterOK:
		return v, nil
	case *AdminDeleteProfanityFilterBadRequest:
		return nil, v
	case *AdminDeleteProfanityFilterUnauthorized:
		return nil, v
	case *AdminDeleteProfanityFilterForbidden:
		return nil, v
	case *AdminDeleteProfanityFilterNotFound:
		return nil, v
	case *AdminDeleteProfanityFilterInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetProfanityListsShort instead.

AdminGetProfanityLists get lists
Get lists
*/
func (a *Client) AdminGetProfanityLists(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, *AdminGetProfanityListsBadRequest, *AdminGetProfanityListsUnauthorized, *AdminGetProfanityListsForbidden, *AdminGetProfanityListsNotFound, *AdminGetProfanityListsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityLists",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListsOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetProfanityListsBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetProfanityListsUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetProfanityListsForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetProfanityListsNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetProfanityListsInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListsShort get lists
Get lists
*/
func (a *Client) AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityLists",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListsOK:
		return v, nil
	case *AdminGetProfanityListsBadRequest:
		return nil, v
	case *AdminGetProfanityListsUnauthorized:
		return nil, v
	case *AdminGetProfanityListsForbidden:
		return nil, v
	case *AdminGetProfanityListsNotFound:
		return nil, v
	case *AdminGetProfanityListsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateProfanityListShort instead.

AdminCreateProfanityList create a new list
Create a new list
*/
func (a *Client) AdminCreateProfanityList(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, *AdminCreateProfanityListBadRequest, *AdminCreateProfanityListUnauthorized, *AdminCreateProfanityListForbidden, *AdminCreateProfanityListNotFound, *AdminCreateProfanityListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateProfanityListOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateProfanityListBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateProfanityListUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateProfanityListForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateProfanityListNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateProfanityListInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateProfanityListShort create a new list
Create a new list
*/
func (a *Client) AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateProfanityListOK:
		return v, nil
	case *AdminCreateProfanityListBadRequest:
		return nil, v
	case *AdminCreateProfanityListUnauthorized:
		return nil, v
	case *AdminCreateProfanityListForbidden:
		return nil, v
	case *AdminCreateProfanityListNotFound:
		return nil, v
	case *AdminCreateProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateProfanityListShort instead.

AdminUpdateProfanityList update the list
Update the list
*/
func (a *Client) AdminUpdateProfanityList(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, *AdminUpdateProfanityListBadRequest, *AdminUpdateProfanityListUnauthorized, *AdminUpdateProfanityListForbidden, *AdminUpdateProfanityListNotFound, *AdminUpdateProfanityListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfanityListOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateProfanityListBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateProfanityListUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateProfanityListForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateProfanityListNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateProfanityListInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateProfanityListShort update the list
Update the list
*/
func (a *Client) AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfanityListOK:
		return v, nil
	case *AdminUpdateProfanityListBadRequest:
		return nil, v
	case *AdminUpdateProfanityListUnauthorized:
		return nil, v
	case *AdminUpdateProfanityListForbidden:
		return nil, v
	case *AdminUpdateProfanityListNotFound:
		return nil, v
	case *AdminUpdateProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteProfanityListShort instead.

AdminDeleteProfanityList delete a list include all filters inside of it
Delete a list include all filters inside of it
*/
func (a *Client) AdminDeleteProfanityList(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, *AdminDeleteProfanityListBadRequest, *AdminDeleteProfanityListUnauthorized, *AdminDeleteProfanityListForbidden, *AdminDeleteProfanityListNotFound, *AdminDeleteProfanityListInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteProfanityList",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityListOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminDeleteProfanityListBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminDeleteProfanityListUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminDeleteProfanityListForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminDeleteProfanityListNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminDeleteProfanityListInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityListShort delete a list include all filters inside of it
Delete a list include all filters inside of it
*/
func (a *Client) AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityListParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteProfanityList",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityListOK:
		return v, nil
	case *AdminDeleteProfanityListBadRequest:
		return nil, v
	case *AdminDeleteProfanityListUnauthorized:
		return nil, v
	case *AdminDeleteProfanityListForbidden:
		return nil, v
	case *AdminDeleteProfanityListNotFound:
		return nil, v
	case *AdminDeleteProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetProfanityRuleShort instead.

AdminGetProfanityRule get current profanity rule
Get current profanity rule
*/
func (a *Client) AdminGetProfanityRule(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, *AdminGetProfanityRuleBadRequest, *AdminGetProfanityRuleUnauthorized, *AdminGetProfanityRuleForbidden, *AdminGetProfanityRuleNotFound, *AdminGetProfanityRuleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityRule",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityRuleOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetProfanityRuleBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetProfanityRuleUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetProfanityRuleForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetProfanityRuleNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetProfanityRuleInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityRuleShort get current profanity rule
Get current profanity rule
*/
func (a *Client) AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetProfanityRule",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityRuleOK:
		return v, nil
	case *AdminGetProfanityRuleBadRequest:
		return nil, v
	case *AdminGetProfanityRuleUnauthorized:
		return nil, v
	case *AdminGetProfanityRuleForbidden:
		return nil, v
	case *AdminGetProfanityRuleNotFound:
		return nil, v
	case *AdminGetProfanityRuleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSetProfanityRuleForNamespaceShort instead.

AdminSetProfanityRuleForNamespace set current profanity rule
Set current profanity rule
*/
func (a *Client) AdminSetProfanityRuleForNamespace(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, *AdminSetProfanityRuleForNamespaceBadRequest, *AdminSetProfanityRuleForNamespaceUnauthorized, *AdminSetProfanityRuleForNamespaceForbidden, *AdminSetProfanityRuleForNamespaceNotFound, *AdminSetProfanityRuleForNamespaceInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetProfanityRuleForNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetProfanityRuleForNamespace",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetProfanityRuleForNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSetProfanityRuleForNamespaceOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminSetProfanityRuleForNamespaceBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminSetProfanityRuleForNamespaceUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminSetProfanityRuleForNamespaceForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminSetProfanityRuleForNamespaceNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminSetProfanityRuleForNamespaceInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetProfanityRuleForNamespaceShort set current profanity rule
Set current profanity rule
*/
func (a *Client) AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetProfanityRuleForNamespaceParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSetProfanityRuleForNamespace",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetProfanityRuleForNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetProfanityRuleForNamespaceOK:
		return v, nil
	case *AdminSetProfanityRuleForNamespaceBadRequest:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceUnauthorized:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceForbidden:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceNotFound:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminVerifyMessageProfanityResponseShort instead.

AdminVerifyMessageProfanityResponse verify a message directly from the ui or other services
Verify a message directly from the UI or other services
*/
func (a *Client) AdminVerifyMessageProfanityResponse(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, *AdminVerifyMessageProfanityResponseBadRequest, *AdminVerifyMessageProfanityResponseUnauthorized, *AdminVerifyMessageProfanityResponseForbidden, *AdminVerifyMessageProfanityResponseNotFound, *AdminVerifyMessageProfanityResponseInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyMessageProfanityResponseParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminVerifyMessageProfanityResponse",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyMessageProfanityResponseReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyMessageProfanityResponseOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminVerifyMessageProfanityResponseBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminVerifyMessageProfanityResponseUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminVerifyMessageProfanityResponseForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminVerifyMessageProfanityResponseNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminVerifyMessageProfanityResponseInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyMessageProfanityResponseShort verify a message directly from the ui or other services
Verify a message directly from the UI or other services
*/
func (a *Client) AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyMessageProfanityResponseParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminVerifyMessageProfanityResponse",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyMessageProfanityResponseReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyMessageProfanityResponseOK:
		return v, nil
	case *AdminVerifyMessageProfanityResponseBadRequest:
		return nil, v
	case *AdminVerifyMessageProfanityResponseUnauthorized:
		return nil, v
	case *AdminVerifyMessageProfanityResponseForbidden:
		return nil, v
	case *AdminVerifyMessageProfanityResponseNotFound:
		return nil, v
	case *AdminVerifyMessageProfanityResponseInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
