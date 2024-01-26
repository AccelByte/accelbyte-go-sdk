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

// NewEventIDDescriptionHandlerParams creates a new EventIDDescriptionHandlerParams object
// with the default values initialized.
func NewEventIDDescriptionHandlerParams() *EventIDDescriptionHandlerParams {
	var ()
	return &EventIDDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEventIDDescriptionHandlerParamsWithTimeout creates a new EventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEventIDDescriptionHandlerParamsWithTimeout(timeout time.Duration) *EventIDDescriptionHandlerParams {
	var ()
	return &EventIDDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewEventIDDescriptionHandlerParamsWithContext creates a new EventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewEventIDDescriptionHandlerParamsWithContext(ctx context.Context) *EventIDDescriptionHandlerParams {
	var ()
	return &EventIDDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewEventIDDescriptionHandlerParamsWithHTTPClient creates a new EventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEventIDDescriptionHandlerParamsWithHTTPClient(client *http.Client) *EventIDDescriptionHandlerParams {
	var ()
	return &EventIDDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*EventIDDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the event id description handler operation typically these are written to a http.Request
*/
type EventIDDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the event id description handler params
func (o *EventIDDescriptionHandlerParams) WithTimeout(timeout time.Duration) *EventIDDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the event id description handler params
func (o *EventIDDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the event id description handler params
func (o *EventIDDescriptionHandlerParams) WithContext(ctx context.Context) *EventIDDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the event id description handler params
func (o *EventIDDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the event id description handler params
func (o *EventIDDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the event id description handler params
func (o *EventIDDescriptionHandlerParams) WithHTTPClient(client *http.Client) *EventIDDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the event id description handler params
func (o *EventIDDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the event id description handler params
func (o *EventIDDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EventIDDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *EventIDDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
