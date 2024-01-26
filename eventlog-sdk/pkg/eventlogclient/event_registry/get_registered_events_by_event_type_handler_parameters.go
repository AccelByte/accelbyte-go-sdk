// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_registry

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

// NewGetRegisteredEventsByEventTypeHandlerParams creates a new GetRegisteredEventsByEventTypeHandlerParams object
// with the default values initialized.
func NewGetRegisteredEventsByEventTypeHandlerParams() *GetRegisteredEventsByEventTypeHandlerParams {
	var ()
	return &GetRegisteredEventsByEventTypeHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRegisteredEventsByEventTypeHandlerParamsWithTimeout creates a new GetRegisteredEventsByEventTypeHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRegisteredEventsByEventTypeHandlerParamsWithTimeout(timeout time.Duration) *GetRegisteredEventsByEventTypeHandlerParams {
	var ()
	return &GetRegisteredEventsByEventTypeHandlerParams{

		timeout: timeout,
	}
}

// NewGetRegisteredEventsByEventTypeHandlerParamsWithContext creates a new GetRegisteredEventsByEventTypeHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRegisteredEventsByEventTypeHandlerParamsWithContext(ctx context.Context) *GetRegisteredEventsByEventTypeHandlerParams {
	var ()
	return &GetRegisteredEventsByEventTypeHandlerParams{

		Context: ctx,
	}
}

// NewGetRegisteredEventsByEventTypeHandlerParamsWithHTTPClient creates a new GetRegisteredEventsByEventTypeHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRegisteredEventsByEventTypeHandlerParamsWithHTTPClient(client *http.Client) *GetRegisteredEventsByEventTypeHandlerParams {
	var ()
	return &GetRegisteredEventsByEventTypeHandlerParams{
		HTTPClient: client,
	}
}

/*GetRegisteredEventsByEventTypeHandlerParams contains all the parameters to send to the API endpoint
for the get registered events by event type handler operation typically these are written to a http.Request
*/
type GetRegisteredEventsByEventTypeHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventType
	  Event's Type

	*/
	EventType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) WithTimeout(timeout time.Duration) *GetRegisteredEventsByEventTypeHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) WithContext(ctx context.Context) *GetRegisteredEventsByEventTypeHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) WithHTTPClient(client *http.Client) *GetRegisteredEventsByEventTypeHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventType adds the eventType to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) WithEventType(eventType string) *GetRegisteredEventsByEventTypeHandlerParams {
	o.SetEventType(eventType)
	return o
}

// SetEventType adds the eventType to the get registered events by event type handler params
func (o *GetRegisteredEventsByEventTypeHandlerParams) SetEventType(eventType string) {
	o.EventType = eventType
}

// WriteToRequest writes these params to a swagger request
func (o *GetRegisteredEventsByEventTypeHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param eventType
	if err := r.SetPathParam("eventType", o.EventType); err != nil {
		return err
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
