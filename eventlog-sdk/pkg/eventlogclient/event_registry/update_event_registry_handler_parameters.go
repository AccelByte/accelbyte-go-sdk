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

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// NewUpdateEventRegistryHandlerParams creates a new UpdateEventRegistryHandlerParams object
// with the default values initialized.
func NewUpdateEventRegistryHandlerParams() *UpdateEventRegistryHandlerParams {
	var ()
	return &UpdateEventRegistryHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateEventRegistryHandlerParamsWithTimeout creates a new UpdateEventRegistryHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateEventRegistryHandlerParamsWithTimeout(timeout time.Duration) *UpdateEventRegistryHandlerParams {
	var ()
	return &UpdateEventRegistryHandlerParams{

		timeout: timeout,
	}
}

// NewUpdateEventRegistryHandlerParamsWithContext creates a new UpdateEventRegistryHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateEventRegistryHandlerParamsWithContext(ctx context.Context) *UpdateEventRegistryHandlerParams {
	var ()
	return &UpdateEventRegistryHandlerParams{

		Context: ctx,
	}
}

// NewUpdateEventRegistryHandlerParamsWithHTTPClient creates a new UpdateEventRegistryHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateEventRegistryHandlerParamsWithHTTPClient(client *http.Client) *UpdateEventRegistryHandlerParams {
	var ()
	return &UpdateEventRegistryHandlerParams{
		HTTPClient: client,
	}
}

/*UpdateEventRegistryHandlerParams contains all the parameters to send to the API endpoint
for the update event registry handler operation typically these are written to a http.Request
*/
type UpdateEventRegistryHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *eventlogclientmodels.ModelsEventRegistry
	/*EventID
	  Event's ID

	*/
	EventID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) WithTimeout(timeout time.Duration) *UpdateEventRegistryHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) WithContext(ctx context.Context) *UpdateEventRegistryHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) WithHTTPClient(client *http.Client) *UpdateEventRegistryHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateEventRegistryHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) WithBody(body *eventlogclientmodels.ModelsEventRegistry) *UpdateEventRegistryHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetBody(body *eventlogclientmodels.ModelsEventRegistry) {
	o.Body = body
}

// WithEventID adds the eventID to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) WithEventID(eventID string) *UpdateEventRegistryHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the update event registry handler params
func (o *UpdateEventRegistryHandlerParams) SetEventID(eventID string) {
	o.EventID = eventID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateEventRegistryHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param eventId
	if err := r.SetPathParam("eventId", o.EventID); err != nil {
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
