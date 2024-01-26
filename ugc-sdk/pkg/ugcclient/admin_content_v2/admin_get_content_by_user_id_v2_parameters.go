// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminGetContentByUserIDV2Params creates a new AdminGetContentByUserIDV2Params object
// with the default values initialized.
func NewAdminGetContentByUserIDV2Params() *AdminGetContentByUserIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByUserIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetContentByUserIDV2ParamsWithTimeout creates a new AdminGetContentByUserIDV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetContentByUserIDV2ParamsWithTimeout(timeout time.Duration) *AdminGetContentByUserIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByUserIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminGetContentByUserIDV2ParamsWithContext creates a new AdminGetContentByUserIDV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetContentByUserIDV2ParamsWithContext(ctx context.Context) *AdminGetContentByUserIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByUserIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminGetContentByUserIDV2ParamsWithHTTPClient creates a new AdminGetContentByUserIDV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetContentByUserIDV2ParamsWithHTTPClient(client *http.Client) *AdminGetContentByUserIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByUserIDV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminGetContentByUserIDV2Params contains all the parameters to send to the API endpoint
for the admin get content by user idv2 operation typically these are written to a http.Request
*/
type AdminGetContentByUserIDV2Params struct {

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
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*SortBy
	    default value: createdTime:desc.

	available value:
	<ul>
	<li>createdTime, createdTime:desc, createdTime:asc</li>
	</ul>

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithTimeout(timeout time.Duration) *AdminGetContentByUserIDV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithContext(ctx context.Context) *AdminGetContentByUserIDV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithHTTPClient(client *http.Client) *AdminGetContentByUserIDV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetContentByUserIDV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithNamespace(namespace string) *AdminGetContentByUserIDV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithUserID(userID string) *AdminGetContentByUserIDV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithLimit(limit *int64) *AdminGetContentByUserIDV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithOffset(offset *int64) *AdminGetContentByUserIDV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) WithSortBy(sortBy *string) *AdminGetContentByUserIDV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin get content by user idv2 params
func (o *AdminGetContentByUserIDV2Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetContentByUserIDV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
