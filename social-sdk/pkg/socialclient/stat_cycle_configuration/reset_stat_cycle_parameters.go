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

// NewResetStatCycleParams creates a new ResetStatCycleParams object
// with the default values initialized.
func NewResetStatCycleParams() *ResetStatCycleParams {
	var ()
	return &ResetStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetStatCycleParamsWithTimeout creates a new ResetStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetStatCycleParamsWithTimeout(timeout time.Duration) *ResetStatCycleParams {
	var ()
	return &ResetStatCycleParams{

		timeout: timeout,
	}
}

// NewResetStatCycleParamsWithContext creates a new ResetStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetStatCycleParamsWithContext(ctx context.Context) *ResetStatCycleParams {
	var ()
	return &ResetStatCycleParams{

		Context: ctx,
	}
}

// NewResetStatCycleParamsWithHTTPClient creates a new ResetStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetStatCycleParamsWithHTTPClient(client *http.Client) *ResetStatCycleParams {
	var ()
	return &ResetStatCycleParams{
		HTTPClient: client,
	}
}

/*ResetStatCycleParams contains all the parameters to send to the API endpoint
for the reset stat cycle operation typically these are written to a http.Request
*/
type ResetStatCycleParams struct {

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

// WithTimeout adds the timeout to the reset stat cycle params
func (o *ResetStatCycleParams) WithTimeout(timeout time.Duration) *ResetStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset stat cycle params
func (o *ResetStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset stat cycle params
func (o *ResetStatCycleParams) WithContext(ctx context.Context) *ResetStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset stat cycle params
func (o *ResetStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset stat cycle params
func (o *ResetStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset stat cycle params
func (o *ResetStatCycleParams) WithHTTPClient(client *http.Client) *ResetStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset stat cycle params
func (o *ResetStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reset stat cycle params
func (o *ResetStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ResetStatCycleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the reset stat cycle params
func (o *ResetStatCycleParams) WithCycleID(cycleID string) *ResetStatCycleParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the reset stat cycle params
func (o *ResetStatCycleParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the reset stat cycle params
func (o *ResetStatCycleParams) WithNamespace(namespace string) *ResetStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset stat cycle params
func (o *ResetStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ResetStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
