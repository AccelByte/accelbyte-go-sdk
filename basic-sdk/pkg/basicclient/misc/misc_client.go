// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package misc

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new misc API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for misc API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetCountries(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, *GetCountriesBadRequest, *GetCountriesUnauthorized, error)
	GetCountriesShort(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, error)
	GetCountryGroups(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, *GetCountryGroupsBadRequest, *GetCountryGroupsUnauthorized, *GetCountryGroupsForbidden, *GetCountryGroupsNotFound, error)
	GetCountryGroupsShort(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, error)
	AddCountryGroup(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, *AddCountryGroupBadRequest, *AddCountryGroupUnauthorized, *AddCountryGroupForbidden, *AddCountryGroupConflict, error)
	AddCountryGroupShort(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, error)
	UpdateCountryGroup(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, *UpdateCountryGroupBadRequest, *UpdateCountryGroupUnauthorized, *UpdateCountryGroupForbidden, *UpdateCountryGroupNotFound, error)
	UpdateCountryGroupShort(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, error)
	DeleteCountryGroup(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, *DeleteCountryGroupBadRequest, *DeleteCountryGroupUnauthorized, *DeleteCountryGroupForbidden, *DeleteCountryGroupNotFound, error)
	DeleteCountryGroupShort(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, error)
	GetLanguages(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, *GetLanguagesBadRequest, *GetLanguagesUnauthorized, error)
	GetLanguagesShort(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, error)
	GetTimeZones(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, *GetTimeZonesBadRequest, *GetTimeZonesUnauthorized, error)
	GetTimeZonesShort(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, error)
	PublicGetTime(params *PublicGetTimeParams) (*PublicGetTimeOK, error)
	PublicGetTimeShort(params *PublicGetTimeParams) (*PublicGetTimeOK, error)
	PublicGetCountries(params *PublicGetCountriesParams) (*PublicGetCountriesOK, *PublicGetCountriesBadRequest, error)
	PublicGetCountriesShort(params *PublicGetCountriesParams) (*PublicGetCountriesOK, error)
	PublicGetLanguages(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, *PublicGetLanguagesBadRequest, error)
	PublicGetLanguagesShort(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, error)
	PublicGetTimeZones(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, *PublicGetTimeZonesBadRequest, error)
	PublicGetTimeZonesShort(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetCountriesShort instead.

GetCountries list countries
List countries.
Other detail info:

  * Required permission : login user
  *  Action code : 11204
  *  Returns : country code list
*/
func (a *Client) GetCountries(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, *GetCountriesBadRequest, *GetCountriesUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCountriesOK:
		return v, nil, nil, nil

	case *GetCountriesBadRequest:
		return nil, v, nil, nil

	case *GetCountriesUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCountriesShort list countries
List countries.
Other detail info:

  * Required permission : login user
  *  Action code : 11204
  *  Returns : country code list
*/
func (a *Client) GetCountriesShort(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountriesOK:
		return v, nil
	case *GetCountriesBadRequest:
		return nil, v
	case *GetCountriesUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCountryGroupsShort instead.

GetCountryGroups list country groups
List country groups. Will return all available country groups if the query param is not specified
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=2 (READ)
  *  Action code : 11203
  *  Returns : list of country groups
*/
func (a *Client) GetCountryGroups(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, *GetCountryGroupsBadRequest, *GetCountryGroupsUnauthorized, *GetCountryGroupsForbidden, *GetCountryGroupsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCountryGroups",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetCountryGroupsOK:
		return v, nil, nil, nil, nil, nil

	case *GetCountryGroupsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *GetCountryGroupsUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *GetCountryGroupsForbidden:
		return nil, nil, nil, v, nil, nil

	case *GetCountryGroupsNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCountryGroupsShort list country groups
List country groups. Will return all available country groups if the query param is not specified
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=2 (READ)
  *  Action code : 11203
  *  Returns : list of country groups
*/
func (a *Client) GetCountryGroupsShort(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCountryGroups",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountryGroupsOK:
		return v, nil
	case *GetCountryGroupsBadRequest:
		return nil, v
	case *GetCountryGroupsUnauthorized:
		return nil, v
	case *GetCountryGroupsForbidden:
		return nil, v
	case *GetCountryGroupsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AddCountryGroupShort instead.

AddCountryGroup add a country group
Add a country groups
Country code must follow ISO3166-1 alpha-2.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=1 (CREATE)
  *  Action code : 11201
  *  Returns : newly created country group
*/
func (a *Client) AddCountryGroup(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, *AddCountryGroupBadRequest, *AddCountryGroupUnauthorized, *AddCountryGroupForbidden, *AddCountryGroupConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "addCountryGroup",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AddCountryGroupCreated:
		return v, nil, nil, nil, nil, nil

	case *AddCountryGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AddCountryGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *AddCountryGroupForbidden:
		return nil, nil, nil, v, nil, nil

	case *AddCountryGroupConflict:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddCountryGroupShort add a country group
Add a country groups
Country code must follow ISO3166-1 alpha-2.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=1 (CREATE)
  *  Action code : 11201
  *  Returns : newly created country group
*/
func (a *Client) AddCountryGroupShort(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "addCountryGroup",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddCountryGroupCreated:
		return v, nil
	case *AddCountryGroupBadRequest:
		return nil, v
	case *AddCountryGroupUnauthorized:
		return nil, v
	case *AddCountryGroupForbidden:
		return nil, v
	case *AddCountryGroupConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCountryGroupShort instead.

UpdateCountryGroup update a country group
Update a country groups. The countryGroupCode must be exist beforehand.
Valid update behaviour :
- To update countryGroupName only, do not include countries key or just specify it with empty array.
- To update countries only, do not include countryGroupName key or just specify it with blank value.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=4 (UPDATE)
  *  Action code : 11202
  *  Returns : updated country group
*/
func (a *Client) UpdateCountryGroup(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, *UpdateCountryGroupBadRequest, *UpdateCountryGroupUnauthorized, *UpdateCountryGroupForbidden, *UpdateCountryGroupNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCountryGroup",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryGroupOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateCountryGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateCountryGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *UpdateCountryGroupForbidden:
		return nil, nil, nil, v, nil, nil

	case *UpdateCountryGroupNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCountryGroupShort update a country group
Update a country groups. The countryGroupCode must be exist beforehand.
Valid update behaviour :
- To update countryGroupName only, do not include countries key or just specify it with empty array.
- To update countries only, do not include countryGroupName key or just specify it with blank value.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=4 (UPDATE)
  *  Action code : 11202
  *  Returns : updated country group
*/
func (a *Client) UpdateCountryGroupShort(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCountryGroup",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryGroupOK:
		return v, nil
	case *UpdateCountryGroupBadRequest:
		return nil, v
	case *UpdateCountryGroupUnauthorized:
		return nil, v
	case *UpdateCountryGroupForbidden:
		return nil, v
	case *UpdateCountryGroupNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteCountryGroupShort instead.

DeleteCountryGroup delete a country group
Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=8 (DELETE)
*/
func (a *Client) DeleteCountryGroup(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, *DeleteCountryGroupBadRequest, *DeleteCountryGroupUnauthorized, *DeleteCountryGroupForbidden, *DeleteCountryGroupNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteCountryGroup",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteCountryGroupOK:
		return v, nil, nil, nil, nil, nil

	case *DeleteCountryGroupBadRequest:
		return nil, v, nil, nil, nil, nil

	case *DeleteCountryGroupUnauthorized:
		return nil, nil, v, nil, nil, nil

	case *DeleteCountryGroupForbidden:
		return nil, nil, nil, v, nil, nil

	case *DeleteCountryGroupNotFound:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCountryGroupShort delete a country group
Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.
Other detail info:

  * Required permission : resource = "ADMIN:NAMESPACE:{namespace}:MISC" , action=8 (DELETE)
*/
func (a *Client) DeleteCountryGroupShort(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCountryGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteCountryGroup",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCountryGroupOK:
		return v, nil
	case *DeleteCountryGroupBadRequest:
		return nil, v
	case *DeleteCountryGroupUnauthorized:
		return nil, v
	case *DeleteCountryGroupForbidden:
		return nil, v
	case *DeleteCountryGroupNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetLanguagesShort instead.

GetLanguages list languages.
List languages.
Other detail info:

  * Required permission : login user
  *  Action code : 11206
  *  Returns : language list
*/
func (a *Client) GetLanguages(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, *GetLanguagesBadRequest, *GetLanguagesUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLanguagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLanguagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetLanguagesOK:
		return v, nil, nil, nil

	case *GetLanguagesBadRequest:
		return nil, v, nil, nil

	case *GetLanguagesUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLanguagesShort list languages.
List languages.
Other detail info:

  * Required permission : login user
  *  Action code : 11206
  *  Returns : language list
*/
func (a *Client) GetLanguagesShort(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLanguagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLanguagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLanguagesOK:
		return v, nil
	case *GetLanguagesBadRequest:
		return nil, v
	case *GetLanguagesUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetTimeZonesShort instead.

GetTimeZones list time zones
List time zones.
Other detail info:

  * Required permission : login user
  *  Action code : 11205
  *  Returns : time zones
*/
func (a *Client) GetTimeZones(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, *GetTimeZonesBadRequest, *GetTimeZonesUnauthorized, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTimeZonesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTimeZonesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetTimeZonesOK:
		return v, nil, nil, nil

	case *GetTimeZonesBadRequest:
		return nil, v, nil, nil

	case *GetTimeZonesUnauthorized:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTimeZonesShort list time zones
List time zones.
Other detail info:

  * Required permission : login user
  *  Action code : 11205
  *  Returns : time zones
*/
func (a *Client) GetTimeZonesShort(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTimeZonesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTimeZonesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTimeZonesOK:
		return v, nil
	case *GetTimeZonesBadRequest:
		return nil, v
	case *GetTimeZonesUnauthorized:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetTimeShort instead.

PublicGetTime get server time
Get server time
*/
func (a *Client) PublicGetTime(params *PublicGetTimeParams) (*PublicGetTimeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetTime",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/misc/time",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetTimeShort get server time
Get server time
*/
func (a *Client) PublicGetTimeShort(params *PublicGetTimeParams) (*PublicGetTimeOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetTime",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/misc/time",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCountriesShort instead.

PublicGetCountries list countries
List countries.
Other detail info:

  * Returns : country code list
*/
func (a *Client) PublicGetCountries(params *PublicGetCountriesParams) (*PublicGetCountriesOK, *PublicGetCountriesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountriesOK:
		return v, nil, nil

	case *PublicGetCountriesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountriesShort list countries
List countries.
Other detail info:

  * Returns : country code list
*/
func (a *Client) PublicGetCountriesShort(params *PublicGetCountriesParams) (*PublicGetCountriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountriesOK:
		return v, nil
	case *PublicGetCountriesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetLanguagesShort instead.

PublicGetLanguages list languages.
List languages.
Other detail info:

  * Returns : language list
*/
func (a *Client) PublicGetLanguages(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, *PublicGetLanguagesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLanguagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLanguagesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetLanguagesOK:
		return v, nil, nil

	case *PublicGetLanguagesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetLanguagesShort list languages.
List languages.
Other detail info:

  * Returns : language list
*/
func (a *Client) PublicGetLanguagesShort(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLanguagesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLanguagesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetLanguagesOK:
		return v, nil
	case *PublicGetLanguagesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetTimeZonesShort instead.

PublicGetTimeZones list time zones
List time zones.
Other detail info:

  * Returns : time zones
*/
func (a *Client) PublicGetTimeZones(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, *PublicGetTimeZonesBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeZonesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeZonesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeZonesOK:
		return v, nil, nil

	case *PublicGetTimeZonesBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetTimeZonesShort list time zones
List time zones.
Other detail info:

  * Returns : time zones
*/
func (a *Client) PublicGetTimeZonesShort(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeZonesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeZonesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeZonesOK:
		return v, nil
	case *PublicGetTimeZonesBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
