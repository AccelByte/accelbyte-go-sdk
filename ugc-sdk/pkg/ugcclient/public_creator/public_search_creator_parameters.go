// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_creator

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

// NewPublicSearchCreatorParams creates a new PublicSearchCreatorParams object
// with the default values initialized.
func NewPublicSearchCreatorParams() *PublicSearchCreatorParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchCreatorParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSearchCreatorParamsWithTimeout creates a new PublicSearchCreatorParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSearchCreatorParamsWithTimeout(timeout time.Duration) *PublicSearchCreatorParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchCreatorParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicSearchCreatorParamsWithContext creates a new PublicSearchCreatorParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSearchCreatorParamsWithContext(ctx context.Context) *PublicSearchCreatorParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchCreatorParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicSearchCreatorParamsWithHTTPClient creates a new PublicSearchCreatorParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSearchCreatorParamsWithHTTPClient(client *http.Client) *PublicSearchCreatorParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchCreatorParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicSearchCreatorParams contains all the parameters to send to the API endpoint
for the public search creator operation typically these are written to a http.Request
*/
type PublicSearchCreatorParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
	/*Orderby
	  sorting order: asc, desc. default=desc

	*/
	Orderby *string
	/*Sortby
	  sorting criteria: followCount, totalLikedContent. default=object id

	*/
	Sortby *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public search creator params
func (o *PublicSearchCreatorParams) WithTimeout(timeout time.Duration) *PublicSearchCreatorParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public search creator params
func (o *PublicSearchCreatorParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public search creator params
func (o *PublicSearchCreatorParams) WithContext(ctx context.Context) *PublicSearchCreatorParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public search creator params
func (o *PublicSearchCreatorParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public search creator params
func (o *PublicSearchCreatorParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public search creator params
func (o *PublicSearchCreatorParams) WithHTTPClient(client *http.Client) *PublicSearchCreatorParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public search creator params
func (o *PublicSearchCreatorParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public search creator params
func (o *PublicSearchCreatorParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public search creator params
func (o *PublicSearchCreatorParams) WithNamespace(namespace string) *PublicSearchCreatorParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public search creator params
func (o *PublicSearchCreatorParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public search creator params
func (o *PublicSearchCreatorParams) WithLimit(limit *int64) *PublicSearchCreatorParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public search creator params
func (o *PublicSearchCreatorParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public search creator params
func (o *PublicSearchCreatorParams) WithOffset(offset *int64) *PublicSearchCreatorParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public search creator params
func (o *PublicSearchCreatorParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrderby adds the orderby to the public search creator params
func (o *PublicSearchCreatorParams) WithOrderby(orderby *string) *PublicSearchCreatorParams {
	o.SetOrderby(orderby)
	return o
}

// SetOrderby adds the orderby to the public search creator params
func (o *PublicSearchCreatorParams) SetOrderby(orderby *string) {
	o.Orderby = orderby
}

// WithSortby adds the sortby to the public search creator params
func (o *PublicSearchCreatorParams) WithSortby(sortby *string) *PublicSearchCreatorParams {
	o.SetSortby(sortby)
	return o
}

// SetSortby adds the sortby to the public search creator params
func (o *PublicSearchCreatorParams) SetSortby(sortby *string) {
	o.Sortby = sortby
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSearchCreatorParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Orderby != nil {

		// query param orderby
		var qrOrderby string
		if o.Orderby != nil {
			qrOrderby = *o.Orderby
		}
		qOrderby := qrOrderby
		if qOrderby != "" {
			if err := r.SetQueryParam("orderby", qOrderby); err != nil {
				return err
			}
		}

	}

	if o.Sortby != nil {

		// query param sortby
		var qrSortby string
		if o.Sortby != nil {
			qrSortby = *o.Sortby
		}
		qSortby := qrSortby
		if qSortby != "" {
			if err := r.SetQueryParam("sortby", qSortby); err != nil {
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
