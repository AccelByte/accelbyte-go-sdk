// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package clients_config_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clients config v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clients config v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListClientAvailablePermissions(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, *AdminListClientAvailablePermissionsUnauthorized, *AdminListClientAvailablePermissionsForbidden, error)
	AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, error)
	AdminUpdateAvailablePermissionsByModule(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, *AdminUpdateAvailablePermissionsByModuleUnauthorized, *AdminUpdateAvailablePermissionsByModuleForbidden, error)
	AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, error)
	AdminDeleteConfigPermissionsByGroup(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, *AdminDeleteConfigPermissionsByGroupUnauthorized, *AdminDeleteConfigPermissionsByGroupForbidden, error)
	AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, error)
	AdminUpdateModulePackage(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageNoContent, *AdminUpdateModulePackageUnauthorized, *AdminUpdateModulePackageForbidden, error)
	AdminUpdateModulePackageShort(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageNoContent, error)
	AdminListClientTemplates(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, *AdminListClientTemplatesUnauthorized, *AdminListClientTemplatesForbidden, error)
	AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListClientAvailablePermissionsShort instead.

AdminListClientAvailablePermissions list client available permissions
Lists all available client permissions.
*/
func (a *Client) AdminListClientAvailablePermissions(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, *AdminListClientAvailablePermissionsUnauthorized, *AdminListClientAvailablePermissionsForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientAvailablePermissionsParams()
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
		ID:                 "AdminListClientAvailablePermissions",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientAvailablePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListClientAvailablePermissionsOK:
		return v, nil, nil, nil

	case *AdminListClientAvailablePermissionsUnauthorized:
		return nil, v, nil, nil

	case *AdminListClientAvailablePermissionsForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListClientAvailablePermissionsShort list client available permissions
Lists all available client permissions.
*/
func (a *Client) AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientAvailablePermissionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListClientAvailablePermissions",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientAvailablePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListClientAvailablePermissionsOK:
		return v, nil
	case *AdminListClientAvailablePermissionsUnauthorized:
		return nil, v
	case *AdminListClientAvailablePermissionsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateAvailablePermissionsByModuleShort instead.

AdminUpdateAvailablePermissionsByModule update or create client permissions module
Upserts client available permissions at the module level.
Only the modules listed in the request are processed - any other existing module is left untouched, so *callers do not need to include unchanged modules*.

## Groups update behavior

For each module in the request, the 'groups' array is the *full desired state* of that module's groups - any existing group whose 'groupId' is omitted is treated as ***removed***.
If a removed group is currently used by any client, the request will fails with 400 and nothing is saved, unless 'forceDelete=true' query param is passed.
*/
func (a *Client) AdminUpdateAvailablePermissionsByModule(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, *AdminUpdateAvailablePermissionsByModuleUnauthorized, *AdminUpdateAvailablePermissionsByModuleForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAvailablePermissionsByModuleParams()
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
		ID:                 "AdminUpdateAvailablePermissionsByModule",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAvailablePermissionsByModuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAvailablePermissionsByModuleNoContent:
		return v, nil, nil, nil

	case *AdminUpdateAvailablePermissionsByModuleUnauthorized:
		return nil, v, nil, nil

	case *AdminUpdateAvailablePermissionsByModuleForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAvailablePermissionsByModuleShort update or create client permissions module
Upserts client available permissions at the module level.
Only the modules listed in the request are processed - any other existing module is left untouched, so *callers do not need to include unchanged modules*.

## Groups update behavior

For each module in the request, the 'groups' array is the *full desired state* of that module's groups - any existing group whose 'groupId' is omitted is treated as ***removed***.
If a removed group is currently used by any client, the request will fails with 400 and nothing is saved, unless 'forceDelete=true' query param is passed.
*/
func (a *Client) AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAvailablePermissionsByModuleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAvailablePermissionsByModule",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAvailablePermissionsByModuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAvailablePermissionsByModuleNoContent:
		return v, nil
	case *AdminUpdateAvailablePermissionsByModuleUnauthorized:
		return nil, v
	case *AdminUpdateAvailablePermissionsByModuleForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteConfigPermissionsByGroupShort instead.

AdminDeleteConfigPermissionsByGroup delete client config permissions by module and group
Delete Client config permissions by module and group.
*/
func (a *Client) AdminDeleteConfigPermissionsByGroup(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, *AdminDeleteConfigPermissionsByGroupUnauthorized, *AdminDeleteConfigPermissionsByGroupForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigPermissionsByGroupParams()
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
		ID:                 "AdminDeleteConfigPermissionsByGroup",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigPermissionsByGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigPermissionsByGroupNoContent:
		return v, nil, nil, nil

	case *AdminDeleteConfigPermissionsByGroupUnauthorized:
		return nil, v, nil, nil

	case *AdminDeleteConfigPermissionsByGroupForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigPermissionsByGroupShort delete client config permissions by module and group
Delete Client config permissions by module and group.
*/
func (a *Client) AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigPermissionsByGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteConfigPermissionsByGroup",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigPermissionsByGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigPermissionsByGroupNoContent:
		return v, nil
	case *AdminDeleteConfigPermissionsByGroupUnauthorized:
		return nil, v
	case *AdminDeleteConfigPermissionsByGroupForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateModulePackageShort instead.

AdminUpdateModulePackage set permission module package info
Sets the package info for a permission module. Ignores the module if it is not found.
*/
func (a *Client) AdminUpdateModulePackage(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageNoContent, *AdminUpdateModulePackageUnauthorized, *AdminUpdateModulePackageForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateModulePackageParams()
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
		ID:                 "AdminUpdateModulePackage",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions/package",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateModulePackageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateModulePackageNoContent:
		return v, nil, nil, nil

	case *AdminUpdateModulePackageUnauthorized:
		return nil, v, nil, nil

	case *AdminUpdateModulePackageForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateModulePackageShort set permission module package info
Sets the package info for a permission module. Ignores the module if it is not found.
*/
func (a *Client) AdminUpdateModulePackageShort(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateModulePackageParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateModulePackage",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions/package",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateModulePackageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateModulePackageNoContent:
		return v, nil
	case *AdminUpdateModulePackageUnauthorized:
		return nil, v
	case *AdminUpdateModulePackageForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminListClientTemplatesShort instead.

AdminListClientTemplates list client templates
Lists all available client templates.
*/
func (a *Client) AdminListClientTemplates(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, *AdminListClientTemplatesUnauthorized, *AdminListClientTemplatesForbidden, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientTemplatesParams()
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
		ID:                 "AdminListClientTemplates",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientTemplatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListClientTemplatesOK:
		return v, nil, nil, nil

	case *AdminListClientTemplatesUnauthorized:
		return nil, v, nil, nil

	case *AdminListClientTemplatesForbidden:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListClientTemplatesShort list client templates
Lists all available client templates.
*/
func (a *Client) AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientTemplatesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListClientTemplates",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientTemplatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListClientTemplatesOK:
		return v, nil
	case *AdminListClientTemplatesUnauthorized:
		return nil, v
	case *AdminListClientTemplatesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
