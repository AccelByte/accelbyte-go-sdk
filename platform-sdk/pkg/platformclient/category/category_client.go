// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package category

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new category API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for category API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRootCategories(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesOK, error)
	GetRootCategoriesShort(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesOK, error)
	CreateCategory(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryCreated, *CreateCategoryBadRequest, *CreateCategoryNotFound, *CreateCategoryConflict, *CreateCategoryUnprocessableEntity, error)
	CreateCategoryShort(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryCreated, error)
	ListCategoriesBasic(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicOK, error)
	ListCategoriesBasicShort(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicOK, error)
	GetCategory(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryOK, *GetCategoryNotFound, error)
	GetCategoryShort(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryOK, error)
	UpdateCategory(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryOK, *UpdateCategoryBadRequest, *UpdateCategoryNotFound, *UpdateCategoryConflict, *UpdateCategoryUnprocessableEntity, error)
	UpdateCategoryShort(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryOK, error)
	DeleteCategory(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryOK, *DeleteCategoryNotFound, *DeleteCategoryConflict, error)
	DeleteCategoryShort(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryOK, error)
	GetChildCategories(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesOK, error)
	GetChildCategoriesShort(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesOK, error)
	GetDescendantCategories(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesOK, error)
	GetDescendantCategoriesShort(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesOK, error)
	PublicGetRootCategories(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesOK, error)
	PublicGetRootCategoriesShort(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesOK, error)
	DownloadCategories(params *DownloadCategoriesParams) (*DownloadCategoriesOK, *DownloadCategoriesNotFound, error)
	DownloadCategoriesShort(params *DownloadCategoriesParams) (*DownloadCategoriesOK, error)
	PublicGetCategory(params *PublicGetCategoryParams) (*PublicGetCategoryOK, *PublicGetCategoryNotFound, error)
	PublicGetCategoryShort(params *PublicGetCategoryParams) (*PublicGetCategoryOK, error)
	PublicGetChildCategories(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesOK, error)
	PublicGetChildCategoriesShort(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesOK, error)
	PublicGetDescendantCategories(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesOK, error)
	PublicGetDescendantCategoriesShort(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetRootCategoriesShort instead.

GetRootCategories get root categories
This API is used to get root categories.

Other detail info:

  * Returns : root category data
*/
func (a *Client) GetRootCategories(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRootCategoriesParams()
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
		ID:                 "getRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRootCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRootCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRootCategoriesShort get root categories
This API is used to get root categories.

Other detail info:

  * Returns : root category data
*/
func (a *Client) GetRootCategoriesShort(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRootCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRootCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRootCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateCategoryShort instead.

CreateCategory create category
This API is used to create category.

A category is a path separated by "/". A category also has localized display names. Example:


    {

        "categoryPath": "/games",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : created category data
*/
func (a *Client) CreateCategory(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryCreated, *CreateCategoryBadRequest, *CreateCategoryNotFound, *CreateCategoryConflict, *CreateCategoryUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCategoryParams()
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
		ID:                 "createCategory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateCategoryCreated:
		return v, nil, nil, nil, nil, nil

	case *CreateCategoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *CreateCategoryNotFound:
		return nil, nil, v, nil, nil, nil

	case *CreateCategoryConflict:
		return nil, nil, nil, v, nil, nil

	case *CreateCategoryUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCategoryShort create category
This API is used to create category.

A category is a path separated by "/". A category also has localized display names. Example:


    {

        "categoryPath": "/games",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : created category data
*/
func (a *Client) CreateCategoryShort(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createCategory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCategoryCreated:
		return v, nil
	case *CreateCategoryBadRequest:
		return nil, v
	case *CreateCategoryNotFound:
		return nil, v
	case *CreateCategoryConflict:
		return nil, v
	case *CreateCategoryUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ListCategoriesBasicShort instead.

ListCategoriesBasic list categories' basic info
This API is used to list all categories' basic info of a store ordered by category path.

Other detail info:

  * Returns : list of categories' paths
*/
func (a *Client) ListCategoriesBasic(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCategoriesBasicParams()
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
		ID:                 "listCategoriesBasic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCategoriesBasicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCategoriesBasicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListCategoriesBasicShort list categories' basic info
This API is used to list all categories' basic info of a store ordered by category path.

Other detail info:

  * Returns : list of categories' paths
*/
func (a *Client) ListCategoriesBasicShort(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCategoriesBasicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "listCategoriesBasic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCategoriesBasicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCategoriesBasicOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetCategoryShort instead.

GetCategory get category
This API is used to get category by category path.

Other detail info:

  * Returns : category data
*/
func (a *Client) GetCategory(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryOK, *GetCategoryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCategoryParams()
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
		ID:                 "getCategory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetCategoryOK:
		return v, nil, nil

	case *GetCategoryNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCategoryShort get category
This API is used to get category by category path.

Other detail info:

  * Returns : category data
*/
func (a *Client) GetCategoryShort(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getCategory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCategoryOK:
		return v, nil
	case *GetCategoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateCategoryShort instead.

UpdateCategory update category
This API is used to update category.

The category update data is a category object, example as:


    {

        "storeId": "store-id",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : the updated category data
*/
func (a *Client) UpdateCategory(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryOK, *UpdateCategoryBadRequest, *UpdateCategoryNotFound, *UpdateCategoryConflict, *UpdateCategoryUnprocessableEntity, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCategoryParams()
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
		ID:                 "updateCategory",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateCategoryOK:
		return v, nil, nil, nil, nil, nil

	case *UpdateCategoryBadRequest:
		return nil, v, nil, nil, nil, nil

	case *UpdateCategoryNotFound:
		return nil, nil, v, nil, nil, nil

	case *UpdateCategoryConflict:
		return nil, nil, nil, v, nil, nil

	case *UpdateCategoryUnprocessableEntity:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCategoryShort update category
This API is used to update category.

The category update data is a category object, example as:


    {

        "storeId": "store-id",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : the updated category data
*/
func (a *Client) UpdateCategoryShort(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCategory",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCategoryOK:
		return v, nil
	case *UpdateCategoryBadRequest:
		return nil, v
	case *UpdateCategoryNotFound:
		return nil, v
	case *UpdateCategoryConflict:
		return nil, v
	case *UpdateCategoryUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteCategoryShort instead.

DeleteCategory delete category
This API is used to delete category by category path.

Other detail info:

  * Returns : the deleted category data
*/
func (a *Client) DeleteCategory(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryOK, *DeleteCategoryNotFound, *DeleteCategoryConflict, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCategoryParams()
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
		ID:                 "deleteCategory",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteCategoryOK:
		return v, nil, nil, nil

	case *DeleteCategoryNotFound:
		return nil, v, nil, nil

	case *DeleteCategoryConflict:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCategoryShort delete category
This API is used to delete category by category path.

Other detail info:

  * Returns : the deleted category data
*/
func (a *Client) DeleteCategoryShort(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteCategory",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCategoryOK:
		return v, nil
	case *DeleteCategoryNotFound:
		return nil, v
	case *DeleteCategoryConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetChildCategoriesShort instead.

GetChildCategories get child categories
This API is used to get child categories by category path.

Other detail info:

  * Returns : list of child categories data
*/
func (a *Client) GetChildCategories(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChildCategoriesParams()
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
		ID:                 "getChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChildCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChildCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetChildCategoriesShort get child categories
This API is used to get child categories by category path.

Other detail info:

  * Returns : list of child categories data
*/
func (a *Client) GetChildCategoriesShort(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChildCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChildCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChildCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetDescendantCategoriesShort instead.

GetDescendantCategories get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Returns : list of descendant categories data
*/
func (a *Client) GetDescendantCategories(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDescendantCategoriesParams()
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
		ID:                 "getDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDescendantCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDescendantCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDescendantCategoriesShort get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Returns : list of descendant categories data
*/
func (a *Client) GetDescendantCategoriesShort(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDescendantCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDescendantCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDescendantCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetRootCategoriesShort instead.

PublicGetRootCategories get root categories
This API is used to get root categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : root category data
*/
func (a *Client) PublicGetRootCategories(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRootCategoriesParams()
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
		ID:                 "publicGetRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRootCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRootCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRootCategoriesShort get root categories
This API is used to get root categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : root category data
*/
func (a *Client) PublicGetRootCategoriesShort(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRootCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRootCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRootCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DownloadCategoriesShort instead.

DownloadCategories download store's structured categories
This API is used to download store's structured categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store content)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store content)
  *  Returns : structured categories
*/
func (a *Client) DownloadCategories(params *DownloadCategoriesParams) (*DownloadCategoriesOK, *DownloadCategoriesNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadCategoriesParams()
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
		ID:                 "downloadCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DownloadCategoriesOK:
		return v, nil, nil

	case *DownloadCategoriesNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadCategoriesShort download store's structured categories
This API is used to download store's structured categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store content)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store content)
  *  Returns : structured categories
*/
func (a *Client) DownloadCategoriesShort(params *DownloadCategoriesParams) (*DownloadCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "downloadCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadCategoriesOK:
		return v, nil
	case *DownloadCategoriesNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetCategoryShort instead.

PublicGetCategory get category
This API is used to get category by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1 (CREATE)(user with this permission can view draft store category)
  *  Returns : category data
*/
func (a *Client) PublicGetCategory(params *PublicGetCategoryParams) (*PublicGetCategoryOK, *PublicGetCategoryNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCategoryParams()
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
		ID:                 "publicGetCategory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCategoryReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *PublicGetCategoryOK:
		return v, nil, nil

	case *PublicGetCategoryNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCategoryShort get category
This API is used to get category by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1 (CREATE)(user with this permission can view draft store category)
  *  Returns : category data
*/
func (a *Client) PublicGetCategoryShort(params *PublicGetCategoryParams) (*PublicGetCategoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCategoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetCategory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCategoryReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCategoryOK:
		return v, nil
	case *PublicGetCategoryNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetChildCategoriesShort instead.

PublicGetChildCategories get child categories
This API is used to get child categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of child categories data
*/
func (a *Client) PublicGetChildCategories(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChildCategoriesParams()
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
		ID:                 "publicGetChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChildCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetChildCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetChildCategoriesShort get child categories
This API is used to get child categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of child categories data
*/
func (a *Client) PublicGetChildCategoriesShort(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChildCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChildCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetChildCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use PublicGetDescendantCategoriesShort instead.

PublicGetDescendantCategories get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of descendant categories data
*/
func (a *Client) PublicGetDescendantCategories(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetDescendantCategoriesParams()
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
		ID:                 "publicGetDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetDescendantCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetDescendantCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetDescendantCategoriesShort get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of descendant categories data
*/
func (a *Client) PublicGetDescendantCategoriesShort(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetDescendantCategoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetDescendantCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetDescendantCategoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
