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
	ListConfig(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigOK, *ListConfigUnauthorized, *ListConfigInternalServerError, error)
	ListConfigShort(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigOK, error)
	SaveConfig(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigNoContent, *SaveConfigBadRequest, *SaveConfigUnauthorized, *SaveConfigInternalServerError, error)
	SaveConfigShort(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigNoContent, error)
	GetConfig(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, *GetConfigUnauthorized, *GetConfigNotFound, *GetConfigInternalServerError, error)
	GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error)
	CreateConfig(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, *CreateConfigBadRequest, *CreateConfigUnauthorized, *CreateConfigConflict, *CreateConfigInternalServerError, error)
	CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error)
	DeleteConfig(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, *DeleteConfigBadRequest, *DeleteConfigUnauthorized, *DeleteConfigNotFound, *DeleteConfigInternalServerError, error)
	DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error)
	UpdateConfig(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, *UpdateConfigBadRequest, *UpdateConfigUnauthorized, *UpdateConfigNotFound, *UpdateConfigInternalServerError, error)
	UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error)
	ClearCache(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheNoContent, *ClearCacheUnauthorized, *ClearCacheInternalServerError, error)
	ClearCacheShort(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheNoContent, error)
	AddPort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortCreated, *AddPortBadRequest, *AddPortUnauthorized, *AddPortNotFound, *AddPortConflict, *AddPortInternalServerError, error)
	AddPortShort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortCreated, error)
	DeletePort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortOK, *DeletePortBadRequest, *DeletePortUnauthorized, *DeletePortNotFound, *DeletePortInternalServerError, error)
	DeletePortShort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortOK, error)
	UpdatePort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortOK, *UpdatePortBadRequest, *UpdatePortUnauthorized, *UpdatePortNotFound, *UpdatePortInternalServerError, error)
	UpdatePortShort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortOK, error)
	ExportConfigV1(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1OK, *ExportConfigV1Unauthorized, *ExportConfigV1Forbidden, *ExportConfigV1NotFound, *ExportConfigV1InternalServerError, error)
	ExportConfigV1Short(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1OK, error)
	ImportConfigV1(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1OK, *ImportConfigV1BadRequest, *ImportConfigV1Unauthorized, *ImportConfigV1Forbidden, *ImportConfigV1NotFound, *ImportConfigV1InternalServerError, error)
	ImportConfigV1Short(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ListConfigShort instead.

ListConfig list all configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers configs.
*/
func (a *Client) ListConfig(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigOK, *ListConfigUnauthorized, *ListConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListConfigOK:
		return v, nil, nil, nil

	case *ListConfigUnauthorized:
		return nil, v, nil, nil

	case *ListConfigInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListConfigShort list all configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers configs.
*/
func (a *Client) ListConfigShort(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListConfigOK:
		return v, nil
	case *ListConfigUnauthorized:
		return nil, v
	case *ListConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use SaveConfigShort instead.

SaveConfig save config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint adds/modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
"image_version_mapping": {
"1.4.0": "accelbyte/sample-ds-go:1.4.0"
},
"default_version": "1.4.0",
"cpu_limit": "100",
"mem_limit": "64",
"params": "",
"min_count": 0,
"max_count": 0,
"buffer_count": 0,
"configurations": {
"1player": {
"cpu_limit": "100",
"mem_limit": "64",
"params": "-gamemode 1p",
},
"50players": {
"cpu_limit": "200",
"mem_limit": "512",
"params": "-gamemode 50p",
}
},
"deployments": {
"global-1p": {
"game_version": "1.4.0"",
"regions": ["us-west", "ap-southeast"],
"configuration": "1player",
"min_count": 0,
"max_count": 0,
"buffer_count": 2
},
"us-50p": {
"game_version": "1.4.0"",
"regions": ["us-west"],
"configuration": "50players",
"min_count": 0,
"max_count": 0,
"buffer_count": 5
},
},
}
```
*/
func (a *Client) SaveConfig(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigNoContent, *SaveConfigBadRequest, *SaveConfigUnauthorized, *SaveConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *SaveConfigNoContent:
		return v, nil, nil, nil, nil

	case *SaveConfigBadRequest:
		return nil, v, nil, nil, nil

	case *SaveConfigUnauthorized:
		return nil, nil, v, nil, nil

	case *SaveConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveConfigShort save config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint adds/modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
"image_version_mapping": {
"1.4.0": "accelbyte/sample-ds-go:1.4.0"
},
"default_version": "1.4.0",
"cpu_limit": "100",
"mem_limit": "64",
"params": "",
"min_count": 0,
"max_count": 0,
"buffer_count": 0,
"configurations": {
"1player": {
"cpu_limit": "100",
"mem_limit": "64",
"params": "-gamemode 1p",
},
"50players": {
"cpu_limit": "200",
"mem_limit": "512",
"params": "-gamemode 50p",
}
},
"deployments": {
"global-1p": {
"game_version": "1.4.0"",
"regions": ["us-west", "ap-southeast"],
"configuration": "1player",
"min_count": 0,
"max_count": 0,
"buffer_count": 2
},
"us-50p": {
"game_version": "1.4.0"",
"regions": ["us-west"],
"configuration": "50players",
"min_count": 0,
"max_count": 0,
"buffer_count": 5
},
},
}
```
*/
func (a *Client) SaveConfigShort(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveConfigNoContent:
		return v, nil
	case *SaveConfigBadRequest:
		return nil, v
	case *SaveConfigUnauthorized:
		return nil, v
	case *SaveConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetConfigShort instead.

GetConfig get config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated servers config in a namespace.
*/
func (a *Client) GetConfig(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, *GetConfigUnauthorized, *GetConfigNotFound, *GetConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		return v, nil, nil, nil, nil

	case *GetConfigUnauthorized:
		return nil, v, nil, nil, nil

	case *GetConfigNotFound:
		return nil, nil, v, nil, nil

	case *GetConfigInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetConfigShort get config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated servers config in a namespace.
*/
func (a *Client) GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		return v, nil
	case *GetConfigUnauthorized:
		return nil, v
	case *GetConfigNotFound:
		return nil, v
	case *GetConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateConfigShort instead.

CreateConfig create config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint creates config.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) CreateConfig(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, *CreateConfigBadRequest, *CreateConfigUnauthorized, *CreateConfigConflict, *CreateConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *CreateConfigConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateConfigShort create config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint creates config.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		return v, nil
	case *CreateConfigBadRequest:
		return nil, v
	case *CreateConfigUnauthorized:
		return nil, v
	case *CreateConfigConflict:
		return nil, v
	case *CreateConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteConfigShort instead.

DeleteConfig delete config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]
Required scope: social

This endpoint removes config. When there are ready servers,
those servers will be removed.
```
*/
func (a *Client) DeleteConfig(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, *DeleteConfigBadRequest, *DeleteConfigUnauthorized, *DeleteConfigNotFound, *DeleteConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteConfigNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteConfigShort delete config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]
Required scope: social

This endpoint removes config. When there are ready servers,
those servers will be removed.
```
*/
func (a *Client) DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		return v, nil
	case *DeleteConfigBadRequest:
		return nil, v
	case *DeleteConfigUnauthorized:
		return nil, v
	case *DeleteConfigNotFound:
		return nil, v
	case *DeleteConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateConfigShort instead.

UpdateConfig update config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) UpdateConfig(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, *UpdateConfigBadRequest, *UpdateConfigUnauthorized, *UpdateConfigNotFound, *UpdateConfigInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateConfigBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateConfigUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateConfigNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdateConfigInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateConfigShort update config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		return v, nil
	case *UpdateConfigBadRequest:
		return nil, v
	case *UpdateConfigUnauthorized:
		return nil, v
	case *UpdateConfigNotFound:
		return nil, v
	case *UpdateConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ClearCacheShort instead.

ClearCache clear config cache
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint clears config cache in a namespace
*/
func (a *Client) ClearCache(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheNoContent, *ClearCacheUnauthorized, *ClearCacheInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewClearCacheParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ClearCache",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/cache",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ClearCacheReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ClearCacheNoContent:
		return v, nil, nil, nil

	case *ClearCacheUnauthorized:
		return nil, v, nil, nil

	case *ClearCacheInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ClearCacheShort clear config cache
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint clears config cache in a namespace
*/
func (a *Client) ClearCacheShort(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewClearCacheParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ClearCache",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/cache",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ClearCacheReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ClearCacheNoContent:
		return v, nil
	case *ClearCacheUnauthorized:
		return nil, v
	case *ClearCacheInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddPortShort instead.

AddPort create port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers port config in a namespace.
*/
func (a *Client) AddPort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortCreated, *AddPortBadRequest, *AddPortUnauthorized, *AddPortNotFound, *AddPortConflict, *AddPortInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddPortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddPort",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddPortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddPortCreated:
		return v, nil, nil, nil, nil, nil, nil

	case *AddPortBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AddPortUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AddPortNotFound:
		return nil, nil, nil, v, nil, nil, nil

	case *AddPortConflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AddPortInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddPortShort create port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers port config in a namespace.
*/
func (a *Client) AddPortShort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddPortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddPort",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddPortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddPortCreated:
		return v, nil
	case *AddPortBadRequest:
		return nil, v
	case *AddPortUnauthorized:
		return nil, v
	case *AddPortNotFound:
		return nil, v
	case *AddPortConflict:
		return nil, v
	case *AddPortInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeletePortShort instead.

DeletePort delete port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server port config in a namespace
*/
func (a *Client) DeletePort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortOK, *DeletePortBadRequest, *DeletePortUnauthorized, *DeletePortNotFound, *DeletePortInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeletePort",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeletePortOK:
		return v, nil, nil, nil, nil, nil

	case *DeletePortBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeletePortUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeletePortNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeletePortInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePortShort delete port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server port config in a namespace
*/
func (a *Client) DeletePortShort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeletePort",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePortOK:
		return v, nil
	case *DeletePortBadRequest:
		return nil, v
	case *DeletePortUnauthorized:
		return nil, v
	case *DeletePortNotFound:
		return nil, v
	case *DeletePortInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdatePortShort instead.

UpdatePort update port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers port config in a namespace.
*/
func (a *Client) UpdatePort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortOK, *UpdatePortBadRequest, *UpdatePortUnauthorized, *UpdatePortNotFound, *UpdatePortInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePort",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdatePortOK:
		return v, nil, nil, nil, nil, nil

	case *UpdatePortBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdatePortUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdatePortNotFound:
		return nil, nil, nil, v, nil, nil

	case *UpdatePortInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePortShort update port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers port config in a namespace.
*/
func (a *Client) UpdatePortShort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePortParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePort",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePortOK:
		return v, nil
	case *UpdatePortBadRequest:
		return nil, v
	case *UpdatePortUnauthorized:
		return nil, v
	case *UpdatePortNotFound:
		return nil, v
	case *UpdatePortInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ExportConfigV1Short instead.

ExportConfigV1 export dsm controller configuration for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint export a dedicated servers config in a namespace.
*/
func (a *Client) ExportConfigV1(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1OK, *ExportConfigV1Unauthorized, *ExportConfigV1Forbidden, *ExportConfigV1NotFound, *ExportConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportConfigV1",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ExportConfigV1OK:
		return v, nil, nil, nil, nil, nil

	case *ExportConfigV1Unauthorized:
		return nil, v, nil, nil, nil, nil

	case *ExportConfigV1Forbidden:
		return nil, nil, v, nil, nil, nil

	case *ExportConfigV1NotFound:
		return nil, nil, nil, v, nil, nil

	case *ExportConfigV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportConfigV1Short export dsm controller configuration for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint export a dedicated servers config in a namespace.
*/
func (a *Client) ExportConfigV1Short(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "exportConfigV1",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportConfigV1OK:
		return v, nil
	case *ExportConfigV1Unauthorized:
		return nil, v
	case *ExportConfigV1Forbidden:
		return nil, v
	case *ExportConfigV1NotFound:
		return nil, v
	case *ExportConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ImportConfigV1Short instead.

ImportConfigV1 import config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint import a dedicated servers config in a namespace.

If there is an existing configuration, the configuration would be replaced.
*/
func (a *Client) ImportConfigV1(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1OK, *ImportConfigV1BadRequest, *ImportConfigV1Unauthorized, *ImportConfigV1Forbidden, *ImportConfigV1NotFound, *ImportConfigV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importConfigV1",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ImportConfigV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *ImportConfigV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *ImportConfigV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *ImportConfigV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *ImportConfigV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *ImportConfigV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportConfigV1Short import config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint import a dedicated servers config in a namespace.

If there is an existing configuration, the configuration would be replaced.
*/
func (a *Client) ImportConfigV1Short(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "importConfigV1",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportConfigV1OK:
		return v, nil
	case *ImportConfigV1BadRequest:
		return nil, v
	case *ImportConfigV1Unauthorized:
		return nil, v
	case *ImportConfigV1Forbidden:
		return nil, v
	case *ImportConfigV1NotFound:
		return nil, v
	case *ImportConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
