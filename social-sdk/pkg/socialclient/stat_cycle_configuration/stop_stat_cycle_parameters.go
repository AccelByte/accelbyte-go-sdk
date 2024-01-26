// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// NewStopStatCycleParams creates a new StopStatCycleParams object
// with the default values initialized.
func NewStopStatCycleParams() *StopStatCycleParams {
	var ()
	return &StopStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewStopStatCycleParamsWithTimeout creates a new StopStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewStopStatCycleParamsWithTimeout(timeout time.Duration) *StopStatCycleParams {
	var ()
	return &StopStatCycleParams{

		timeout: timeout,
	}
}

// NewStopStatCycleParamsWithContext creates a new StopStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewStopStatCycleParamsWithContext(ctx context.Context) *StopStatCycleParams {
	var ()
	return &StopStatCycleParams{

		Context: ctx,
	}
}

// NewStopStatCycleParamsWithHTTPClient creates a new StopStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewStopStatCycleParamsWithHTTPClient(client *http.Client) *StopStatCycleParams {
	var ()
	return &StopStatCycleParams{
		HTTPClient: client,
	}
}

/*StopStatCycleParams contains all the parameters to send to the API endpoint
for the stop stat cycle operation typically these are written to a http.Request
*/
type StopStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the stop stat cycle params
func (o *StopStatCycleParams) WithTimeout(timeout time.Duration) *StopStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the stop stat cycle params
func (o *StopStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the stop stat cycle params
func (o *StopStatCycleParams) WithContext(ctx context.Context) *StopStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the stop stat cycle params
func (o *StopStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the stop stat cycle params
func (o *StopStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the stop stat cycle params
func (o *StopStatCycleParams) WithHTTPClient(client *http.Client) *StopStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the stop stat cycle params
func (o *StopStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the stop stat cycle params
func (o *StopStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *StopStatCycleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the stop stat cycle params
func (o *StopStatCycleParams) WithCycleID(cycleID string) *StopStatCycleParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the stop stat cycle params
func (o *StopStatCycleParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the stop stat cycle params
func (o *StopStatCycleParams) WithNamespace(namespace string) *StopStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the stop stat cycle params
func (o *StopStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *StopStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
