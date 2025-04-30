// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_download_count_v2

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

// NewPublicListContentDownloaderV2Params creates a new PublicListContentDownloaderV2Params object
// with the default values initialized.
func NewPublicListContentDownloaderV2Params() *PublicListContentDownloaderV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentDownloaderV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListContentDownloaderV2ParamsWithTimeout creates a new PublicListContentDownloaderV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListContentDownloaderV2ParamsWithTimeout(timeout time.Duration) *PublicListContentDownloaderV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentDownloaderV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListContentDownloaderV2ParamsWithContext creates a new PublicListContentDownloaderV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListContentDownloaderV2ParamsWithContext(ctx context.Context) *PublicListContentDownloaderV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentDownloaderV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListContentDownloaderV2ParamsWithHTTPClient creates a new PublicListContentDownloaderV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListContentDownloaderV2ParamsWithHTTPClient(client *http.Client) *PublicListContentDownloaderV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
		sortByDefault = string("createdTime:desc")
	)
	return &PublicListContentDownloaderV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListContentDownloaderV2Params contains all the parameters to send to the API endpoint
for the public list content downloader v2 operation typically these are written to a http.Request
*/
type PublicListContentDownloaderV2Params struct {

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
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*SortBy
	    sort the result.

	available value:
	- *createdTime*
	- *createdTime:desc*
	- *createdTime:asc*

	*/
	SortBy *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithTimeout(timeout time.Duration) *PublicListContentDownloaderV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithContext(ctx context.Context) *PublicListContentDownloaderV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithHTTPClient(client *http.Client) *PublicListContentDownloaderV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListContentDownloaderV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithContentID(contentID string) *PublicListContentDownloaderV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithNamespace(namespace string) *PublicListContentDownloaderV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithLimit(limit *int64) *PublicListContentDownloaderV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithOffset(offset *int64) *PublicListContentDownloaderV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithSortBy(sortBy *string) *PublicListContentDownloaderV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithUserID adds the userID to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) WithUserID(userID *string) *PublicListContentDownloaderV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list content downloader v2 params
func (o *PublicListContentDownloaderV2Params) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListContentDownloaderV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
