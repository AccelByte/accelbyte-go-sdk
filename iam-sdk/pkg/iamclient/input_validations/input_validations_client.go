// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package input_validations

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
	AdminUpdateInputValidations(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, *AdminUpdateInputValidationsUnauthorized, *AdminUpdateInputValidationsForbidden, *AdminUpdateInputValidationsNotFound, error)
	AdminUpdateInputValidationsShort(params *AdminUpdateInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInputValidationsNoContent, error)
	AdminResetInputValidations(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, *AdminResetInputValidationsUnauthorized, *AdminResetInputValidationsForbidden, *AdminResetInputValidationsNotFound, error)
	AdminResetInputValidationsShort(params *AdminResetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetInputValidationsNoContent, error)
	PublicGetInputValidations(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, *PublicGetInputValidationsNotFound, *PublicGetInputValidationsInternalServerError, error)
	PublicGetInputValidationsShort(params *PublicGetInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetInputValidationsShort instead.

AdminGetInputValidations admin get input validations


Required permission 'ADMIN:CONFIGURATION'[READ]




This endpoint is to get list of input validation configuration.




`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
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

/*
AdminGetInputValidationsShort admin get input validations


Required permission 'ADMIN:CONFIGURATION'[READ]




This endpoint is to get list of input validation configuration.




`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
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
Deprecated: 2022-08-10 - Use AdminUpdateInputValidationsShort instead.

AdminUpdateInputValidations admin update input validations


Required permission 'ADMIN:CONFIGURATION' [UPDATE]




This endpoint is used to update input validation configuration.


Supported `field`:



                                              * displayName


                                              * password


                                              * username


                                              * email




If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.




If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.


Supported `letterCase`:



                                              * lowercase


                                              * uppercase


                                              * mixed: uppercase and lowercase


                                              * mixed: uppercase and/or lowercase


flexible special character non words with `allowAllSpecialCharacters`



if `allowAllSpecialCharacters` is set to true `specialCharacters` will forced to empty.


Supported `specialCharacterLocation`:



                                              * anywhere


                                              * middle




If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.




`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1 means all criteria are optional. It can be set as much as the number of criteria enabled.




If `blockedWord` is set by admin, any input from user which contain kind of blocked word(s) will be blocked for create/upgrade/update account
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

/*
AdminUpdateInputValidationsShort admin update input validations


Required permission 'ADMIN:CONFIGURATION' [UPDATE]




This endpoint is used to update input validation configuration.


Supported `field`:



                                              * displayName


                                              * password


                                              * username


                                              * email




If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.




If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.


Supported `letterCase`:



                                              * lowercase


                                              * uppercase


                                              * mixed: uppercase and lowercase


                                              * mixed: uppercase and/or lowercase


flexible special character non words with `allowAllSpecialCharacters`



if `allowAllSpecialCharacters` is set to true `specialCharacters` will forced to empty.


Supported `specialCharacterLocation`:



                                              * anywhere


                                              * middle




If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.




`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1 means all criteria are optional. It can be set as much as the number of criteria enabled.




If `blockedWord` is set by admin, any input from user which contain kind of blocked word(s) will be blocked for create/upgrade/update account
*/
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
Deprecated: 2022-08-10 - Use AdminResetInputValidationsShort instead.

AdminResetInputValidations admin reset input validations


Required permission 'ADMIN:CONFIGURATION' [DELETE]

This endpoint is used to reset input validation to the default input validation configurations
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

/*
AdminResetInputValidationsShort admin reset input validations


Required permission 'ADMIN:CONFIGURATION' [DELETE]

This endpoint is used to reset input validation to the default input validation configurations
*/
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
Deprecated: 2022-08-10 - Use PublicGetInputValidationsShort instead.

PublicGetInputValidations public get input validations


No role required




This endpoint is to get list of input validation configuration.




`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
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

/*
PublicGetInputValidationsShort public get input validations


No role required




This endpoint is to get list of input validation configuration.




`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
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
