// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tags

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

// Get the enum in AdminListTagsParams
const (
	AdminListTagsCreatedAtConstant     = "createdAt"
	AdminListTagsCreatedAtAscConstant  = "createdAt:asc"
	AdminListTagsCreatedAtDescConstant = "createdAt:desc"
	AdminListTagsNameConstant          = "name"
	AdminListTagsNameAscConstant       = "name:asc"
	AdminListTagsNameDescConstant      = "name:desc"
)

// NewAdminListTagsParams creates a new AdminListTagsParams object
// with the default values initialized.
func NewAdminListTagsParams() *AdminListTagsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListTagsParamsWithTimeout creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListTagsParamsWithTimeout(timeout time.Duration) *AdminListTagsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListTagsParamsWithContext creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListTagsParamsWithContext(ctx context.Context) *AdminListTagsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListTagsParamsWithHTTPClient creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListTagsParamsWithHTTPClient(client *http.Client) *AdminListTagsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &AdminListTagsParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListTagsParams contains all the parameters to send to the API endpoint
for the admin list tags operation typically these are written to a http.Request
*/
type AdminListTagsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit
	  default 25

	*/
	Limit *int64
	/*Offset*/
	Offset *int64
	/*Owner
	  supported parameter SERVER or CLIENT

	*/
	Owner *string
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

// WithTimeout adds the timeout to the admin list tags params
func (o *AdminListTagsParams) WithTimeout(timeout time.Duration) *AdminListTagsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list tags params
func (o *AdminListTagsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list tags params
func (o *AdminListTagsParams) WithContext(ctx context.Context) *AdminListTagsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list tags params
func (o *AdminListTagsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list tags params
func (o *AdminListTagsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list tags params
func (o *AdminListTagsParams) WithHTTPClient(client *http.Client) *AdminListTagsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list tags params
func (o *AdminListTagsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list tags params
func (o *AdminListTagsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListTagsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list tags params
func (o *AdminListTagsParams) WithNamespace(namespace string) *AdminListTagsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list tags params
func (o *AdminListTagsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list tags params
func (o *AdminListTagsParams) WithLimit(limit *int64) *AdminListTagsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list tags params
func (o *AdminListTagsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list tags params
func (o *AdminListTagsParams) WithOffset(offset *int64) *AdminListTagsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list tags params
func (o *AdminListTagsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOwner adds the owner to the admin list tags params
func (o *AdminListTagsParams) WithOwner(owner *string) *AdminListTagsParams {
	o.SetOwner(owner)
	return o
}

// SetOwner adds the owner to the admin list tags params
func (o *AdminListTagsParams) SetOwner(owner *string) {
	o.Owner = owner
}

// WithSortBy adds the sortBy to the admin list tags params
func (o *AdminListTagsParams) WithSortBy(sortBy *string) *AdminListTagsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list tags params
func (o *AdminListTagsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListTagsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.Owner != nil {

		// query param owner
		var qrOwner string
		if o.Owner != nil {
			qrOwner = *o.Owner
		}
		qOwner := qrOwner
		if qOwner != "" {
			if err := r.SetQueryParam("owner", qOwner); err != nil {
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
