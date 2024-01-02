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

// NewAdminListUserStagingContentsParams creates a new AdminListUserStagingContentsParams object
// with the default values initialized.
func NewAdminListUserStagingContentsParams() *AdminListUserStagingContentsParams {
	var ()
	return &AdminListUserStagingContentsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUserStagingContentsParamsWithTimeout creates a new AdminListUserStagingContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUserStagingContentsParamsWithTimeout(timeout time.Duration) *AdminListUserStagingContentsParams {
	var ()
	return &AdminListUserStagingContentsParams{

		timeout: timeout,
	}
}

// NewAdminListUserStagingContentsParamsWithContext creates a new AdminListUserStagingContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUserStagingContentsParamsWithContext(ctx context.Context) *AdminListUserStagingContentsParams {
	var ()
	return &AdminListUserStagingContentsParams{

		Context: ctx,
	}
}

// NewAdminListUserStagingContentsParamsWithHTTPClient creates a new AdminListUserStagingContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUserStagingContentsParamsWithHTTPClient(client *http.Client) *AdminListUserStagingContentsParams {
	var ()
	return &AdminListUserStagingContentsParams{
		HTTPClient: client,
	}
}

/*AdminListUserStagingContentsParams contains all the parameters to send to the API endpoint
for the admin list user staging contents operation typically these are written to a http.Request
*/
type AdminListUserStagingContentsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
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

// WithTimeout adds the timeout to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithTimeout(timeout time.Duration) *AdminListUserStagingContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithContext(ctx context.Context) *AdminListUserStagingContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithHTTPClient(client *http.Client) *AdminListUserStagingContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithNamespace(namespace string) *AdminListUserStagingContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithUserID(userID string) *AdminListUserStagingContentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithLimit(limit *int64) *AdminListUserStagingContentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithOffset(offset *int64) *AdminListUserStagingContentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithSortBy(sortBy *string) *AdminListUserStagingContentsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) WithStatus(status *string) *AdminListUserStagingContentsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin list user staging contents params
func (o *AdminListUserStagingContentsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUserStagingContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
