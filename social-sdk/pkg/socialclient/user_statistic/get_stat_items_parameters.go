// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewGetStatItemsParams creates a new GetStatItemsParams object
// with the default values initialized.
func NewGetStatItemsParams() *GetStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("value:desc")
	)
	return &GetStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatItemsParamsWithTimeout creates a new GetStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatItemsParamsWithTimeout(timeout time.Duration) *GetStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("value:desc")
	)
	return &GetStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewGetStatItemsParamsWithContext creates a new GetStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatItemsParamsWithContext(ctx context.Context) *GetStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("value:desc")
	)
	return &GetStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewGetStatItemsParamsWithHTTPClient creates a new GetStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatItemsParamsWithHTTPClient(client *http.Client) *GetStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = string("value:desc")
	)
	return &GetStatItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*GetStatItemsParams contains all the parameters to send to the API endpoint
for the get stat items operation typically these are written to a http.Request
*/
type GetStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat Code

	*/
	StatCode string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*SortBy
	  default is value:desc, allowed values: [value, value:asc, value:desc]

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get stat items params
func (o *GetStatItemsParams) WithTimeout(timeout time.Duration) *GetStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat items params
func (o *GetStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat items params
func (o *GetStatItemsParams) WithContext(ctx context.Context) *GetStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat items params
func (o *GetStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stat items params
func (o *GetStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stat items params
func (o *GetStatItemsParams) WithHTTPClient(client *http.Client) *GetStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat items params
func (o *GetStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stat items params
func (o *GetStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get stat items params
func (o *GetStatItemsParams) WithNamespace(namespace string) *GetStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat items params
func (o *GetStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the get stat items params
func (o *GetStatItemsParams) WithStatCode(statCode string) *GetStatItemsParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the get stat items params
func (o *GetStatItemsParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithLimit adds the limit to the get stat items params
func (o *GetStatItemsParams) WithLimit(limit *int32) *GetStatItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get stat items params
func (o *GetStatItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get stat items params
func (o *GetStatItemsParams) WithOffset(offset *int32) *GetStatItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get stat items params
func (o *GetStatItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get stat items params
func (o *GetStatItemsParams) WithSortBy(sortBy *string) *GetStatItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get stat items params
func (o *GetStatItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
		return err
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
