// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package admin_moderation_rule

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin moderation rule API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin moderation rule API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateModerationRule(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleCreated, *CreateModerationRuleBadRequest, *CreateModerationRuleConflict, *CreateModerationRuleInternalServerError, error)
	CreateModerationRuleShort(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleCreated, error)
	UpdateModerationRule(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleOK, *UpdateModerationRuleBadRequest, *UpdateModerationRuleNotFound, *UpdateModerationRuleConflict, *UpdateModerationRuleInternalServerError, error)
	UpdateModerationRuleShort(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleOK, error)
	DeleteModerationRule(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleNoContent, *DeleteModerationRuleBadRequest, *DeleteModerationRuleInternalServerError, error)
	DeleteModerationRuleShort(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleNoContent, error)
	UpdateModerationRuleStatus(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusNoContent, *UpdateModerationRuleStatusBadRequest, *UpdateModerationRuleStatusNotFound, *UpdateModerationRuleStatusInternalServerError, error)
	UpdateModerationRuleStatusShort(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusNoContent, error)
	GetModerationRules(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesOK, *GetModerationRulesBadRequest, *GetModerationRulesNotFound, *GetModerationRulesInternalServerError, error)
	GetModerationRulesShort(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesOK, error)
	GetModerationRuleDetails(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsOK, *GetModerationRuleDetailsNotFound, *GetModerationRuleDetailsInternalServerError, error)
	GetModerationRuleDetailsShort(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateModerationRuleShort instead.

CreateModerationRule create auto moderation rule


This endpoint create moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [CREATE]




Supported Category:

  * UGC
  * USER
  * CHAT
  * EXTENSION






Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):






  * HideContent





Supported Actions:






  * hideContent : Hide the content


  * banAccount : Ban the user account


  * deleteChat : Delete chat
*/
func (a *Client) CreateModerationRule(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleCreated, *CreateModerationRuleBadRequest, *CreateModerationRuleConflict, *CreateModerationRuleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createModerationRule",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateModerationRuleCreated:
		return v, nil, nil, nil, nil

	case *CreateModerationRuleBadRequest:
		return nil, v, nil, nil, nil

	case *CreateModerationRuleConflict:
		return nil, nil, v, nil, nil

	case *CreateModerationRuleInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateModerationRuleShort create auto moderation rule


This endpoint create moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [CREATE]




Supported Category:

  * UGC
  * USER
  * CHAT
  * EXTENSION






Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):






  * HideContent





Supported Actions:






  * hideContent : Hide the content


  * banAccount : Ban the user account


  * deleteChat : Delete chat
*/
func (a *Client) CreateModerationRuleShort(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createModerationRule",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateModerationRuleCreated:
		return v, nil
	case *CreateModerationRuleBadRequest:
		return nil, v
	case *CreateModerationRuleConflict:
		return nil, v
	case *CreateModerationRuleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateModerationRuleShort instead.

UpdateModerationRule update auto moderation rule


This endpoint update moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [UPDATE]


Supported Category:

  * UGC
  * USER
  * CHAT
  * EXTENSION






Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):






  * HideContent





Supported Actions:






  * hideContent : Hide the content


  * banAccount : Ban the user account


  * deleteChat : Delete chat
*/
func (a *Client) UpdateModerationRule(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleOK, *UpdateModerationRuleBadRequest, *UpdateModerationRuleNotFound, *UpdateModerationRuleConflict, *UpdateModerationRuleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateModerationRule",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateModerationRuleBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateModerationRuleNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateModerationRuleConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateModerationRuleInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateModerationRuleShort update auto moderation rule


This endpoint update moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [UPDATE]


Supported Category:

  * UGC
  * USER
  * CHAT
  * EXTENSION






Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):






  * HideContent





Supported Actions:






  * hideContent : Hide the content


  * banAccount : Ban the user account


  * deleteChat : Delete chat
*/
func (a *Client) UpdateModerationRuleShort(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateModerationRule",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleOK:
		return v, nil
	case *UpdateModerationRuleBadRequest:
		return nil, v
	case *UpdateModerationRuleNotFound:
		return nil, v
	case *UpdateModerationRuleConflict:
		return nil, v
	case *UpdateModerationRuleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteModerationRuleShort instead.

DeleteModerationRule delete auto moderation rule


This endpoint delete moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [DELETE]
*/
func (a *Client) DeleteModerationRule(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleNoContent, *DeleteModerationRuleBadRequest, *DeleteModerationRuleInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteModerationRule",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteModerationRuleNoContent:
		return v, nil, nil, nil

	case *DeleteModerationRuleBadRequest:
		return nil, v, nil, nil

	case *DeleteModerationRuleInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteModerationRuleShort delete auto moderation rule


This endpoint delete moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [DELETE]
*/
func (a *Client) DeleteModerationRuleShort(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteModerationRuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteModerationRule",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteModerationRuleNoContent:
		return v, nil
	case *DeleteModerationRuleBadRequest:
		return nil, v
	case *DeleteModerationRuleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateModerationRuleStatusShort instead.

UpdateModerationRuleStatus enable/disable auto moderation rule


This endpoint enable/disable moderation rule status.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [UPDATE]
*/
func (a *Client) UpdateModerationRuleStatus(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusNoContent, *UpdateModerationRuleStatusBadRequest, *UpdateModerationRuleStatusNotFound, *UpdateModerationRuleStatusInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateModerationRuleStatus",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleStatusNoContent:
		return v, nil, nil, nil, nil

	case *UpdateModerationRuleStatusBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateModerationRuleStatusNotFound:
		return nil, nil, v, nil, nil

	case *UpdateModerationRuleStatusInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateModerationRuleStatusShort enable/disable auto moderation rule


This endpoint enable/disable moderation rule status.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [UPDATE]
*/
func (a *Client) UpdateModerationRuleStatusShort(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateModerationRuleStatus",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleStatusNoContent:
		return v, nil
	case *UpdateModerationRuleStatusBadRequest:
		return nil, v
	case *UpdateModerationRuleStatusNotFound:
		return nil, v
	case *UpdateModerationRuleStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetModerationRulesShort instead.

GetModerationRules get auto moderation rules


This endpoint get moderation rules.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [READ]
*/
func (a *Client) GetModerationRules(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesOK, *GetModerationRulesBadRequest, *GetModerationRulesNotFound, *GetModerationRulesInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRulesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getModerationRules",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetModerationRulesOK:
		return v, nil, nil, nil, nil

	case *GetModerationRulesBadRequest:
		return nil, v, nil, nil, nil

	case *GetModerationRulesNotFound:
		return nil, nil, v, nil, nil

	case *GetModerationRulesInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetModerationRulesShort get auto moderation rules


This endpoint get moderation rules.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [READ]
*/
func (a *Client) GetModerationRulesShort(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRulesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getModerationRules",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetModerationRulesOK:
		return v, nil
	case *GetModerationRulesBadRequest:
		return nil, v
	case *GetModerationRulesNotFound:
		return nil, v
	case *GetModerationRulesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetModerationRuleDetailsShort instead.

GetModerationRuleDetails get auto moderation rule


This endpoint get moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [READ]
*/
func (a *Client) GetModerationRuleDetails(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsOK, *GetModerationRuleDetailsNotFound, *GetModerationRuleDetailsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRuleDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getModerationRuleDetails",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRuleDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetModerationRuleDetailsOK:
		return v, nil, nil, nil

	case *GetModerationRuleDetailsNotFound:
		return nil, v, nil, nil

	case *GetModerationRuleDetailsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetModerationRuleDetailsShort get auto moderation rule


This endpoint get moderation rule.




Required Permission: ADMIN:NAMESPACE:{namespace}:RULE [READ]
*/
func (a *Client) GetModerationRuleDetailsShort(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRuleDetailsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getModerationRuleDetails",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRuleDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetModerationRuleDetailsOK:
		return v, nil
	case *GetModerationRuleDetailsNotFound:
		return nil, v
	case *GetModerationRuleDetailsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
