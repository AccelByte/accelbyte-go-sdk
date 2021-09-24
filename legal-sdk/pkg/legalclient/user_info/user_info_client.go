// Code generated by go-swagger; DO NOT EDIT.

package user_info

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user info API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user info API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserInfoStatus(params *GetUserInfoStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInfoStatusOK, error)

	InvalidateUserInfoCache(params *InvalidateUserInfoCacheParams, authInfo runtime.ClientAuthInfoWriter) (*InvalidateUserInfoCacheNoContent, error)

	SyncUserInfo(params *SyncUserInfoParams, authInfo runtime.ClientAuthInfoWriter) (*SyncUserInfoOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetUserInfoStatus gets user info cache status

  Get user info cache last updated time per namespace.<br>The query parameter namespaces can be a list of namespace separated by comma.<br>If query parameter namespaces is empty, user info cache status for all available namespaces will be returned. <br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)</li></ul>
*/
func (a *Client) GetUserInfoStatus(params *GetUserInfoStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInfoStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserInfoStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserInfoStatus",
		Method:             "GET",
		PathPattern:        "/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &GetUserInfoStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserInfoStatusOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  InvalidateUserInfoCache invalidates user info cache

  <b>Important: GOING TO DEPRECATE</b><br/><br/>Invalidate user info cache in agreement service.<br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=8 (DELETE)</li></ul>
*/
func (a *Client) InvalidateUserInfoCache(params *InvalidateUserInfoCacheParams, authInfo runtime.ClientAuthInfoWriter) (*InvalidateUserInfoCacheNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInvalidateUserInfoCacheParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "invalidateUserInfoCache",
		Method:             "DELETE",
		PathPattern:        "/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &InvalidateUserInfoCacheReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InvalidateUserInfoCacheNoContent:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SyncUserInfo syncs user info with iam service

  <b>Important: GOING TO DEPRECATE</b><br/><br/>Sync user info cache in agreement service with iam service.<br>Other detail info: <ul><li><i>Required permission</i>: resource="ADMIN:NAMESPACE:*:LEGAL", action=4 (UPDATE)</li></ul>
*/
func (a *Client) SyncUserInfo(params *SyncUserInfoParams, authInfo runtime.ClientAuthInfoWriter) (*SyncUserInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncUserInfoParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "syncUserInfo",
		Method:             "PUT",
		PathPattern:        "/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &SyncUserInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncUserInfoOK:
		return v, nil
	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}