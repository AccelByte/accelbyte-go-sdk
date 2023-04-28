// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// NewQueryStatsParams creates a new QueryStatsParams object
// with the default values initialized.
func NewQueryStatsParams() *QueryStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryStatsParamsWithTimeout creates a new QueryStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryStatsParamsWithTimeout(timeout time.Duration) *QueryStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryStatsParamsWithContext creates a new QueryStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryStatsParamsWithContext(ctx context.Context) *QueryStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryStatsParamsWithHTTPClient creates a new QueryStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryStatsParamsWithHTTPClient(client *http.Client) *QueryStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryStatsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryStatsParams contains all the parameters to send to the API endpoint
for the query stats operation typically these are written to a http.Request
*/
type QueryStatsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*IsGlobal
	  flag to filter global statcode

	*/
	IsGlobal *bool
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Keyword
	  keyword

	*/
	Keyword string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query stats params
func (o *QueryStatsParams) WithTimeout(timeout time.Duration) *QueryStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query stats params
func (o *QueryStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query stats params
func (o *QueryStatsParams) WithContext(ctx context.Context) *QueryStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query stats params
func (o *QueryStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query stats params
func (o *QueryStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query stats params
func (o *QueryStatsParams) WithHTTPClient(client *http.Client) *QueryStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query stats params
func (o *QueryStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query stats params
func (o *QueryStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query stats params
func (o *QueryStatsParams) WithNamespace(namespace string) *QueryStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query stats params
func (o *QueryStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsGlobal adds the isGlobal to the query stats params
func (o *QueryStatsParams) WithIsGlobal(isGlobal *bool) *QueryStatsParams {
	o.SetIsGlobal(isGlobal)
	return o
}

// SetIsGlobal adds the isGlobal to the query stats params
func (o *QueryStatsParams) SetIsGlobal(isGlobal *bool) {
	o.IsGlobal = isGlobal
}

// WithLimit adds the limit to the query stats params
func (o *QueryStatsParams) WithLimit(limit *int32) *QueryStatsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query stats params
func (o *QueryStatsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query stats params
func (o *QueryStatsParams) WithOffset(offset *int32) *QueryStatsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query stats params
func (o *QueryStatsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithKeyword adds the keyword to the query stats params
func (o *QueryStatsParams) WithKeyword(keyword string) *QueryStatsParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the query stats params
func (o *QueryStatsParams) SetKeyword(keyword string) {
	o.Keyword = keyword
}

// WriteToRequest writes these params to a swagger request
func (o *QueryStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.IsGlobal != nil {

		// query param isGlobal
		var qrIsGlobal bool
		if o.IsGlobal != nil {
			qrIsGlobal = *o.IsGlobal
		}
		qIsGlobal := swag.FormatBool(qrIsGlobal)
		if qIsGlobal != "" {
			if err := r.SetQueryParam("isGlobal", qIsGlobal); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param keyword
	qrKeyword := o.Keyword
	qKeyword := qrKeyword
	if qKeyword != "" {
		if err := r.SetQueryParam("keyword", qKeyword); err != nil {
			return err
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
