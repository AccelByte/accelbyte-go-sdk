// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewSingleAdminGetContentParams creates a new SingleAdminGetContentParams object
// with the default values initialized.
func NewSingleAdminGetContentParams() *SingleAdminGetContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminGetContentParamsWithTimeout creates a new SingleAdminGetContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminGetContentParamsWithTimeout(timeout time.Duration) *SingleAdminGetContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewSingleAdminGetContentParamsWithContext creates a new SingleAdminGetContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminGetContentParamsWithContext(ctx context.Context) *SingleAdminGetContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewSingleAdminGetContentParamsWithHTTPClient creates a new SingleAdminGetContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminGetContentParamsWithHTTPClient(client *http.Client) *SingleAdminGetContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*SingleAdminGetContentParams contains all the parameters to send to the API endpoint
for the single admin get content operation typically these are written to a http.Request
*/
type SingleAdminGetContentParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the single admin get content params
func (o *SingleAdminGetContentParams) WithTimeout(timeout time.Duration) *SingleAdminGetContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin get content params
func (o *SingleAdminGetContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin get content params
func (o *SingleAdminGetContentParams) WithContext(ctx context.Context) *SingleAdminGetContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin get content params
func (o *SingleAdminGetContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin get content params
func (o *SingleAdminGetContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin get content params
func (o *SingleAdminGetContentParams) WithHTTPClient(client *http.Client) *SingleAdminGetContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin get content params
func (o *SingleAdminGetContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin get content params
func (o *SingleAdminGetContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the single admin get content params
func (o *SingleAdminGetContentParams) WithNamespace(namespace string) *SingleAdminGetContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin get content params
func (o *SingleAdminGetContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the single admin get content params
func (o *SingleAdminGetContentParams) WithLimit(limit *int64) *SingleAdminGetContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the single admin get content params
func (o *SingleAdminGetContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the single admin get content params
func (o *SingleAdminGetContentParams) WithOffset(offset *int64) *SingleAdminGetContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the single admin get content params
func (o *SingleAdminGetContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminGetContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
