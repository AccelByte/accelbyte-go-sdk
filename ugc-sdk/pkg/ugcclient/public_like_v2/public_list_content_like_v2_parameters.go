// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_like_v2

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

// NewPublicListContentLikeV2Params creates a new PublicListContentLikeV2Params object
// with the default values initialized.
func NewPublicListContentLikeV2Params() *PublicListContentLikeV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentLikeV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListContentLikeV2ParamsWithTimeout creates a new PublicListContentLikeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListContentLikeV2ParamsWithTimeout(timeout time.Duration) *PublicListContentLikeV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentLikeV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListContentLikeV2ParamsWithContext creates a new PublicListContentLikeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListContentLikeV2ParamsWithContext(ctx context.Context) *PublicListContentLikeV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentLikeV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListContentLikeV2ParamsWithHTTPClient creates a new PublicListContentLikeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListContentLikeV2ParamsWithHTTPClient(client *http.Client) *PublicListContentLikeV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentLikeV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListContentLikeV2Params contains all the parameters to send to the API endpoint
for the public list content like v2 operation typically these are written to a http.Request
*/
type PublicListContentLikeV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  maximum result of data

	*/
	Limit *int64
	/*Offset
	  offset

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
}

// WithTimeout adds the timeout to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithTimeout(timeout time.Duration) *PublicListContentLikeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithContext(ctx context.Context) *PublicListContentLikeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithHTTPClient(client *http.Client) *PublicListContentLikeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithContentID(contentID string) *PublicListContentLikeV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithNamespace(namespace string) *PublicListContentLikeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithLimit(limit *int64) *PublicListContentLikeV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithOffset(offset *int64) *PublicListContentLikeV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list content like v2 params
func (o *PublicListContentLikeV2Params) WithSortBy(sortBy *string) *PublicListContentLikeV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list content like v2 params
func (o *PublicListContentLikeV2Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListContentLikeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
