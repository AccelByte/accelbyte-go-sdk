// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package operations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewSymbolHandlerParams creates a new SymbolHandlerParams object
// with the default values initialized.
func NewSymbolHandlerParams() *SymbolHandlerParams {
	var ()
	return &SymbolHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSymbolHandlerParamsWithTimeout creates a new SymbolHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSymbolHandlerParamsWithTimeout(timeout time.Duration) *SymbolHandlerParams {
	var ()
	return &SymbolHandlerParams{

		timeout: timeout,
	}
}

// NewSymbolHandlerParamsWithContext creates a new SymbolHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSymbolHandlerParamsWithContext(ctx context.Context) *SymbolHandlerParams {
	var ()
	return &SymbolHandlerParams{

		Context: ctx,
	}
}

// NewSymbolHandlerParamsWithHTTPClient creates a new SymbolHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSymbolHandlerParamsWithHTTPClient(client *http.Client) *SymbolHandlerParams {
	var ()
	return &SymbolHandlerParams{
		HTTPClient: client,
	}
}

/*SymbolHandlerParams contains all the parameters to send to the API endpoint
for the symbol handler operation typically these are written to a http.Request
*/
type SymbolHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the symbol handler params
func (o *SymbolHandlerParams) WithTimeout(timeout time.Duration) *SymbolHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the symbol handler params
func (o *SymbolHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the symbol handler params
func (o *SymbolHandlerParams) WithContext(ctx context.Context) *SymbolHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the symbol handler params
func (o *SymbolHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the symbol handler params
func (o *SymbolHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the symbol handler params
func (o *SymbolHandlerParams) WithHTTPClient(client *http.Client) *SymbolHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the symbol handler params
func (o *SymbolHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the symbol handler params
func (o *SymbolHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SymbolHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *SymbolHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
