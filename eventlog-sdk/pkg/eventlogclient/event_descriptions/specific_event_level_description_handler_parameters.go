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

// NewSpecificEventLevelDescriptionHandlerParams creates a new SpecificEventLevelDescriptionHandlerParams object
// with the default values initialized.
func NewSpecificEventLevelDescriptionHandlerParams() *SpecificEventLevelDescriptionHandlerParams {
	var ()
	return &SpecificEventLevelDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSpecificEventLevelDescriptionHandlerParamsWithTimeout creates a new SpecificEventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSpecificEventLevelDescriptionHandlerParamsWithTimeout(timeout time.Duration) *SpecificEventLevelDescriptionHandlerParams {
	var ()
	return &SpecificEventLevelDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewSpecificEventLevelDescriptionHandlerParamsWithContext creates a new SpecificEventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSpecificEventLevelDescriptionHandlerParamsWithContext(ctx context.Context) *SpecificEventLevelDescriptionHandlerParams {
	var ()
	return &SpecificEventLevelDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewSpecificEventLevelDescriptionHandlerParamsWithHTTPClient creates a new SpecificEventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSpecificEventLevelDescriptionHandlerParamsWithHTTPClient(client *http.Client) *SpecificEventLevelDescriptionHandlerParams {
	var ()
	return &SpecificEventLevelDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*SpecificEventLevelDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the specific event level description handler operation typically these are written to a http.Request
*/
type SpecificEventLevelDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventLevels
	  Comma separated value of event levels

	*/
	EventLevels *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) WithTimeout(timeout time.Duration) *SpecificEventLevelDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) WithContext(ctx context.Context) *SpecificEventLevelDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) WithHTTPClient(client *http.Client) *SpecificEventLevelDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SpecificEventLevelDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventLevels adds the eventLevels to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) WithEventLevels(eventLevels *string) *SpecificEventLevelDescriptionHandlerParams {
	o.SetEventLevels(eventLevels)
	return o
}

// SetEventLevels adds the eventLevels to the specific event level description handler params
func (o *SpecificEventLevelDescriptionHandlerParams) SetEventLevels(eventLevels *string) {
	o.EventLevels = eventLevels
}

// WriteToRequest writes these params to a swagger request
func (o *SpecificEventLevelDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.EventLevels != nil {

		// query param eventLevels
		var qrEventLevels string
		if o.EventLevels != nil {
			qrEventLevels = *o.EventLevels
		}
		qEventLevels := qrEventLevels
		if qEventLevels != "" {
			if err := r.SetQueryParam("eventLevels", qEventLevels); err != nil {
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
