// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryPlayerAttributes(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, *AdminQueryPlayerAttributesBadRequest, *AdminQueryPlayerAttributesUnauthorized, *AdminQueryPlayerAttributesNotFound, *AdminQueryPlayerAttributesInternalServerError, error)
	AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, error)
	AdminGetPlayerAttributes(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, *AdminGetPlayerAttributesBadRequest, *AdminGetPlayerAttributesUnauthorized, *AdminGetPlayerAttributesNotFound, *AdminGetPlayerAttributesInternalServerError, error)
	AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, error)
	PublicGetBulkPlayerCurrentPlatform(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, *PublicGetBulkPlayerCurrentPlatformBadRequest, *PublicGetBulkPlayerCurrentPlatformUnauthorized, *PublicGetBulkPlayerCurrentPlatformNotFound, *PublicGetBulkPlayerCurrentPlatformInternalServerError, error)
	PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, error)
	PublicGetPlayerAttributes(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, *PublicGetPlayerAttributesBadRequest, *PublicGetPlayerAttributesUnauthorized, *PublicGetPlayerAttributesNotFound, *PublicGetPlayerAttributesInternalServerError, error)
	PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, error)
	PublicStorePlayerAttributes(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, *PublicStorePlayerAttributesBadRequest, *PublicStorePlayerAttributesUnauthorized, *PublicStorePlayerAttributesInternalServerError, error)
	PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, error)
	PublicDeletePlayerAttributes(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, *PublicDeletePlayerAttributesBadRequest, *PublicDeletePlayerAttributesUnauthorized, *PublicDeletePlayerAttributesNotFound, *PublicDeletePlayerAttributesInternalServerError, error)
	PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminQueryPlayerAttributesShort instead.

AdminQueryPlayerAttributes query player attributes.
Admin get attributes of players.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminQueryPlayerAttributes(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, *AdminQueryPlayerAttributesBadRequest, *AdminQueryPlayerAttributesUnauthorized, *AdminQueryPlayerAttributesNotFound, *AdminQueryPlayerAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPlayerAttributesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminQueryPlayerAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminQueryPlayerAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminQueryPlayerAttributesNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminQueryPlayerAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryPlayerAttributesShort query player attributes.
Admin get attributes of players.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminQueryPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPlayerAttributesOK:
		return v, nil
	case *AdminQueryPlayerAttributesBadRequest:
		return nil, v
	case *AdminQueryPlayerAttributesUnauthorized:
		return nil, v
	case *AdminQueryPlayerAttributesNotFound:
		return nil, v
	case *AdminQueryPlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetPlayerAttributesShort instead.

AdminGetPlayerAttributes get player attributes.
Admin get attributes of a player.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminGetPlayerAttributes(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, *AdminGetPlayerAttributesBadRequest, *AdminGetPlayerAttributesUnauthorized, *AdminGetPlayerAttributesNotFound, *AdminGetPlayerAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerAttributesOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetPlayerAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetPlayerAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetPlayerAttributesNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetPlayerAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerAttributesShort get player attributes.
Admin get attributes of a player.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerAttributesOK:
		return v, nil
	case *AdminGetPlayerAttributesBadRequest:
		return nil, v
	case *AdminGetPlayerAttributesUnauthorized:
		return nil, v
	case *AdminGetPlayerAttributesNotFound:
		return nil, v
	case *AdminGetPlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetBulkPlayerCurrentPlatformShort instead.

PublicGetBulkPlayerCurrentPlatform get player current platform in bulk.
Get bulk players current platform.
*/
func (a *Client) PublicGetBulkPlayerCurrentPlatform(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, *PublicGetBulkPlayerCurrentPlatformBadRequest, *PublicGetBulkPlayerCurrentPlatformUnauthorized, *PublicGetBulkPlayerCurrentPlatformNotFound, *PublicGetBulkPlayerCurrentPlatformInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetBulkPlayerCurrentPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetBulkPlayerCurrentPlatform",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/bulk/platform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetBulkPlayerCurrentPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetBulkPlayerCurrentPlatformOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetBulkPlayerCurrentPlatformBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetBulkPlayerCurrentPlatformUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetBulkPlayerCurrentPlatformNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetBulkPlayerCurrentPlatformInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetBulkPlayerCurrentPlatformShort get player current platform in bulk.
Get bulk players current platform.
*/
func (a *Client) PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetBulkPlayerCurrentPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetBulkPlayerCurrentPlatform",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/bulk/platform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetBulkPlayerCurrentPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetBulkPlayerCurrentPlatformOK:
		return v, nil
	case *PublicGetBulkPlayerCurrentPlatformBadRequest:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformUnauthorized:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformNotFound:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetPlayerAttributesShort instead.

PublicGetPlayerAttributes get player attributes.
Get player attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicGetPlayerAttributes(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, *PublicGetPlayerAttributesBadRequest, *PublicGetPlayerAttributesUnauthorized, *PublicGetPlayerAttributesNotFound, *PublicGetPlayerAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerAttributesOK:
		return v, nil, nil, nil, nil, nil

	case *PublicGetPlayerAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicGetPlayerAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicGetPlayerAttributesNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicGetPlayerAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerAttributesShort get player attributes.
Get player attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerAttributesOK:
		return v, nil
	case *PublicGetPlayerAttributesBadRequest:
		return nil, v
	case *PublicGetPlayerAttributesUnauthorized:
		return nil, v
	case *PublicGetPlayerAttributesNotFound:
		return nil, v
	case *PublicGetPlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicStorePlayerAttributesShort instead.

PublicStorePlayerAttributes store player attributes.
This API behaves to upsert player's attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicStorePlayerAttributes(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, *PublicStorePlayerAttributesBadRequest, *PublicStorePlayerAttributesUnauthorized, *PublicStorePlayerAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicStorePlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicStorePlayerAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicStorePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicStorePlayerAttributesOK:
		return v, nil, nil, nil, nil

	case *PublicStorePlayerAttributesBadRequest:
		return nil, v, nil, nil, nil

	case *PublicStorePlayerAttributesUnauthorized:
		return nil, nil, v, nil, nil

	case *PublicStorePlayerAttributesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicStorePlayerAttributesShort store player attributes.
This API behaves to upsert player's attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicStorePlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicStorePlayerAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicStorePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicStorePlayerAttributesOK:
		return v, nil
	case *PublicStorePlayerAttributesBadRequest:
		return nil, v
	case *PublicStorePlayerAttributesUnauthorized:
		return nil, v
	case *PublicStorePlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicDeletePlayerAttributesShort instead.

PublicDeletePlayerAttributes remove player attributes.
Reset player attributes.
*/
func (a *Client) PublicDeletePlayerAttributes(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, *PublicDeletePlayerAttributesBadRequest, *PublicDeletePlayerAttributesUnauthorized, *PublicDeletePlayerAttributesNotFound, *PublicDeletePlayerAttributesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePlayerAttributes",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerAttributesNoContent:
		return v, nil, nil, nil, nil, nil

	case *PublicDeletePlayerAttributesBadRequest:
		return nil, v, nil, nil, nil, nil

	case *PublicDeletePlayerAttributesUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *PublicDeletePlayerAttributesNotFound:
		return nil, nil, nil, v, nil, nil

	case *PublicDeletePlayerAttributesInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlayerAttributesShort remove player attributes.
Reset player attributes.
*/
func (a *Client) PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerAttributesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePlayerAttributes",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerAttributesNoContent:
		return v, nil
	case *PublicDeletePlayerAttributesBadRequest:
		return nil, v
	case *PublicDeletePlayerAttributesUnauthorized:
		return nil, v
	case *PublicDeletePlayerAttributesNotFound:
		return nil, v
	case *PublicDeletePlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
