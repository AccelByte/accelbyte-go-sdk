// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package section

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new section API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for section API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QuerySections(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsOK, *QuerySectionsNotFound, *QuerySectionsUnprocessableEntity, error)
	QuerySectionsShort(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsOK, error)
	CreateSection(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionCreated, *CreateSectionBadRequest, *CreateSectionNotFound, *CreateSectionConflict, *CreateSectionUnprocessableEntity, error)
	CreateSectionShort(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionCreated, error)
	PurgeExpiredSection(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionNoContent, *PurgeExpiredSectionNotFound, error)
	PurgeExpiredSectionShort(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionNoContent, error)
	GetSection(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionOK, *GetSectionNotFound, error)
	GetSectionShort(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionOK, error)
	UpdateSection(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionOK, *UpdateSectionBadRequest, *UpdateSectionNotFound, *UpdateSectionConflict, *UpdateSectionUnprocessableEntity, error)
	UpdateSectionShort(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionOK, error)
	DeleteSection(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionNoContent, *DeleteSectionNotFound, *DeleteSectionConflict, error)
	DeleteSectionShort(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionNoContent, error)
	PublicListActiveSections(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsOK, *PublicListActiveSectionsNotFound, error)
	PublicListActiveSectionsShort(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use QuerySectionsShort instead.

QuerySections list sections
This API is used to query sections.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : paginated sections
*/
func (a *Client) QuerySections(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsOK, *QuerySectionsNotFound, *QuerySectionsUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySectionsParams()
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
		ID:                 "querySections",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *QuerySectionsOK:
		return v, nil, nil, nil

	case *QuerySectionsNotFound:
		return nil, v, nil, nil

	case *QuerySectionsUnprocessableEntity:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySectionsShort list sections
This API is used to query sections.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : paginated sections
*/
func (a *Client) QuerySectionsShort(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySectionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "querySections",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySectionsOK:
		return v, nil
	case *QuerySectionsNotFound:
		return nil, v
	case *QuerySectionsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateSectionShort instead.

CreateSection create a section
This API is used to create a section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : created a section



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateSection(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionCreated, *CreateSectionBadRequest, *CreateSectionNotFound, *CreateSectionConflict, *CreateSectionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSectionParams()
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
		ID:                 "createSection",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateSectionCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateSectionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateSectionNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreateSectionConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateSectionUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSectionShort create a section
This API is used to create a section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=1 (CREATE)
  *  Returns : created a section



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateSectionShort(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSectionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createSection",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSectionCreated:
		return v, nil
	case *CreateSectionBadRequest:
		return nil, v
	case *CreateSectionNotFound:
		return nil, v
	case *CreateSectionConflict:
		return nil, v
	case *CreateSectionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PurgeExpiredSectionShort instead.

PurgeExpiredSection purge expired section
This API is used to purge expired section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) PurgeExpiredSection(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionNoContent, *PurgeExpiredSectionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPurgeExpiredSectionParams()
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
		ID:                 "purgeExpiredSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/purge/expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PurgeExpiredSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PurgeExpiredSectionNoContent:
		return v, nil, nil

	case *PurgeExpiredSectionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PurgeExpiredSectionShort purge expired section
This API is used to purge expired section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) PurgeExpiredSectionShort(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPurgeExpiredSectionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "purgeExpiredSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/purge/expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PurgeExpiredSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PurgeExpiredSectionNoContent:
		return v, nil
	case *PurgeExpiredSectionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetSectionShort instead.

GetSection get a section
This API is used to get a section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : section data
*/
func (a *Client) GetSection(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionOK, *GetSectionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionParams()
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
		ID:                 "getSection",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetSectionOK:
		return v, nil, nil

	case *GetSectionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSectionShort get a section
This API is used to get a section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
  *  Returns : section data
*/
func (a *Client) GetSectionShort(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSection",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSectionOK:
		return v, nil
	case *GetSectionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateSectionShort instead.

UpdateSection update s section
This API is used to update s section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated section data



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateSection(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionOK, *UpdateSectionBadRequest, *UpdateSectionNotFound, *UpdateSectionConflict, *UpdateSectionUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionParams()
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
		ID:                 "updateSection",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateSectionBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateSectionNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateSectionConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateSectionUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSectionShort update s section
This API is used to update s section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)
  *  Returns : updated section data



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateSectionShort(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateSection",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionOK:
		return v, nil
	case *UpdateSectionBadRequest:
		return nil, v
	case *UpdateSectionNotFound:
		return nil, v
	case *UpdateSectionConflict:
		return nil, v
	case *UpdateSectionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteSectionShort instead.

DeleteSection delete a section
This API is used to delete s section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) DeleteSection(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionNoContent, *DeleteSectionNotFound, *DeleteSectionConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionParams()
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
		ID:                 "deleteSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionNoContent:
		return v, nil, nil, nil

	case *DeleteSectionNotFound:
		return nil, v, nil, nil

	case *DeleteSectionConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSectionShort delete a section
This API is used to delete s section.

Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)
*/
func (a *Client) DeleteSectionShort(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionNoContent:
		return v, nil
	case *DeleteSectionNotFound:
		return nil, v
	case *DeleteSectionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicListActiveSectionsShort instead.

PublicListActiveSections list active section contents
This API is used to list active section contents.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:STORE, action=2 (READ)
  *  Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store sections)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store sections)
  *  Returns : active section contents
*/
func (a *Client) PublicListActiveSections(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsOK, *PublicListActiveSectionsNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListActiveSectionsParams()
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
		ID:                 "publicListActiveSections",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListActiveSectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicListActiveSectionsOK:
		return v, nil, nil

	case *PublicListActiveSectionsNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListActiveSectionsShort list active section contents
This API is used to list active section contents.

Other detail info:

  * Required permission : resource=NAMESPACE:{namespace}:USER:{userId}:STORE, action=2 (READ)
  *  Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store sections)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store sections)
  *  Returns : active section contents
*/
func (a *Client) PublicListActiveSectionsShort(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListActiveSectionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicListActiveSections",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListActiveSectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListActiveSectionsOK:
		return v, nil
	case *PublicListActiveSectionsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
