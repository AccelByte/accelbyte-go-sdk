// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error)
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error)
	AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error)
	AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error)
	AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, error)
	AdminExportConfigV1(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1OK, *AdminExportConfigV1Unauthorized, *AdminExportConfigV1Forbidden, *AdminExportConfigV1InternalServerError, error)
	AdminExportConfigV1Short(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1OK, error)
	AdminImportConfigV1(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1OK, *AdminImportConfigV1Unauthorized, *AdminImportConfigV1Forbidden, *AdminImportConfigV1InternalServerError, error)
	AdminImportConfigV1Short(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllConfigV1Short instead.

AdminGetAllConfigV1 admin get all namespaces config
Required permission : `ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]` with scope `social`

get lobby config of all namespaces.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetAllConfigV1(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, *AdminGetAllConfigV1BadRequest, *AdminGetAllConfigV1Unauthorized, *AdminGetAllConfigV1Forbidden, *AdminGetAllConfigV1NotFound, *AdminGetAllConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetAllConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetAllConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetAllConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetAllConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetAllConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Required permission : `ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]` with scope `social`

get lobby config of all namespaces.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil
	case *AdminGetAllConfigV1BadRequest:
		return nil, v
	case *AdminGetAllConfigV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigV1Forbidden:
		return nil, v
	case *AdminGetAllConfigV1NotFound:
		return nil, v
	case *AdminGetAllConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigV1Short instead.

AdminGetConfigV1 admin get namespace config
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`

get lobby config of a namespace.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetConfigV1(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, *AdminGetConfigV1BadRequest, *AdminGetConfigV1Unauthorized, *AdminGetConfigV1Forbidden, *AdminGetConfigV1NotFound, *AdminGetConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`

get lobby config of a namespace.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil
	case *AdminGetConfigV1BadRequest:
		return nil, v
	case *AdminGetConfigV1Unauthorized:
		return nil, v
	case *AdminGetConfigV1Forbidden:
		return nil, v
	case *AdminGetConfigV1NotFound:
		return nil, v
	case *AdminGetConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigV1Short instead.

AdminUpdateConfigV1 admin update namespace config
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]` with scope `social`

update lobby config of a namespace.
MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminUpdateConfigV1(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, *AdminUpdateConfigV1BadRequest, *AdminUpdateConfigV1Unauthorized, *AdminUpdateConfigV1Forbidden, *AdminUpdateConfigV1NotFound, *AdminUpdateConfigV1PreconditionFailed, *AdminUpdateConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigV1PreconditionFailed:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigV1Short admin update namespace config
Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]` with scope `social`

update lobby config of a namespace.
MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		return v, nil
	case *AdminUpdateConfigV1BadRequest:
		return nil, v
	case *AdminUpdateConfigV1Unauthorized:
		return nil, v
	case *AdminUpdateConfigV1Forbidden:
		return nil, v
	case *AdminUpdateConfigV1NotFound:
		return nil, v
	case *AdminUpdateConfigV1PreconditionFailed:
		return nil, v
	case *AdminUpdateConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminExportConfigV1Short instead.

AdminExportConfigV1 export lobby config to a json file.

Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

Required Scope: social

Export lobby configuration to a json file. The file can then be imported from the /import endpoint.

JSON Schema of the exported file:
{"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}}
*/
func (a *Client) AdminExportConfigV1(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1OK, *AdminExportConfigV1Unauthorized, *AdminExportConfigV1Forbidden, *AdminExportConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminExportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminExportConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminExportConfigV1OK:
		return v, nil, nil, nil, nil

	case *AdminExportConfigV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminExportConfigV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminExportConfigV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminExportConfigV1Short export lobby config to a json file.

Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

Required Scope: social

Export lobby configuration to a json file. The file can then be imported from the /import endpoint.

JSON Schema of the exported file:
{"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}}
*/
func (a *Client) AdminExportConfigV1Short(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminExportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminExportConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminExportConfigV1OK:
		return v, nil
	case *AdminExportConfigV1Unauthorized:
		return nil, v
	case *AdminExportConfigV1Forbidden:
		return nil, v
	case *AdminExportConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminImportConfigV1Short instead.

AdminImportConfigV1 import lobby config from a json file.

Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

Required Scope: social

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.

MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminImportConfigV1(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1OK, *AdminImportConfigV1Unauthorized, *AdminImportConfigV1Forbidden, *AdminImportConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminImportConfigV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminImportConfigV1OK:
		return v, nil, nil, nil, nil

	case *AdminImportConfigV1Unauthorized:
		return nil, v, nil, nil, nil

	case *AdminImportConfigV1Forbidden:
		return nil, nil, v, nil, nil

	case *AdminImportConfigV1InternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminImportConfigV1Short import lobby config from a json file.

Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

Required Scope: social

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.

MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminImportConfigV1Short(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminImportConfigV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminImportConfigV1OK:
		return v, nil
	case *AdminImportConfigV1Unauthorized:
		return nil, v
	case *AdminImportConfigV1Forbidden:
		return nil, v
	case *AdminImportConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
