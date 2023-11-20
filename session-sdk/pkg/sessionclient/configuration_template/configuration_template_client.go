// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package configuration_template

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration template API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration template API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigurationAlertV1(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1OK, *AdminGetConfigurationAlertV1BadRequest, *AdminGetConfigurationAlertV1Unauthorized, *AdminGetConfigurationAlertV1Forbidden, *AdminGetConfigurationAlertV1NotFound, *AdminGetConfigurationAlertV1InternalServerError, error)
	AdminGetConfigurationAlertV1Short(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1OK, error)
	AdminUpdateConfigurationAlertV1(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1OK, *AdminUpdateConfigurationAlertV1BadRequest, *AdminUpdateConfigurationAlertV1Unauthorized, *AdminUpdateConfigurationAlertV1Forbidden, *AdminUpdateConfigurationAlertV1NotFound, *AdminUpdateConfigurationAlertV1InternalServerError, error)
	AdminUpdateConfigurationAlertV1Short(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1OK, error)
	AdminCreateConfigurationAlertV1(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Created, *AdminCreateConfigurationAlertV1BadRequest, *AdminCreateConfigurationAlertV1Unauthorized, *AdminCreateConfigurationAlertV1Forbidden, *AdminCreateConfigurationAlertV1NotFound, *AdminCreateConfigurationAlertV1Conflict, *AdminCreateConfigurationAlertV1InternalServerError, error)
	AdminCreateConfigurationAlertV1Short(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Created, error)
	AdminDeleteConfigurationAlertV1(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1NoContent, *AdminDeleteConfigurationAlertV1BadRequest, *AdminDeleteConfigurationAlertV1Unauthorized, *AdminDeleteConfigurationAlertV1Forbidden, *AdminDeleteConfigurationAlertV1InternalServerError, error)
	AdminDeleteConfigurationAlertV1Short(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1NoContent, error)
	AdminCreateConfigurationTemplateV1(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, *AdminCreateConfigurationTemplateV1BadRequest, *AdminCreateConfigurationTemplateV1Unauthorized, *AdminCreateConfigurationTemplateV1Forbidden, *AdminCreateConfigurationTemplateV1Conflict, *AdminCreateConfigurationTemplateV1InternalServerError, error)
	AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, error)
	AdminGetAllConfigurationTemplatesV1(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, *AdminGetAllConfigurationTemplatesV1BadRequest, *AdminGetAllConfigurationTemplatesV1Unauthorized, *AdminGetAllConfigurationTemplatesV1Forbidden, *AdminGetAllConfigurationTemplatesV1InternalServerError, error)
	AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, error)
	AdminGetConfigurationTemplateV1(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, *AdminGetConfigurationTemplateV1BadRequest, *AdminGetConfigurationTemplateV1Unauthorized, *AdminGetConfigurationTemplateV1Forbidden, *AdminGetConfigurationTemplateV1NotFound, *AdminGetConfigurationTemplateV1InternalServerError, error)
	AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, error)
	AdminUpdateConfigurationTemplateV1(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, *AdminUpdateConfigurationTemplateV1BadRequest, *AdminUpdateConfigurationTemplateV1Unauthorized, *AdminUpdateConfigurationTemplateV1Forbidden, *AdminUpdateConfigurationTemplateV1NotFound, *AdminUpdateConfigurationTemplateV1InternalServerError, error)
	AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, error)
	AdminDeleteConfigurationTemplateV1(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, *AdminDeleteConfigurationTemplateV1BadRequest, *AdminDeleteConfigurationTemplateV1Unauthorized, *AdminDeleteConfigurationTemplateV1Forbidden, *AdminDeleteConfigurationTemplateV1InternalServerError, error)
	AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, error)
	AdminGetDSMCConfiguration(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationOK, *AdminGetDSMCConfigurationBadRequest, *AdminGetDSMCConfigurationUnauthorized, *AdminGetDSMCConfigurationForbidden, *AdminGetDSMCConfigurationNotFound, *AdminGetDSMCConfigurationInternalServerError, error)
	AdminGetDSMCConfigurationShort(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationOK, error)
	AdminSyncDSMCConfiguration(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationOK, *AdminSyncDSMCConfigurationBadRequest, *AdminSyncDSMCConfigurationUnauthorized, *AdminSyncDSMCConfigurationForbidden, *AdminSyncDSMCConfigurationNotFound, *AdminSyncDSMCConfigurationInternalServerError, error)
	AdminSyncDSMCConfigurationShort(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigurationAlertV1Short instead.

AdminGetConfigurationAlertV1 get configuration alert. requires admin:namespace:{namespace}:session:configuration [read]
Get a configuration alert.
*/
func (a *Client) AdminGetConfigurationAlertV1(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1OK, *AdminGetConfigurationAlertV1BadRequest, *AdminGetConfigurationAlertV1Unauthorized, *AdminGetConfigurationAlertV1Forbidden, *AdminGetConfigurationAlertV1NotFound, *AdminGetConfigurationAlertV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationAlertV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationAlertV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetConfigurationAlertV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetConfigurationAlertV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetConfigurationAlertV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetConfigurationAlertV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetConfigurationAlertV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigurationAlertV1Short get configuration alert. requires admin:namespace:{namespace}:session:configuration [read]
Get a configuration alert.
*/
func (a *Client) AdminGetConfigurationAlertV1Short(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationAlertV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationAlertV1OK:
		return v, nil
	case *AdminGetConfigurationAlertV1BadRequest:
		return nil, v
	case *AdminGetConfigurationAlertV1Unauthorized:
		return nil, v
	case *AdminGetConfigurationAlertV1Forbidden:
		return nil, v
	case *AdminGetConfigurationAlertV1NotFound:
		return nil, v
	case *AdminGetConfigurationAlertV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigurationAlertV1Short instead.

AdminUpdateConfigurationAlertV1 update configuration alert. requires admin:namespace:{namespace}:session:configuration [update]
Update configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminUpdateConfigurationAlertV1(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1OK, *AdminUpdateConfigurationAlertV1BadRequest, *AdminUpdateConfigurationAlertV1Unauthorized, *AdminUpdateConfigurationAlertV1Forbidden, *AdminUpdateConfigurationAlertV1NotFound, *AdminUpdateConfigurationAlertV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationAlertV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationAlertV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationAlertV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationAlertV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigurationAlertV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigurationAlertV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigurationAlertV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationAlertV1Short update configuration alert. requires admin:namespace:{namespace}:session:configuration [update]
Update configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminUpdateConfigurationAlertV1Short(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationAlertV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationAlertV1OK:
		return v, nil
	case *AdminUpdateConfigurationAlertV1BadRequest:
		return nil, v
	case *AdminUpdateConfigurationAlertV1Unauthorized:
		return nil, v
	case *AdminUpdateConfigurationAlertV1Forbidden:
		return nil, v
	case *AdminUpdateConfigurationAlertV1NotFound:
		return nil, v
	case *AdminUpdateConfigurationAlertV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateConfigurationAlertV1Short instead.

AdminCreateConfigurationAlertV1 create configuration alert. requires admin:namespace:{namespace}:session:configuration [update]
Create configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminCreateConfigurationAlertV1(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Created, *AdminCreateConfigurationAlertV1BadRequest, *AdminCreateConfigurationAlertV1Unauthorized, *AdminCreateConfigurationAlertV1Forbidden, *AdminCreateConfigurationAlertV1NotFound, *AdminCreateConfigurationAlertV1Conflict, *AdminCreateConfigurationAlertV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationAlertV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationAlertV1Created:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationAlertV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationAlertV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationAlertV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *AdminCreateConfigurationAlertV1NotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *AdminCreateConfigurationAlertV1Conflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *AdminCreateConfigurationAlertV1InternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateConfigurationAlertV1Short create configuration alert. requires admin:namespace:{namespace}:session:configuration [update]
Create configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminCreateConfigurationAlertV1Short(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationAlertV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationAlertV1Created:
		return v, nil
	case *AdminCreateConfigurationAlertV1BadRequest:
		return nil, v
	case *AdminCreateConfigurationAlertV1Unauthorized:
		return nil, v
	case *AdminCreateConfigurationAlertV1Forbidden:
		return nil, v
	case *AdminCreateConfigurationAlertV1NotFound:
		return nil, v
	case *AdminCreateConfigurationAlertV1Conflict:
		return nil, v
	case *AdminCreateConfigurationAlertV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteConfigurationAlertV1Short instead.

AdminDeleteConfigurationAlertV1 delete configuration alert requires admin:namespace:{namespace}:session:configuration [delete]
Delete configuration alert.
*/
func (a *Client) AdminDeleteConfigurationAlertV1(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1NoContent, *AdminDeleteConfigurationAlertV1BadRequest, *AdminDeleteConfigurationAlertV1Unauthorized, *AdminDeleteConfigurationAlertV1Forbidden, *AdminDeleteConfigurationAlertV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationAlertV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationAlertV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteConfigurationAlertV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteConfigurationAlertV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteConfigurationAlertV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteConfigurationAlertV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigurationAlertV1Short delete configuration alert requires admin:namespace:{namespace}:session:configuration [delete]
Delete configuration alert.
*/
func (a *Client) AdminDeleteConfigurationAlertV1Short(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationAlertV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationAlertV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationAlertV1NoContent:
		return v, nil
	case *AdminDeleteConfigurationAlertV1BadRequest:
		return nil, v
	case *AdminDeleteConfigurationAlertV1Unauthorized:
		return nil, v
	case *AdminDeleteConfigurationAlertV1Forbidden:
		return nil, v
	case *AdminDeleteConfigurationAlertV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateConfigurationTemplateV1Short instead.

AdminCreateConfigurationTemplateV1 create configuration template. requires admin:namespace:{namespace}:session:configuration [create]
Create template configuration to be applied across party and session.
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent will only applies to session with type DS (example value true or false, default: false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime (optional, default: false): If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
*/
func (a *Client) AdminCreateConfigurationTemplateV1(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, *AdminCreateConfigurationTemplateV1BadRequest, *AdminCreateConfigurationTemplateV1Unauthorized, *AdminCreateConfigurationTemplateV1Forbidden, *AdminCreateConfigurationTemplateV1Conflict, *AdminCreateConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationTemplateV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationTemplateV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateConfigurationTemplateV1Short create configuration template. requires admin:namespace:{namespace}:session:configuration [create]
Create template configuration to be applied across party and session.
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent will only applies to session with type DS (example value true or false, default: false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime (optional, default: false): If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
*/
func (a *Client) AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationTemplateV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationTemplateV1Created:
		return v, nil
	case *AdminCreateConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Conflict:
		return nil, v
	case *AdminCreateConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllConfigurationTemplatesV1Short instead.

AdminGetAllConfigurationTemplatesV1 get configuration templates. requires admin:namespace:{namespace}:session:configuration [read]
Get all template configurations in specified namespace.
*/
func (a *Client) AdminGetAllConfigurationTemplatesV1(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, *AdminGetAllConfigurationTemplatesV1BadRequest, *AdminGetAllConfigurationTemplatesV1Unauthorized, *AdminGetAllConfigurationTemplatesV1Forbidden, *AdminGetAllConfigurationTemplatesV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigurationTemplatesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigurationTemplatesV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigurationTemplatesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigurationTemplatesV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetAllConfigurationTemplatesV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigurationTemplatesV1Short get configuration templates. requires admin:namespace:{namespace}:session:configuration [read]
Get all template configurations in specified namespace.
*/
func (a *Client) AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigurationTemplatesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigurationTemplatesV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigurationTemplatesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigurationTemplatesV1OK:
		return v, nil
	case *AdminGetAllConfigurationTemplatesV1BadRequest:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1Forbidden:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigurationTemplateV1Short instead.

AdminGetConfigurationTemplateV1 get configuration template. requires admin:namespace:{namespace}:session:configuration [read]
Get a template configuration.
*/
func (a *Client) AdminGetConfigurationTemplateV1(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, *AdminGetConfigurationTemplateV1BadRequest, *AdminGetConfigurationTemplateV1Unauthorized, *AdminGetConfigurationTemplateV1Forbidden, *AdminGetConfigurationTemplateV1NotFound, *AdminGetConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationTemplateV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationTemplateV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetConfigurationTemplateV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigurationTemplateV1Short get configuration template. requires admin:namespace:{namespace}:session:configuration [read]
Get a template configuration.
*/
func (a *Client) AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationTemplateV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationTemplateV1OK:
		return v, nil
	case *AdminGetConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminGetConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminGetConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminGetConfigurationTemplateV1NotFound:
		return nil, v
	case *AdminGetConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigurationTemplateV1Short instead.

AdminUpdateConfigurationTemplateV1 update configuration template. requires admin:namespace:{namespace}:session:configuration [update]
Modify template configuration
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent Flag only can use with type DS (example value true or false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
*/
func (a *Client) AdminUpdateConfigurationTemplateV1(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, *AdminUpdateConfigurationTemplateV1BadRequest, *AdminUpdateConfigurationTemplateV1Unauthorized, *AdminUpdateConfigurationTemplateV1Forbidden, *AdminUpdateConfigurationTemplateV1NotFound, *AdminUpdateConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationTemplateV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationTemplateV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationTemplateV1Short update configuration template. requires admin:namespace:{namespace}:session:configuration [update]
Modify template configuration
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent Flag only can use with type DS (example value true or false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
*/
func (a *Client) AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationTemplateV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationTemplateV1OK:
		return v, nil
	case *AdminUpdateConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1NotFound:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteConfigurationTemplateV1Short instead.

AdminDeleteConfigurationTemplateV1 delete configuration template. requires admin:namespace:{namespace}:session:configuration [delete]
Delete a template configuration.
*/
func (a *Client) AdminDeleteConfigurationTemplateV1(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, *AdminDeleteConfigurationTemplateV1BadRequest, *AdminDeleteConfigurationTemplateV1Unauthorized, *AdminDeleteConfigurationTemplateV1Forbidden, *AdminDeleteConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationTemplateV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationTemplateV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigurationTemplateV1Short delete configuration template. requires admin:namespace:{namespace}:session:configuration [delete]
Delete a template configuration.
*/
func (a *Client) AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationTemplateV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationTemplateV1NoContent:
		return v, nil
	case *AdminDeleteConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetDSMCConfigurationShort instead.

AdminGetDSMCConfiguration get dsmc configuration . requires admin:namespace:{namespace}:session:configuration [read]
Get a dsmc configuration.
*/
func (a *Client) AdminGetDSMCConfiguration(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationOK, *AdminGetDSMCConfigurationBadRequest, *AdminGetDSMCConfigurationUnauthorized, *AdminGetDSMCConfigurationForbidden, *AdminGetDSMCConfigurationNotFound, *AdminGetDSMCConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDSMCConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetDSMCConfigurationOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetDSMCConfigurationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetDSMCConfigurationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetDSMCConfigurationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetDSMCConfigurationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetDSMCConfigurationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDSMCConfigurationShort get dsmc configuration . requires admin:namespace:{namespace}:session:configuration [read]
Get a dsmc configuration.
*/
func (a *Client) AdminGetDSMCConfigurationShort(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDSMCConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDSMCConfigurationOK:
		return v, nil
	case *AdminGetDSMCConfigurationBadRequest:
		return nil, v
	case *AdminGetDSMCConfigurationUnauthorized:
		return nil, v
	case *AdminGetDSMCConfigurationForbidden:
		return nil, v
	case *AdminGetDSMCConfigurationNotFound:
		return nil, v
	case *AdminGetDSMCConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminSyncDSMCConfigurationShort instead.

AdminSyncDSMCConfiguration sync dsmc configuration . requires admin:namespace:{namespace}:session:configuration [read]
sync dsmc configuration.
*/
func (a *Client) AdminSyncDSMCConfiguration(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationOK, *AdminSyncDSMCConfigurationBadRequest, *AdminSyncDSMCConfigurationUnauthorized, *AdminSyncDSMCConfigurationForbidden, *AdminSyncDSMCConfigurationNotFound, *AdminSyncDSMCConfigurationInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncDSMCConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSyncDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminSyncDSMCConfigurationOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminSyncDSMCConfigurationBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminSyncDSMCConfigurationUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminSyncDSMCConfigurationForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminSyncDSMCConfigurationNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminSyncDSMCConfigurationInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncDSMCConfigurationShort sync dsmc configuration . requires admin:namespace:{namespace}:session:configuration [read]
sync dsmc configuration.
*/
func (a *Client) AdminSyncDSMCConfigurationShort(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncDSMCConfigurationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminSyncDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncDSMCConfigurationOK:
		return v, nil
	case *AdminSyncDSMCConfigurationBadRequest:
		return nil, v
	case *AdminSyncDSMCConfigurationUnauthorized:
		return nil, v
	case *AdminSyncDSMCConfigurationForbidden:
		return nil, v
	case *AdminSyncDSMCConfigurationNotFound:
		return nil, v
	case *AdminSyncDSMCConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
