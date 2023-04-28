// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

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

// NewMatchPoolListParams creates a new MatchPoolListParams object
// with the default values initialized.
func NewMatchPoolListParams() *MatchPoolListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &MatchPoolListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewMatchPoolListParamsWithTimeout creates a new MatchPoolListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMatchPoolListParamsWithTimeout(timeout time.Duration) *MatchPoolListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &MatchPoolListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewMatchPoolListParamsWithContext creates a new MatchPoolListParams object
// with the default values initialized, and the ability to set a context for a request
func NewMatchPoolListParamsWithContext(ctx context.Context) *MatchPoolListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &MatchPoolListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewMatchPoolListParamsWithHTTPClient creates a new MatchPoolListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMatchPoolListParamsWithHTTPClient(client *http.Client) *MatchPoolListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &MatchPoolListParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*MatchPoolListParams contains all the parameters to send to the API endpoint
for the match pool list operation typically these are written to a http.Request
*/
type MatchPoolListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the match pool list params
func (o *MatchPoolListParams) WithTimeout(timeout time.Duration) *MatchPoolListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the match pool list params
func (o *MatchPoolListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the match pool list params
func (o *MatchPoolListParams) WithContext(ctx context.Context) *MatchPoolListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the match pool list params
func (o *MatchPoolListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the match pool list params
func (o *MatchPoolListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the match pool list params
func (o *MatchPoolListParams) WithHTTPClient(client *http.Client) *MatchPoolListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the match pool list params
func (o *MatchPoolListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the match pool list params
func (o *MatchPoolListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the match pool list params
func (o *MatchPoolListParams) WithNamespace(namespace string) *MatchPoolListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the match pool list params
func (o *MatchPoolListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the match pool list params
func (o *MatchPoolListParams) WithLimit(limit *int64) *MatchPoolListParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the match pool list params
func (o *MatchPoolListParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the match pool list params
func (o *MatchPoolListParams) WithOffset(offset *int64) *MatchPoolListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the match pool list params
func (o *MatchPoolListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *MatchPoolListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
