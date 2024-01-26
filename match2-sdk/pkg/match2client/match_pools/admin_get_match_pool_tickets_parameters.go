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

// NewAdminGetMatchPoolTicketsParams creates a new AdminGetMatchPoolTicketsParams object
// with the default values initialized.
func NewAdminGetMatchPoolTicketsParams() *AdminGetMatchPoolTicketsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetMatchPoolTicketsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetMatchPoolTicketsParamsWithTimeout creates a new AdminGetMatchPoolTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetMatchPoolTicketsParamsWithTimeout(timeout time.Duration) *AdminGetMatchPoolTicketsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetMatchPoolTicketsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetMatchPoolTicketsParamsWithContext creates a new AdminGetMatchPoolTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetMatchPoolTicketsParamsWithContext(ctx context.Context) *AdminGetMatchPoolTicketsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetMatchPoolTicketsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetMatchPoolTicketsParamsWithHTTPClient creates a new AdminGetMatchPoolTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetMatchPoolTicketsParamsWithHTTPClient(client *http.Client) *AdminGetMatchPoolTicketsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetMatchPoolTicketsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetMatchPoolTicketsParams contains all the parameters to send to the API endpoint
for the admin get match pool tickets operation typically these are written to a http.Request
*/
type AdminGetMatchPoolTicketsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Pool
	  Name of the match pool

	*/
	Pool string
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithTimeout(timeout time.Duration) *AdminGetMatchPoolTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithContext(ctx context.Context) *AdminGetMatchPoolTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithHTTPClient(client *http.Client) *AdminGetMatchPoolTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetMatchPoolTicketsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithNamespace(namespace string) *AdminGetMatchPoolTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithPool(pool string) *AdminGetMatchPoolTicketsParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetPool(pool string) {
	o.Pool = pool
}

// WithLimit adds the limit to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithLimit(limit *int64) *AdminGetMatchPoolTicketsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) WithOffset(offset *int64) *AdminGetMatchPoolTicketsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get match pool tickets params
func (o *AdminGetMatchPoolTicketsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetMatchPoolTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param pool
	if err := r.SetPathParam("pool", o.Pool); err != nil {
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
