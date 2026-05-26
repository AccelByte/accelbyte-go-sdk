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
	AdminGetNamespaceScopedInputValidations(params *AdminGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceScopedInputValidationsOK, *AdminGetNamespaceScopedInputValidationsUnauthorized, *AdminGetNamespaceScopedInputValidationsForbidden, error)
	AdminGetNamespaceScopedInputValidationsShort(params *AdminGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceScopedInputValidationsOK, error)
	AdminUpdateNamespaceScopedInputValidations(params *AdminUpdateNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateNamespaceScopedInputValidationsNoContent, *AdminUpdateNamespaceScopedInputValidationsUnauthorized, *AdminUpdateNamespaceScopedInputValidationsForbidden, *AdminUpdateNamespaceScopedInputValidationsNotFound, error)
	AdminUpdateNamespaceScopedInputValidationsShort(params *AdminUpdateNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateNamespaceScopedInputValidationsNoContent, error)
	AdminResetNamespaceScopedInputValidations(params *AdminResetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetNamespaceScopedInputValidationsNoContent, *AdminResetNamespaceScopedInputValidationsUnauthorized, *AdminResetNamespaceScopedInputValidationsForbidden, *AdminResetNamespaceScopedInputValidationsNotFound, error)
	AdminResetNamespaceScopedInputValidationsShort(params *AdminResetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetNamespaceScopedInputValidationsNoContent, error)
	PublicGetInputValidations(params *PublicGetInputValidationsParams) (*PublicGetInputValidationsOK, *PublicGetInputValidationsNotFound, *PublicGetInputValidationsInternalServerError, error)
	PublicGetInputValidationsShort(params *PublicGetInputValidationsParams) (*PublicGetInputValidationsOK, error)
	PublicGetInputValidationByField(params *PublicGetInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationByFieldOK, *PublicGetInputValidationByFieldNotFound, *PublicGetInputValidationByFieldInternalServerError, error)
	PublicGetInputValidationByFieldShort(params *PublicGetInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationByFieldOK, error)
	PublicGetNamespaceScopedInputValidations(params *PublicGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationsOK, *PublicGetNamespaceScopedInputValidationsNotFound, *PublicGetNamespaceScopedInputValidationsInternalServerError, error)
	PublicGetNamespaceScopedInputValidationsShort(params *PublicGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationsOK, error)
	PublicGetNamespaceScopedInputValidationByField(params *PublicGetNamespaceScopedInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationByFieldOK, *PublicGetNamespaceScopedInputValidationByFieldNotFound, *PublicGetNamespaceScopedInputValidationByFieldInternalServerError, error)
	PublicGetNamespaceScopedInputValidationByFieldShort(params *PublicGetNamespaceScopedInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationByFieldOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetInputValidationsShort instead.

AdminGetInputValidations admin get input validations
Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[GET]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[GET]
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
Updates input validation configuration.
Supported `field`:
- displayName
- password
- username
- email
- avatar

If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
Supported `letterCase`:
- lowercase
- uppercase
- mixed: uppercase and lowercase
- any: uppercase and/or lowercase

Flexible special character support with `allowAllSpecialCharacters`.
If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
Supported `specialCharacterLocation`:
- anywhere
- middle

If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
If `avatarConfig` is set, will use this config and skip all the other validation conditions.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[PUT]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Updates input validation configuration.
Supported `field`:
- displayName
- password
- username
- email
- avatar

If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
Supported `letterCase`:
- lowercase
- uppercase
- mixed: uppercase and lowercase
- any: uppercase and/or lowercase

Flexible special character support with `allowAllSpecialCharacters`.
If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
Supported `specialCharacterLocation`:
- anywhere
- middle

If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
If `avatarConfig` is set, will use this config and skip all the other validation conditions.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations[PUT]
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
Resets input validation to the default input validation configurations.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}[DELETE]
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Resets input validation to the default input validation configurations.
**Substitute endpoint:** /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}[DELETE]
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
Deprecated: 2022-08-10 - Use AdminGetNamespaceScopedInputValidationsShort instead.

AdminGetNamespaceScopedInputValidations admin get input validations
Returns the list of input validation configuration.
Supported namespace:
- publisher namespace
- studio namespace

`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
func (a *Client) AdminGetNamespaceScopedInputValidations(params *AdminGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceScopedInputValidationsOK, *AdminGetNamespaceScopedInputValidationsUnauthorized, *AdminGetNamespaceScopedInputValidationsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetNamespaceScopedInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetNamespaceScopedInputValidationsOK:
		return v, nil, nil, nil

	case *AdminGetNamespaceScopedInputValidationsUnauthorized:
		return nil, v, nil, nil

	case *AdminGetNamespaceScopedInputValidationsForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetNamespaceScopedInputValidationsShort admin get input validations
Returns the list of input validation configuration.
Supported namespace:
- publisher namespace
- studio namespace

`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
func (a *Client) AdminGetNamespaceScopedInputValidationsShort(params *AdminGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceScopedInputValidationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetNamespaceScopedInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetNamespaceScopedInputValidationsOK:
		return v, nil
	case *AdminGetNamespaceScopedInputValidationsUnauthorized:
		return nil, v
	case *AdminGetNamespaceScopedInputValidationsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateNamespaceScopedInputValidationsShort instead.

AdminUpdateNamespaceScopedInputValidations admin update input validations
Updates input validation configuration.
Supported namespace:
- publisher namespace
- studio namespace

Supported `field`:
- displayName
- password
- username
- email
- avatar

If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
Supported `letterCase`:
- lowercase
- uppercase
- mixed: uppercase and lowercase
- any: uppercase and/or lowercase

To allow flexible non-word special characters, use `allowAllSpecialCharacters`.
If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
Supported `specialCharacterLocation`:
- anywhere
- middle

If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
If `avatarConfig` is set, will use this config and skip all the other validation conditions.

These are the boundary values for string length:
minLength: 1,
maxLength: 256
*/
func (a *Client) AdminUpdateNamespaceScopedInputValidations(params *AdminUpdateNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateNamespaceScopedInputValidationsNoContent, *AdminUpdateNamespaceScopedInputValidationsUnauthorized, *AdminUpdateNamespaceScopedInputValidationsForbidden, *AdminUpdateNamespaceScopedInputValidationsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateNamespaceScopedInputValidations",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateNamespaceScopedInputValidationsNoContent:
		return v, nil, nil, nil, nil

	case *AdminUpdateNamespaceScopedInputValidationsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminUpdateNamespaceScopedInputValidationsForbidden:
		return nil, nil, v, nil, nil

	case *AdminUpdateNamespaceScopedInputValidationsNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateNamespaceScopedInputValidationsShort admin update input validations
Updates input validation configuration.
Supported namespace:
- publisher namespace
- studio namespace

Supported `field`:
- displayName
- password
- username
- email
- avatar

If `isCustomRegex` is set to true, `regex` parameter will be used as input validation and the other parameters will be ignored. Otherwise, `regex` parameter will be ignored and regex for input validation will be generated based on the combination of the other parameters.
If `allowUnicode` is set to true, unicode regex pattern will be use as the input validation and the other parameters will be ignored.
Supported `letterCase`:
- lowercase
- uppercase
- mixed: uppercase and lowercase
- any: uppercase and/or lowercase

To allow flexible non-word special characters, use `allowAllSpecialCharacters`.
If `allowAllSpecialCharacters` is set to true, `specialCharacters` will be forced to empty.
Supported `specialCharacterLocation`:
- anywhere
- middle

If `specialCharacters` is empty, `specialCharacterLocation` and `maxRepeatingSpecialCharacter` will be ignored.
`minCharType` is used to identify how many required criteria in the regex. The supported criteria are number, letter, special character, and letter case. If set to 0 or 1, all criteria are optional. It can be set as much as the number of criteria enabled.
If `blockedWord` is set by an admin, any user input containing a blocked word will be rejected during account creation, upgrade, or update.
If `avatarConfig` is set, will use this config and skip all the other validation conditions.

These are the boundary values for string length:
minLength: 1,
maxLength: 256
*/
func (a *Client) AdminUpdateNamespaceScopedInputValidationsShort(params *AdminUpdateNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateNamespaceScopedInputValidationsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateNamespaceScopedInputValidations",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateNamespaceScopedInputValidationsNoContent:
		return v, nil
	case *AdminUpdateNamespaceScopedInputValidationsUnauthorized:
		return nil, v
	case *AdminUpdateNamespaceScopedInputValidationsForbidden:
		return nil, v
	case *AdminUpdateNamespaceScopedInputValidationsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminResetNamespaceScopedInputValidationsShort instead.

AdminResetNamespaceScopedInputValidations admin reset input validations
Resets input validation to the default input validation configurations.
Supported namespace:
- publisher namespace
- studio namespace
*/
func (a *Client) AdminResetNamespaceScopedInputValidations(params *AdminResetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetNamespaceScopedInputValidationsNoContent, *AdminResetNamespaceScopedInputValidationsUnauthorized, *AdminResetNamespaceScopedInputValidationsForbidden, *AdminResetNamespaceScopedInputValidationsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetNamespaceScopedInputValidations",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminResetNamespaceScopedInputValidationsNoContent:
		return v, nil, nil, nil, nil

	case *AdminResetNamespaceScopedInputValidationsUnauthorized:
		return nil, v, nil, nil, nil

	case *AdminResetNamespaceScopedInputValidationsForbidden:
		return nil, nil, v, nil, nil

	case *AdminResetNamespaceScopedInputValidationsNotFound:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetNamespaceScopedInputValidationsShort admin reset input validations
Resets input validation to the default input validation configurations.
Supported namespace:
- publisher namespace
- studio namespace
*/
func (a *Client) AdminResetNamespaceScopedInputValidationsShort(params *AdminResetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetNamespaceScopedInputValidationsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetNamespaceScopedInputValidations",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetNamespaceScopedInputValidationsNoContent:
		return v, nil
	case *AdminResetNamespaceScopedInputValidationsUnauthorized:
		return nil, v
	case *AdminResetNamespaceScopedInputValidationsForbidden:
		return nil, v
	case *AdminResetNamespaceScopedInputValidationsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetInputValidationsShort instead.

PublicGetInputValidations public get input validations
Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
**Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations[GET]
*/
func (a *Client) PublicGetInputValidations(params *PublicGetInputValidationsParams) (*PublicGetInputValidationsOK, *PublicGetInputValidationsNotFound, *PublicGetInputValidationsInternalServerError, error) {
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

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
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
Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
**Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations[GET]
*/
func (a *Client) PublicGetInputValidationsShort(params *PublicGetInputValidationsParams) (*PublicGetInputValidationsOK, error) {
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

/*
Deprecated: 2022-08-10 - Use PublicGetInputValidationByFieldShort instead.

PublicGetInputValidationByField public get input validation by field
Returns input validation configuration by field.
**Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations/{field}[GET]
*/
func (a *Client) PublicGetInputValidationByField(params *PublicGetInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationByFieldOK, *PublicGetInputValidationByFieldNotFound, *PublicGetInputValidationByFieldInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetInputValidationByFieldParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetInputValidationByField",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetInputValidationByFieldReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetInputValidationByFieldOK:
		return v, nil, nil, nil

	case *PublicGetInputValidationByFieldNotFound:
		return nil, v, nil, nil

	case *PublicGetInputValidationByFieldInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetInputValidationByFieldShort public get input validation by field
Returns input validation configuration by field.
**Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/inputValidations/{field}[GET]
*/
func (a *Client) PublicGetInputValidationByFieldShort(params *PublicGetInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetInputValidationByFieldOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetInputValidationByFieldParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetInputValidationByField",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetInputValidationByFieldReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetInputValidationByFieldOK:
		return v, nil
	case *PublicGetInputValidationByFieldNotFound:
		return nil, v
	case *PublicGetInputValidationByFieldInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetNamespaceScopedInputValidationsShort instead.

PublicGetNamespaceScopedInputValidations public get input validations
Supported namespace:
- publisher namespace
- studio namespace

Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
func (a *Client) PublicGetNamespaceScopedInputValidations(params *PublicGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationsOK, *PublicGetNamespaceScopedInputValidationsNotFound, *PublicGetNamespaceScopedInputValidationsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetNamespaceScopedInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespaceScopedInputValidationsOK:
		return v, nil, nil, nil

	case *PublicGetNamespaceScopedInputValidationsNotFound:
		return nil, v, nil, nil

	case *PublicGetNamespaceScopedInputValidationsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespaceScopedInputValidationsShort public get input validations
Supported namespace:
- publisher namespace
- studio namespace

Returns the list of input validation configuration.
`regex` parameter will be returned if `isCustomRegex` is true. Otherwise, it will be empty.
*/
func (a *Client) PublicGetNamespaceScopedInputValidationsShort(params *PublicGetNamespaceScopedInputValidationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespaceScopedInputValidationsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetNamespaceScopedInputValidations",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/inputValidations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespaceScopedInputValidationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespaceScopedInputValidationsOK:
		return v, nil
	case *PublicGetNamespaceScopedInputValidationsNotFound:
		return nil, v
	case *PublicGetNamespaceScopedInputValidationsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetNamespaceScopedInputValidationByFieldShort instead.

PublicGetNamespaceScopedInputValidationByField public get input validation by field
Returns input validation configuration by field.
Supported namespace:
- publisher namespace
- studio namespace
*/
func (a *Client) PublicGetNamespaceScopedInputValidationByField(params *PublicGetNamespaceScopedInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationByFieldOK, *PublicGetNamespaceScopedInputValidationByFieldNotFound, *PublicGetNamespaceScopedInputValidationByFieldInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespaceScopedInputValidationByFieldParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetNamespaceScopedInputValidationByField",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespaceScopedInputValidationByFieldReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespaceScopedInputValidationByFieldOK:
		return v, nil, nil, nil

	case *PublicGetNamespaceScopedInputValidationByFieldNotFound:
		return nil, v, nil, nil

	case *PublicGetNamespaceScopedInputValidationByFieldInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespaceScopedInputValidationByFieldShort public get input validation by field
Returns input validation configuration by field.
Supported namespace:
- publisher namespace
- studio namespace
*/
func (a *Client) PublicGetNamespaceScopedInputValidationByFieldShort(params *PublicGetNamespaceScopedInputValidationByFieldParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespaceScopedInputValidationByFieldOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespaceScopedInputValidationByFieldParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetNamespaceScopedInputValidationByField",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/inputValidations/{field}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespaceScopedInputValidationByFieldReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespaceScopedInputValidationByFieldOK:
		return v, nil
	case *PublicGetNamespaceScopedInputValidationByFieldNotFound:
		return nil, v
	case *PublicGetNamespaceScopedInputValidationByFieldInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
