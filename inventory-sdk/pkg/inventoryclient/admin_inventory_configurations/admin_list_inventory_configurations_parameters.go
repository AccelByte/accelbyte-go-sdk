// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventory_configurations

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

// Get the enum in AdminListInventoryConfigurationsParams
const (
	AdminListInventoryConfigurationsCodeConstant          = "code"
	AdminListInventoryConfigurationsCodeAscConstant       = "code:asc"
	AdminListInventoryConfigurationsCodeDescConstant      = "code:desc"
	AdminListInventoryConfigurationsCreatedAtConstant     = "createdAt"
	AdminListInventoryConfigurationsCreatedAtAscConstant  = "createdAt:asc"
	AdminListInventoryConfigurationsCreatedAtDescConstant = "createdAt:desc"
	AdminListInventoryConfigurationsUpdatedAtConstant     = "updatedAt"
	AdminListInventoryConfigurationsUpdatedAtAscConstant  = "updatedAt:asc"
	AdminListInventoryConfigurationsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewAdminListInventoryConfigurationsParams creates a new AdminListInventoryConfigurationsParams object
// with the default values initialized.
func NewAdminListInventoryConfigurationsParams() *AdminListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListInventoryConfigurationsParamsWithTimeout creates a new AdminListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListInventoryConfigurationsParamsWithTimeout(timeout time.Duration) *AdminListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListInventoryConfigurationsParamsWithContext creates a new AdminListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListInventoryConfigurationsParamsWithContext(ctx context.Context) *AdminListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListInventoryConfigurationsParamsWithHTTPClient creates a new AdminListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListInventoryConfigurationsParamsWithHTTPClient(client *http.Client) *AdminListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListInventoryConfigurationsParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListInventoryConfigurationsParams contains all the parameters to send to the API endpoint
for the admin list inventory configurations operation typically these are written to a http.Request
*/
type AdminListInventoryConfigurationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Code
	  will partially match inventoryConfigurationCode

	*/
	Code *string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithTimeout(timeout time.Duration) *AdminListInventoryConfigurationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithContext(ctx context.Context) *AdminListInventoryConfigurationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithHTTPClient(client *http.Client) *AdminListInventoryConfigurationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListInventoryConfigurationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithNamespace(namespace string) *AdminListInventoryConfigurationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCode adds the code to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithCode(code *string) *AdminListInventoryConfigurationsParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetCode(code *string) {
	o.Code = code
}

// WithLimit adds the limit to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithLimit(limit *int64) *AdminListInventoryConfigurationsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithOffset(offset *int64) *AdminListInventoryConfigurationsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) WithSortBy(sortBy *string) *AdminListInventoryConfigurationsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list inventory configurations params
func (o *AdminListInventoryConfigurationsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListInventoryConfigurationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
