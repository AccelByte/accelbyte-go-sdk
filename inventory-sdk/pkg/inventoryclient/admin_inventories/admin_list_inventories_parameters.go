// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Get the enum in AdminListInventoriesParams
const (
	AdminListInventoriesCreatedAtConstant                      = "createdAt"
	AdminListInventoriesCreatedAtAscConstant                   = "createdAt:asc"
	AdminListInventoriesCreatedAtDescConstant                  = "createdAt:desc"
	AdminListInventoriesInventoryConfigurationCodeConstant     = "inventoryConfigurationCode"
	AdminListInventoriesInventoryConfigurationCodeAscConstant  = "inventoryConfigurationCode:asc"
	AdminListInventoriesInventoryConfigurationCodeDescConstant = "inventoryConfigurationCode:desc"
	AdminListInventoriesUpdatedAtConstant                      = "updatedAt"
	AdminListInventoriesUpdatedAtAscConstant                   = "updatedAt:asc"
	AdminListInventoriesUpdatedAtDescConstant                  = "updatedAt:desc"
)

// NewAdminListInventoriesParams creates a new AdminListInventoriesParams object
// with the default values initialized.
func NewAdminListInventoriesParams() *AdminListInventoriesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoriesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListInventoriesParamsWithTimeout creates a new AdminListInventoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListInventoriesParamsWithTimeout(timeout time.Duration) *AdminListInventoriesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoriesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListInventoriesParamsWithContext creates a new AdminListInventoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListInventoriesParamsWithContext(ctx context.Context) *AdminListInventoriesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoriesParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListInventoriesParamsWithHTTPClient creates a new AdminListInventoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListInventoriesParamsWithHTTPClient(client *http.Client) *AdminListInventoriesParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoriesParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListInventoriesParams contains all the parameters to send to the API endpoint
for the admin list inventories operation typically these are written to a http.Request
*/
type AdminListInventoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*InventoryConfigurationCode
	  InventoryConfigurationCode

	*/
	InventoryConfigurationCode *string
	/*Limit
	  default 25

	*/
	Limit *int64
	/*Offset*/
	Offset *int64
	/*SortBy
	  Only support one level of sortBy; default createdAt

	*/
	SortBy *string
	/*UserID
	  UserID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list inventories params
func (o *AdminListInventoriesParams) WithTimeout(timeout time.Duration) *AdminListInventoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list inventories params
func (o *AdminListInventoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list inventories params
func (o *AdminListInventoriesParams) WithContext(ctx context.Context) *AdminListInventoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list inventories params
func (o *AdminListInventoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list inventories params
func (o *AdminListInventoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list inventories params
func (o *AdminListInventoriesParams) WithHTTPClient(client *http.Client) *AdminListInventoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list inventories params
func (o *AdminListInventoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list inventories params
func (o *AdminListInventoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list inventories params
func (o *AdminListInventoriesParams) WithNamespace(namespace string) *AdminListInventoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list inventories params
func (o *AdminListInventoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithInventoryConfigurationCode adds the inventoryConfigurationCode to the admin list inventories params
func (o *AdminListInventoriesParams) WithInventoryConfigurationCode(inventoryConfigurationCode *string) *AdminListInventoriesParams {
	o.SetInventoryConfigurationCode(inventoryConfigurationCode)
	return o
}

// SetInventoryConfigurationCode adds the inventoryConfigurationCode to the admin list inventories params
func (o *AdminListInventoriesParams) SetInventoryConfigurationCode(inventoryConfigurationCode *string) {
	o.InventoryConfigurationCode = inventoryConfigurationCode
}

// WithLimit adds the limit to the admin list inventories params
func (o *AdminListInventoriesParams) WithLimit(limit *int64) *AdminListInventoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list inventories params
func (o *AdminListInventoriesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list inventories params
func (o *AdminListInventoriesParams) WithOffset(offset *int64) *AdminListInventoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list inventories params
func (o *AdminListInventoriesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list inventories params
func (o *AdminListInventoriesParams) WithSortBy(sortBy *string) *AdminListInventoriesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list inventories params
func (o *AdminListInventoriesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithUserID adds the userID to the admin list inventories params
func (o *AdminListInventoriesParams) WithUserID(userID *string) *AdminListInventoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list inventories params
func (o *AdminListInventoriesParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListInventoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.InventoryConfigurationCode != nil {

		// query param inventoryConfigurationCode
		var qrInventoryConfigurationCode string
		if o.InventoryConfigurationCode != nil {
			qrInventoryConfigurationCode = *o.InventoryConfigurationCode
		}
		qInventoryConfigurationCode := qrInventoryConfigurationCode
		if qInventoryConfigurationCode != "" {
			if err := r.SetQueryParam("inventoryConfigurationCode", qInventoryConfigurationCode); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
