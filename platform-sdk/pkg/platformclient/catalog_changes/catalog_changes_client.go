// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package catalog_changes

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new catalog changes API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for catalog changes API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetStatistic(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error)
	GetStatisticShort(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error)
	PublishAll(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, *PublishAllBadRequest, *PublishAllNotFound, error)
	PublishAllShort(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, error)
	PublishSelected(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, *PublishSelectedBadRequest, *PublishSelectedNotFound, error)
	PublishSelectedShort(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, error)
	QueryChanges(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error)
	QueryChangesShort(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error)
	SelectAllRecords(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, *SelectAllRecordsNotFound, error)
	SelectAllRecordsShort(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, error)
	SelectRecord(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, *SelectRecordNotFound, error)
	SelectRecordShort(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, error)
	UnselectAllRecords(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, *UnselectAllRecordsNotFound, error)
	UnselectAllRecordsShort(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, error)
	UnselectRecord(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, *UnselectRecordNotFound, *UnselectRecordConflict, error)
	UnselectRecordShort(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
  GetStatistic gets catalog changes statistics

  This API is used to query catalog changes statistics .&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: catalog changes statistics changes&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) GetStatistic(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatisticParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatistic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatisticOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) GetStatisticShort(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatisticParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getStatistic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatisticOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublishAll publishes all unpublished changes

  This API is used to publish all unpublished changes.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: no content&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublishAll(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, *PublishAllBadRequest, *PublishAllNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishAllParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishAll",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishAllReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishAllOK:
		return v, nil, nil, nil

	case *PublishAllBadRequest:
		return nil, v, nil, nil

	case *PublishAllNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublishAllShort(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishAllParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishAll",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishAllReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishAllOK:
		return v, nil
	case *PublishAllBadRequest:
		return nil, v
	case *PublishAllNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  PublishSelected publishes selected unpublished changes

  This API is used to publish selected unpublished changes.&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=1 (CREATE)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: no content&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) PublishSelected(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, *PublishSelectedBadRequest, *PublishSelectedNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSelectedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishSelected",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSelectedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PublishSelectedOK:
		return v, nil, nil, nil

	case *PublishSelectedBadRequest:
		return nil, v, nil, nil

	case *PublishSelectedNotFound:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) PublishSelectedShort(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSelectedParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publishSelected",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSelectedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishSelectedOK:
		return v, nil
	case *PublishSelectedBadRequest:
		return nil, v
	case *PublishSelectedNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  QueryChanges queries catalog changes

  This API is used to query changes .&lt;p&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=2 (READ)&lt;/li&gt;&lt;li&gt;&lt;i&gt;Returns&lt;/i&gt;: the pagination of changes&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) QueryChanges(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryChangesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryChanges",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryChangesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryChangesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) QueryChangesShort(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryChangesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryChanges",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryChangesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryChangesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SelectAllRecords selects all changes

  Select all changes.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) SelectAllRecords(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, *SelectAllRecordsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectAllRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "selectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SelectAllRecordsNoContent:
		return v, nil, nil

	case *SelectAllRecordsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) SelectAllRecordsShort(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectAllRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "selectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SelectAllRecordsNoContent:
		return v, nil
	case *SelectAllRecordsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  SelectRecord selects a change

  Select a change, it will be included when partial publish.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) SelectRecord(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, *SelectRecordNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectRecordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "selectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *SelectRecordNoContent:
		return v, nil, nil

	case *SelectRecordNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) SelectRecordShort(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectRecordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "selectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SelectRecordNoContent:
		return v, nil
	case *SelectRecordNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UnselectAllRecords unselects all changes

  Unselect all change.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UnselectAllRecords(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, *UnselectAllRecordsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectAllRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unselectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *UnselectAllRecordsNoContent:
		return v, nil, nil

	case *UnselectAllRecordsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UnselectAllRecordsShort(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectAllRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unselectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnselectAllRecordsNoContent:
		return v, nil
	case *UnselectAllRecordsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
  UnselectRecord unselects a change

  Unselect a change, it will not be included when partial publish.&lt;br&gt;Other detail info: &lt;ul&gt;&lt;li&gt;&lt;i&gt;Required permission&lt;/i&gt;: resource=&#34;ADMIN:NAMESPACE:{namespace}:STORE&#34;, action=4 (UPDATE)&lt;/li&gt;&lt;/ul&gt;
*/
func (a *Client) UnselectRecord(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, *UnselectRecordNotFound, *UnselectRecordConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectRecordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unselectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UnselectRecordNoContent:
		return v, nil, nil, nil

	case *UnselectRecordNotFound:
		return nil, v, nil, nil

	case *UnselectRecordConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) UnselectRecordShort(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectRecordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "unselectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnselectRecordNoContent:
		return v, nil
	case *UnselectRecordNotFound:
		return nil, v
	case *UnselectRecordConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
