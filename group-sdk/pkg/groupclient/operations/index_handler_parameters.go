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

// NewIndexHandlerParams creates a new IndexHandlerParams object
// with the default values initialized.
func NewIndexHandlerParams() *IndexHandlerParams {
	var ()
	return &IndexHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewIndexHandlerParamsWithTimeout creates a new IndexHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewIndexHandlerParamsWithTimeout(timeout time.Duration) *IndexHandlerParams {
	var ()
	return &IndexHandlerParams{

		timeout: timeout,
	}
}

// NewIndexHandlerParamsWithContext creates a new IndexHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewIndexHandlerParamsWithContext(ctx context.Context) *IndexHandlerParams {
	var ()
	return &IndexHandlerParams{

		Context: ctx,
	}
}

// NewIndexHandlerParamsWithHTTPClient creates a new IndexHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewIndexHandlerParamsWithHTTPClient(client *http.Client) *IndexHandlerParams {
	var ()
	return &IndexHandlerParams{
		HTTPClient: client,
	}
}

/*IndexHandlerParams contains all the parameters to send to the API endpoint
for the index handler operation typically these are written to a http.Request
*/
type IndexHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the index handler params
func (o *IndexHandlerParams) WithTimeout(timeout time.Duration) *IndexHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the index handler params
func (o *IndexHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the index handler params
func (o *IndexHandlerParams) WithContext(ctx context.Context) *IndexHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the index handler params
func (o *IndexHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the index handler params
func (o *IndexHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the index handler params
func (o *IndexHandlerParams) WithHTTPClient(client *http.Client) *IndexHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the index handler params
func (o *IndexHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the index handler params
func (o *IndexHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *IndexHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *IndexHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
