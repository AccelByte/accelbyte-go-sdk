// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_staging_content

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

// NewAdminListStagingContentsParams creates a new AdminListStagingContentsParams object
// with the default values initialized.
func NewAdminListStagingContentsParams() *AdminListStagingContentsParams {
	var ()
	return &AdminListStagingContentsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListStagingContentsParamsWithTimeout creates a new AdminListStagingContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListStagingContentsParamsWithTimeout(timeout time.Duration) *AdminListStagingContentsParams {
	var ()
	return &AdminListStagingContentsParams{

		timeout: timeout,
	}
}

// NewAdminListStagingContentsParamsWithContext creates a new AdminListStagingContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListStagingContentsParamsWithContext(ctx context.Context) *AdminListStagingContentsParams {
	var ()
	return &AdminListStagingContentsParams{

		Context: ctx,
	}
}

// NewAdminListStagingContentsParamsWithHTTPClient creates a new AdminListStagingContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListStagingContentsParamsWithHTTPClient(client *http.Client) *AdminListStagingContentsParams {
	var ()
	return &AdminListStagingContentsParams{
		HTTPClient: client,
	}
}

/*AdminListStagingContentsParams contains all the parameters to send to the API endpoint
for the admin list staging contents operation typically these are written to a http.Request
*/
type AdminListStagingContentsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of configs per page

	*/
	Limit *int64
	/*Offset
	  offset number to retrieve

	*/
	Offset *int64
	/*SortBy
	    default value: createdTime:desc
					available value:
					<ul>
						<li>createdTime, createdTime:desc, createdTime:asc</li>
						<li>updatedTime, updatedTime:desc, updatedTime:asc</li>
					</ul>

	*/
	SortBy *string
	/*Status
	  filter by content status [<i>PENDING</i>, <i>REJECTED</i>]

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithTimeout(timeout time.Duration) *AdminListStagingContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithContext(ctx context.Context) *AdminListStagingContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithHTTPClient(client *http.Client) *AdminListStagingContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithNamespace(namespace string) *AdminListStagingContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithLimit(limit *int64) *AdminListStagingContentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithOffset(offset *int64) *AdminListStagingContentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithSortBy(sortBy *string) *AdminListStagingContentsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the admin list staging contents params
func (o *AdminListStagingContentsParams) WithStatus(status *string) *AdminListStagingContentsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin list staging contents params
func (o *AdminListStagingContentsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListStagingContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
