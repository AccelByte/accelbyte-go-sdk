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

// NewHeapHandlerParams creates a new HeapHandlerParams object
// with the default values initialized.
func NewHeapHandlerParams() *HeapHandlerParams {
	var ()
	return &HeapHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewHeapHandlerParamsWithTimeout creates a new HeapHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewHeapHandlerParamsWithTimeout(timeout time.Duration) *HeapHandlerParams {
	var ()
	return &HeapHandlerParams{

		timeout: timeout,
	}
}

// NewHeapHandlerParamsWithContext creates a new HeapHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewHeapHandlerParamsWithContext(ctx context.Context) *HeapHandlerParams {
	var ()
	return &HeapHandlerParams{

		Context: ctx,
	}
}

// NewHeapHandlerParamsWithHTTPClient creates a new HeapHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHeapHandlerParamsWithHTTPClient(client *http.Client) *HeapHandlerParams {
	var ()
	return &HeapHandlerParams{
		HTTPClient: client,
	}
}

/*HeapHandlerParams contains all the parameters to send to the API endpoint
for the heap handler operation typically these are written to a http.Request
*/
type HeapHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the heap handler params
func (o *HeapHandlerParams) WithTimeout(timeout time.Duration) *HeapHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the heap handler params
func (o *HeapHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the heap handler params
func (o *HeapHandlerParams) WithContext(ctx context.Context) *HeapHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the heap handler params
func (o *HeapHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the heap handler params
func (o *HeapHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the heap handler params
func (o *HeapHandlerParams) WithHTTPClient(client *http.Client) *HeapHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the heap handler params
func (o *HeapHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the heap handler params
func (o *HeapHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *HeapHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *HeapHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
