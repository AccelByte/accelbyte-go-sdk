// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package misc

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	AddCountryGroup(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, *AddCountryGroupBadRequest, *AddCountryGroupUnauthorized, *AddCountryGroupForbidden, *AddCountryGroupConflict, error)
	AddCountryGroupShort(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupCreated, error)
	DeleteCountryGroup(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, *DeleteCountryGroupBadRequest, *DeleteCountryGroupUnauthorized, *DeleteCountryGroupForbidden, *DeleteCountryGroupNotFound, error)
	DeleteCountryGroupShort(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupOK, error)
	GetCountries(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, *GetCountriesBadRequest, *GetCountriesUnauthorized, error)
	GetCountriesShort(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesOK, error)
	GetCountryGroups(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, *GetCountryGroupsBadRequest, *GetCountryGroupsUnauthorized, *GetCountryGroupsForbidden, *GetCountryGroupsNotFound, error)
	GetCountryGroupsShort(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsOK, error)
	GetLanguages(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, *GetLanguagesBadRequest, *GetLanguagesUnauthorized, error)
	GetLanguagesShort(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesOK, error)
	GetTimeZones(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, *GetTimeZonesBadRequest, *GetTimeZonesUnauthorized, error)
	GetTimeZonesShort(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesOK, error)
	PublicGetCountries(params *PublicGetCountriesParams) (*PublicGetCountriesOK, *PublicGetCountriesBadRequest, error)
	PublicGetCountriesShort(params *PublicGetCountriesParams) (*PublicGetCountriesOK, error)
	PublicGetLanguages(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, *PublicGetLanguagesBadRequest, error)
	PublicGetLanguagesShort(params *PublicGetLanguagesParams) (*PublicGetLanguagesOK, error)
	PublicGetTime(params *PublicGetTimeParams) (*PublicGetTimeOK, error)
	PublicGetTimeShort(params *PublicGetTimeParams) (*PublicGetTimeOK, error)
	PublicGetTimeZones(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, *PublicGetTimeZonesBadRequest, error)
	PublicGetTimeZonesShort(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesOK, error)
	UpdateCountryGroup(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, *UpdateCountryGroupBadRequest, *UpdateCountryGroupUnauthorized, *UpdateCountryGroupForbidden, *UpdateCountryGroupNotFound, error)
	UpdateCountryGroupShort(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  AddCountryGroup adds a country group

  Add a country groups&lt;br&gt;Country code must follow ISO3166-1 alpha-2.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:MISC&#34;&lt;/b&gt;, action=1 &lt;b&gt;(CREATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11201&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: newly created country group&lt;/li&gt;&lt;/ul&gt;
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
  DeleteCountryGroup deletes a country group

  Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:MISC&#34;&lt;/b&gt;, action=8 &lt;b&gt;(DELETE)&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;
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
  GetCountries lists countries

  List countries.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: login user&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11204&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: country code list&lt;/li&gt;&lt;/ul&gt;
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
  GetCountryGroups lists country groups

  List country groups. Will return all available country groups if the query param is not specified&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:MISC&#34;&lt;/b&gt;, action=2 &lt;b&gt;(READ)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11203&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: list of country groups&lt;/li&gt;&lt;/ul&gt;
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
  GetLanguages lists languages

  List languages.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: login user&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11206&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: language list&lt;/li&gt;&lt;/ul&gt;
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
  GetTimeZones lists time zones

  List time zones.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: login user&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11205&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: time zones&lt;/li&gt;&lt;/ul&gt;
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
  PublicGetCountries lists countries

  List countries.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: country code list&lt;/li&gt;&lt;/ul&gt;
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
  PublicGetLanguages lists languages

  List languages.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: language list&lt;/li&gt;&lt;/ul&gt;
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
  PublicGetTime gets server time

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
  PublicGetTimeZones lists time zones

  List time zones.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: time zones&lt;/li&gt;&lt;/ul&gt;
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

/*
  UpdateCountryGroup updates a country group

  Update a country groups. The countryGroupCode must be exist beforehand.&lt;br&gt;Valid update behaviour :&lt;br/&gt;- To update &lt;i&gt;countryGroupName&lt;/i&gt; only, do not include &lt;i&gt;countries&lt;/i&gt; key or just specify it with empty array.&lt;br/&gt;- To update &lt;i&gt;countries&lt;/i&gt; only, do not include &lt;i&gt;countryGroupName&lt;/i&gt; key or just specify it with blank value.&lt;br/&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource = &lt;b&gt;&#34;ADMIN:NAMESPACE:{namespace}:MISC&#34;&lt;/b&gt;, action=4 &lt;b&gt;(UPDATE)&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;i&gt;Action code&lt;/i&gt;: 11202&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: updated country group&lt;/li&gt;&lt;/ul&gt;
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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
