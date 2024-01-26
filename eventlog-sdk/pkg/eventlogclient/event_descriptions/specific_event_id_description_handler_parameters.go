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

// NewSpecificEventIDDescriptionHandlerParams creates a new SpecificEventIDDescriptionHandlerParams object
// with the default values initialized.
func NewSpecificEventIDDescriptionHandlerParams() *SpecificEventIDDescriptionHandlerParams {
	var ()
	return &SpecificEventIDDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSpecificEventIDDescriptionHandlerParamsWithTimeout creates a new SpecificEventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSpecificEventIDDescriptionHandlerParamsWithTimeout(timeout time.Duration) *SpecificEventIDDescriptionHandlerParams {
	var ()
	return &SpecificEventIDDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewSpecificEventIDDescriptionHandlerParamsWithContext creates a new SpecificEventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSpecificEventIDDescriptionHandlerParamsWithContext(ctx context.Context) *SpecificEventIDDescriptionHandlerParams {
	var ()
	return &SpecificEventIDDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewSpecificEventIDDescriptionHandlerParamsWithHTTPClient creates a new SpecificEventIDDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSpecificEventIDDescriptionHandlerParamsWithHTTPClient(client *http.Client) *SpecificEventIDDescriptionHandlerParams {
	var ()
	return &SpecificEventIDDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*SpecificEventIDDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the specific event id description handler operation typically these are written to a http.Request
*/
type SpecificEventIDDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventIds
	  Comma separated value of eventIDs

	*/
	EventIds *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) WithTimeout(timeout time.Duration) *SpecificEventIDDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) WithContext(ctx context.Context) *SpecificEventIDDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) WithHTTPClient(client *http.Client) *SpecificEventIDDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SpecificEventIDDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventIds adds the eventIds to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) WithEventIds(eventIds *string) *SpecificEventIDDescriptionHandlerParams {
	o.SetEventIds(eventIds)
	return o
}

// SetEventIds adds the eventIds to the specific event id description handler params
func (o *SpecificEventIDDescriptionHandlerParams) SetEventIds(eventIds *string) {
	o.EventIds = eventIds
}

// WriteToRequest writes these params to a swagger request
func (o *SpecificEventIDDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.EventIds != nil {

		// query param eventIds
		var qrEventIds string
		if o.EventIds != nil {
			qrEventIds = *o.EventIds
		}
		qEventIds := qrEventIds
		if qEventIds != "" {
			if err := r.SetQueryParam("eventIds", qEventIds); err != nil {
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
