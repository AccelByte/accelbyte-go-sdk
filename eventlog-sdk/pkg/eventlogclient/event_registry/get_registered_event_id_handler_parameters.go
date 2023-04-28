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

// NewGetRegisteredEventIDHandlerParams creates a new GetRegisteredEventIDHandlerParams object
// with the default values initialized.
func NewGetRegisteredEventIDHandlerParams() *GetRegisteredEventIDHandlerParams {
	var ()
	return &GetRegisteredEventIDHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRegisteredEventIDHandlerParamsWithTimeout creates a new GetRegisteredEventIDHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRegisteredEventIDHandlerParamsWithTimeout(timeout time.Duration) *GetRegisteredEventIDHandlerParams {
	var ()
	return &GetRegisteredEventIDHandlerParams{

		timeout: timeout,
	}
}

// NewGetRegisteredEventIDHandlerParamsWithContext creates a new GetRegisteredEventIDHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRegisteredEventIDHandlerParamsWithContext(ctx context.Context) *GetRegisteredEventIDHandlerParams {
	var ()
	return &GetRegisteredEventIDHandlerParams{

		Context: ctx,
	}
}

// NewGetRegisteredEventIDHandlerParamsWithHTTPClient creates a new GetRegisteredEventIDHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRegisteredEventIDHandlerParamsWithHTTPClient(client *http.Client) *GetRegisteredEventIDHandlerParams {
	var ()
	return &GetRegisteredEventIDHandlerParams{
		HTTPClient: client,
	}
}

/*GetRegisteredEventIDHandlerParams contains all the parameters to send to the API endpoint
for the get registered event id handler operation typically these are written to a http.Request
*/
type GetRegisteredEventIDHandlerParams struct {

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

// WithTimeout adds the timeout to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) WithTimeout(timeout time.Duration) *GetRegisteredEventIDHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) WithContext(ctx context.Context) *GetRegisteredEventIDHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) WithHTTPClient(client *http.Client) *GetRegisteredEventIDHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEventID adds the eventID to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) WithEventID(eventID string) *GetRegisteredEventIDHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the get registered event id handler params
func (o *GetRegisteredEventIDHandlerParams) SetEventID(eventID string) {
	o.EventID = eventID
}

// WriteToRequest writes these params to a swagger request
func (o *GetRegisteredEventIDHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
