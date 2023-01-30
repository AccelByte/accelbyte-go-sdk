// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package player

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	AdminGetPlayerAttributes(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, *AdminGetPlayerAttributesBadRequest, *AdminGetPlayerAttributesUnauthorized, *AdminGetPlayerAttributesNotFound, *AdminGetPlayerAttributesInternalServerError, error)
	AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, error)
	AdminQueryPlayerAttributes(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, *AdminQueryPlayerAttributesBadRequest, *AdminQueryPlayerAttributesUnauthorized, *AdminQueryPlayerAttributesNotFound, *AdminQueryPlayerAttributesInternalServerError, error)
	AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, error)
	PublicDeletePlayerAttributes(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, *PublicDeletePlayerAttributesBadRequest, *PublicDeletePlayerAttributesUnauthorized, *PublicDeletePlayerAttributesNotFound, *PublicDeletePlayerAttributesInternalServerError, error)
	PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, error)
	PublicGetPlayerAttributes(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, *PublicGetPlayerAttributesBadRequest, *PublicGetPlayerAttributesUnauthorized, *PublicGetPlayerAttributesNotFound, *PublicGetPlayerAttributesInternalServerError, error)
	PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, error)
	PublicStorePlayerAttributes(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, *PublicStorePlayerAttributesBadRequest, *PublicStorePlayerAttributesUnauthorized, *PublicStorePlayerAttributesInternalServerError, error)
	PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use AdminGetPlayerAttributesShort instead.

  AdminGetPlayerAttributes gets player attributes requires a d m i n n a m e s p a c e namespace s e s s i o n p l a y e r user Id r e a d

  Admin get attributes of a player.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
  AdminGetPlayerAttributesShort gets player attributes requires a d m i n n a m e s p a c e namespace s e s s i o n p l a y e r user Id r e a d

  Admin get attributes of a player.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
Deprecated: Use AdminQueryPlayerAttributesShort instead.

  AdminQueryPlayerAttributes queries player attributes requires a d m i n n a m e s p a c e namespace s e s s i o n p l a y e r user Id r e a d

  Admin get attributes of players.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
  AdminQueryPlayerAttributesShort queries player attributes requires a d m i n n a m e s p a c e namespace s e s s i o n p l a y e r user Id r e a d

  Admin get attributes of players.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
Deprecated: Use PublicDeletePlayerAttributesShort instead.

  PublicDeletePlayerAttributes removes player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r d e l e t e

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
  PublicDeletePlayerAttributesShort removes player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r d e l e t e

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

/*
Deprecated: Use PublicGetPlayerAttributesShort instead.

  PublicGetPlayerAttributes gets player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r r e a d

  Get player attributes.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
  PublicGetPlayerAttributesShort gets player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r r e a d

  Get player attributes.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
Deprecated: Use PublicStorePlayerAttributesShort instead.

  PublicStorePlayerAttributes stores player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r c r e a t e

  This API behaves to upsert player&#39;s attributes.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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
  PublicStorePlayerAttributesShort stores player attributes requires n a m e s p a c e namespace s e s s i o n p l a y e r c r e a t e

  This API behaves to upsert player&#39;s attributes.

Field descriptions:
	- userID           : user who owns the attributes.
	- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
	- platforms        : list of the player&#39;s 3rd party platform account information.
		- name   : platform name. supported platforms: STEAM
		- userID : platform userID
	- data             : other data that the player wants to store.

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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
