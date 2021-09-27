// Code generated by go-swagger; DO NOT EDIT.

package social_matchmaking

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new social matchmaking API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for social matchmaking API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UpdatePlayTimeWeight(params *UpdatePlayTimeWeightParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlayTimeWeightOK, *UpdatePlayTimeWeightBadRequest, *UpdatePlayTimeWeightUnauthorized, *UpdatePlayTimeWeightForbidden, *UpdatePlayTimeWeightNotFound, *UpdatePlayTimeWeightInternalServerError, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  UpdatePlayTimeWeight updates player playtime connection weight

  Required Permission: NAMESPACE:{namespace}:MATCHMAKING:CHANNEL [UPDATE]

Required Scope: social

Update a connection weight between player and playtime.

This endpoint is intended to be called by admin for debugging purpose on social matchmaking rule.

*/
func (a *Client) UpdatePlayTimeWeight(params *UpdatePlayTimeWeightParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlayTimeWeightOK, *UpdatePlayTimeWeightBadRequest, *UpdatePlayTimeWeightUnauthorized, *UpdatePlayTimeWeightForbidden, *UpdatePlayTimeWeightNotFound, *UpdatePlayTimeWeightInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlayTimeWeightParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePlayTimeWeight",
		Method:             "PATCH",
		PathPattern:        "/matchmaking/social/playtime/namespaces/{namespace}/weight",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &UpdatePlayTimeWeightReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePlayTimeWeightOK:
		return v, nil, nil, nil, nil, nil, nil
	case *UpdatePlayTimeWeightBadRequest:
		return nil, v, nil, nil, nil, nil, nil
	case *UpdatePlayTimeWeightUnauthorized:
		return nil, nil, v, nil, nil, nil, nil
	case *UpdatePlayTimeWeightForbidden:
		return nil, nil, nil, v, nil, nil, nil
	case *UpdatePlayTimeWeightNotFound:
		return nil, nil, nil, nil, v, nil, nil
	case *UpdatePlayTimeWeightInternalServerError:
		return nil, nil, nil, nil, nil, v, nil
	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
