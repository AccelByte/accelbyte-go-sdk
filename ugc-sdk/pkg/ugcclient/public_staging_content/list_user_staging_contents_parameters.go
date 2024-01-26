// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// NewListUserStagingContentsParams creates a new ListUserStagingContentsParams object
// with the default values initialized.
func NewListUserStagingContentsParams() *ListUserStagingContentsParams {
	var ()
	return &ListUserStagingContentsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListUserStagingContentsParamsWithTimeout creates a new ListUserStagingContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListUserStagingContentsParamsWithTimeout(timeout time.Duration) *ListUserStagingContentsParams {
	var ()
	return &ListUserStagingContentsParams{

		timeout: timeout,
	}
}

// NewListUserStagingContentsParamsWithContext creates a new ListUserStagingContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListUserStagingContentsParamsWithContext(ctx context.Context) *ListUserStagingContentsParams {
	var ()
	return &ListUserStagingContentsParams{

		Context: ctx,
	}
}

// NewListUserStagingContentsParamsWithHTTPClient creates a new ListUserStagingContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListUserStagingContentsParamsWithHTTPClient(client *http.Client) *ListUserStagingContentsParams {
	var ()
	return &ListUserStagingContentsParams{
		HTTPClient: client,
	}
}

/*ListUserStagingContentsParams contains all the parameters to send to the API endpoint
for the list user staging contents operation typically these are written to a http.Request
*/
type ListUserStagingContentsParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list user staging contents params
func (o *ListUserStagingContentsParams) WithTimeout(timeout time.Duration) *ListUserStagingContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list user staging contents params
func (o *ListUserStagingContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list user staging contents params
func (o *ListUserStagingContentsParams) WithContext(ctx context.Context) *ListUserStagingContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list user staging contents params
func (o *ListUserStagingContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list user staging contents params
func (o *ListUserStagingContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list user staging contents params
func (o *ListUserStagingContentsParams) WithHTTPClient(client *http.Client) *ListUserStagingContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list user staging contents params
func (o *ListUserStagingContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list user staging contents params
func (o *ListUserStagingContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListUserStagingContentsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list user staging contents params
func (o *ListUserStagingContentsParams) WithNamespace(namespace string) *ListUserStagingContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list user staging contents params
func (o *ListUserStagingContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the list user staging contents params
func (o *ListUserStagingContentsParams) WithUserID(userID string) *ListUserStagingContentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list user staging contents params
func (o *ListUserStagingContentsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the list user staging contents params
func (o *ListUserStagingContentsParams) WithLimit(limit *int64) *ListUserStagingContentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list user staging contents params
func (o *ListUserStagingContentsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list user staging contents params
func (o *ListUserStagingContentsParams) WithOffset(offset *int64) *ListUserStagingContentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list user staging contents params
func (o *ListUserStagingContentsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the list user staging contents params
func (o *ListUserStagingContentsParams) WithSortBy(sortBy *string) *ListUserStagingContentsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list user staging contents params
func (o *ListUserStagingContentsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the list user staging contents params
func (o *ListUserStagingContentsParams) WithStatus(status *string) *ListUserStagingContentsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the list user staging contents params
func (o *ListUserStagingContentsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *ListUserStagingContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
