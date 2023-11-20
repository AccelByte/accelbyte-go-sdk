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

// NewAdminGetContentByChannelIDV2Params creates a new AdminGetContentByChannelIDV2Params object
// with the default values initialized.
func NewAdminGetContentByChannelIDV2Params() *AdminGetContentByChannelIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByChannelIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetContentByChannelIDV2ParamsWithTimeout creates a new AdminGetContentByChannelIDV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetContentByChannelIDV2ParamsWithTimeout(timeout time.Duration) *AdminGetContentByChannelIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByChannelIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminGetContentByChannelIDV2ParamsWithContext creates a new AdminGetContentByChannelIDV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetContentByChannelIDV2ParamsWithContext(ctx context.Context) *AdminGetContentByChannelIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByChannelIDV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminGetContentByChannelIDV2ParamsWithHTTPClient creates a new AdminGetContentByChannelIDV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetContentByChannelIDV2ParamsWithHTTPClient(client *http.Client) *AdminGetContentByChannelIDV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &AdminGetContentByChannelIDV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminGetContentByChannelIDV2Params contains all the parameters to send to the API endpoint
for the admin get content by channel idv2 operation typically these are written to a http.Request
*/
type AdminGetContentByChannelIDV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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
	<li>updatedTime, updatedTime:desc, updatedTime:asc</li>
	</ul>

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithTimeout(timeout time.Duration) *AdminGetContentByChannelIDV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithContext(ctx context.Context) *AdminGetContentByChannelIDV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithHTTPClient(client *http.Client) *AdminGetContentByChannelIDV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelID adds the channelID to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithChannelID(channelID string) *AdminGetContentByChannelIDV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithNamespace(namespace string) *AdminGetContentByChannelIDV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithLimit(limit *int64) *AdminGetContentByChannelIDV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithOffset(offset *int64) *AdminGetContentByChannelIDV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) WithSortBy(sortBy *string) *AdminGetContentByChannelIDV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin get content by channel idv2 params
func (o *AdminGetContentByChannelIDV2Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetContentByChannelIDV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

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
