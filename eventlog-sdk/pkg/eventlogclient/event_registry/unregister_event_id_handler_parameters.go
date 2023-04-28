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

// NewUnregisterEventIDHandlerParams creates a new UnregisterEventIDHandlerParams object
// with the default values initialized.
func NewUnregisterEventIDHandlerParams() *UnregisterEventIDHandlerParams {
	var ()
	return &UnregisterEventIDHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnregisterEventIDHandlerParamsWithTimeout creates a new UnregisterEventIDHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnregisterEventIDHandlerParamsWithTimeout(timeout time.Duration) *UnregisterEventIDHandlerParams {
	var ()
	return &UnregisterEventIDHandlerParams{

		timeout: timeout,
	}
}

// NewUnregisterEventIDHandlerParamsWithContext creates a new UnregisterEventIDHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnregisterEventIDHandlerParamsWithContext(ctx context.Context) *UnregisterEventIDHandlerParams {
	var ()
	return &UnregisterEventIDHandlerParams{

		Context: ctx,
	}
}

// NewUnregisterEventIDHandlerParamsWithHTTPClient creates a new UnregisterEventIDHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnregisterEventIDHandlerParamsWithHTTPClient(client *http.Client) *UnregisterEventIDHandlerParams {
	var ()
	return &UnregisterEventIDHandlerParams{
		HTTPClient: client,
	}
}

/*UnregisterEventIDHandlerParams contains all the parameters to send to the API endpoint
for the unregister event id handler operation typically these are written to a http.Request
*/
type UnregisterEventIDHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventID
	  Event's ID

	*/
	EventID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) WithTimeout(timeout time.Duration) *UnregisterEventIDHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) WithContext(ctx context.Context) *UnregisterEventIDHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) WithHTTPClient(client *http.Client) *UnregisterEventIDHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEventID adds the eventID to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) WithEventID(eventID string) *UnregisterEventIDHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the unregister event id handler params
func (o *UnregisterEventIDHandlerParams) SetEventID(eventID string) {
	o.EventID = eventID
}

// WriteToRequest writes these params to a swagger request
func (o *UnregisterEventIDHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
