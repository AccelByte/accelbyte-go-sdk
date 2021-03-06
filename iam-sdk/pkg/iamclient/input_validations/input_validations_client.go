// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package input_validations

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new input validations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for input validations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetInputValidations(params *AdminGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInputValidationsOK, *AdminGetInputValidationsUnauthorized, *AdminGetInputValidationsForbidden, error)
	AdminGetInputValidationsShort(params *AdminGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInputValidationsOK, error)
	AdminResetInputValidations(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, *AdminResetInputValidationsUnauthorized, *AdminResetInputValidationsForbidden, *AdminResetInputValidationsNotFound, error)
	AdminResetInputValidationsShort(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, error)
	AdminUpdateInputValidations(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, *AdminUpdateInputValidationsUnauthorized, *AdminUpdateInputValidationsForbidden, *AdminUpdateInputValidationsNotFound, error)
	AdminUpdateInputValidationsShort(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, error)
	PublicGetInputValidations(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, *PublicGetInputValidationsNotFound, *PublicGetInputValidationsInternalServerError, error)
	PublicGetInputValidationsShort(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AdminGetInputValidations admins get input validations

  &lt;p&gt;Required permission &#39;ADMIN:CONFIGURATION&#39;[READ]&lt;/p&gt;
		&lt;p&gt;This endpoint is to get list of input validation configuration.&lt;/p&gt;
		&lt;p&gt;&lt;code&gt;regex&lt;/code&gt; parameter will be returned if &lt;code&gt;isCustomRegex&lt;/code&gt; is true. Otherwise, it will be empty.&lt;/p&gt;
*/
func (a *Client) AdminGetInputValidations(params *AdminGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInputValidationsOK, *AdminGetInputValidationsUnauthorized, *AdminGetInputValidationsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetInputValidationsOK:
		return v, nil, nil, nil

	case *AdminGetInputValidationsUnauthorized:
		return nil, v, nil, nil

	case *AdminGetInputValidationsForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminGetInputValidationsShort(params *AdminGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInputValidationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInputValidationsOK:
		return v, nil
	case *AdminGetInputValidationsUnauthorized:
		return nil, v
	case *AdminGetInputValidationsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminResetInputValidations admins reset input validations

  &lt;p&gt;Required permission &#39;ADMIN:CONFIGURATION&#39; [DELETE]&lt;/p&gt;&lt;p&gt;This endpoint is used to reset input validation to the default input validation configurations&lt;/p&gt;
*/
func (a *Client) AdminResetInputValidations(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, *AdminResetInputValidationsUnauthorized, *AdminResetInputValidationsForbidden, *AdminResetInputValidationsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetInputValidations",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminResetInputValidationsNoContent:
		return v, nil, nil, nil, nil

	case *AdminResetInputValidationsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminResetInputValidationsForbidden:
		return nil, nil, v, nil, nil

	case *AdminResetInputValidationsNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminResetInputValidationsShort(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetInputValidations",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetInputValidationsNoContent:
		return v, nil
	case *AdminResetInputValidationsUnauthorized:
		return nil, v
	case *AdminResetInputValidationsForbidden:
		return nil, v
	case *AdminResetInputValidationsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  AdminUpdateInputValidations admins update input validations

  &lt;p&gt;Required permission &#39;ADMIN:CONFIGURATION&#39; [UPDATE]&lt;/p&gt;
		&lt;p&gt;This endpoint is used to update input validation configuration.&lt;/p&gt;
		Supported &lt;code&gt;field&lt;/code&gt;:&lt;br&gt;
		&lt;ul&gt;
		&lt;li&gt;displayName&lt;/li&gt;
		&lt;li&gt;password&lt;/li&gt;
		&lt;li&gt;username&lt;/li&gt;
		&lt;/ul&gt;
		&lt;p&gt;If &lt;code&gt;isCustomRegex&lt;/code&gt; is set to true, &lt;code&gt;regex&lt;/code&gt; parameter will be used as input validation and the other parameters will be ignored. Otherwise, &lt;code&gt;regex&lt;/code&gt; parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters. &lt;/p&gt;
		&lt;p&gt;If &lt;code&gt;allowUnicode&lt;/code&gt; is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.&lt;/p&gt;
		Supported &lt;code&gt;letterCase&lt;/code&gt;:&lt;br&gt;
		&lt;ul&gt;
		&lt;li&gt;lowercase&lt;/li&gt;
		&lt;li&gt;uppercase&lt;/li&gt;
		&lt;li&gt;mixed: uppercase and lowercase&lt;/li&gt;
		&lt;li&gt;mixed: uppercase and/or lowercase&lt;/li&gt;
		&lt;/ul&gt;
		Supported &lt;code&gt;specialCharacterLocation&lt;/code&gt;:&lt;br&gt;
		&lt;ul&gt;
		&lt;li&gt;anywhere&lt;/li&gt;
		&lt;li&gt;middle&lt;/li&gt;
		&lt;/ul&gt;
		&lt;p&gt;If &lt;code&gt;specialCharacters&lt;/code&gt; is empty, &lt;code&gt;specialCharacterLocation&lt;/code&gt; and &lt;code&gt;maxRepeatingSpecialCharacter&lt;/code&gt; will be ignored.&lt;/p&gt;
		&lt;p&gt;&lt;code&gt;minCharType&lt;/code&gt; is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1 means all criteria are optional. It can be set as much as the number of criteria enabled.&lt;/p&gt;

*/
func (a *Client) AdminUpdateInputValidations(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, *AdminUpdateInputValidationsUnauthorized, *AdminUpdateInputValidationsForbidden, *AdminUpdateInputValidationsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateInputValidations",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInputValidationsNoContent:
		return v, nil, nil, nil, nil

	case *AdminUpdateInputValidationsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminUpdateInputValidationsForbidden:
		return nil, nil, v, nil, nil

	case *AdminUpdateInputValidationsNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) AdminUpdateInputValidationsShort(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateInputValidations",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInputValidationsNoContent:
		return v, nil
	case *AdminUpdateInputValidationsUnauthorized:
		return nil, v
	case *AdminUpdateInputValidationsForbidden:
		return nil, v
	case *AdminUpdateInputValidationsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublicGetInputValidations publics get input validations

  &lt;p&gt;No role required&lt;/p&gt;
		&lt;p&gt;This endpoint is to get list of input validation configuration.&lt;/p&gt;
		&lt;p&gt;&lt;code&gt;regex&lt;/code&gt; parameter will be returned if &lt;code&gt;isCustomRegex&lt;/code&gt; is true. Otherwise, it will be empty.&lt;/p&gt;

*/
func (a *Client) PublicGetInputValidations(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, *PublicGetInputValidationsNotFound, *PublicGetInputValidationsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetInputValidationsOK:
		return v, nil, nil, nil

	case *PublicGetInputValidationsNotFound:
		return nil, v, nil, nil

	case *PublicGetInputValidationsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublicGetInputValidationsShort(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetInputValidationsOK:
		return v, nil
	case *PublicGetInputValidationsNotFound:
		return nil, v
	case *PublicGetInputValidationsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
