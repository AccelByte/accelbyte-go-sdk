// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_descriptions

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

// NewUXNameDescriptionHandlerParams creates a new UXNameDescriptionHandlerParams object
// with the default values initialized.
func NewUXNameDescriptionHandlerParams() *UXNameDescriptionHandlerParams {
	var ()
	return &UXNameDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUXNameDescriptionHandlerParamsWithTimeout creates a new UXNameDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUXNameDescriptionHandlerParamsWithTimeout(timeout time.Duration) *UXNameDescriptionHandlerParams {
	var ()
	return &UXNameDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewUXNameDescriptionHandlerParamsWithContext creates a new UXNameDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewUXNameDescriptionHandlerParamsWithContext(ctx context.Context) *UXNameDescriptionHandlerParams {
	var ()
	return &UXNameDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewUXNameDescriptionHandlerParamsWithHTTPClient creates a new UXNameDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUXNameDescriptionHandlerParamsWithHTTPClient(client *http.Client) *UXNameDescriptionHandlerParams {
	var ()
	return &UXNameDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*UXNameDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the ux name description handler operation typically these are written to a http.Request
*/
type UXNameDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) WithTimeout(timeout time.Duration) *UXNameDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) WithContext(ctx context.Context) *UXNameDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) WithHTTPClient(client *http.Client) *UXNameDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the ux name description handler params
func (o *UXNameDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UXNameDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *UXNameDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
