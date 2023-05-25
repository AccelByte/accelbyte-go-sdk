// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

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

// NewFleetGetParams creates a new FleetGetParams object
// with the default values initialized.
func NewFleetGetParams() *FleetGetParams {
	var ()
	return &FleetGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetGetParamsWithTimeout creates a new FleetGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetGetParamsWithTimeout(timeout time.Duration) *FleetGetParams {
	var ()
	return &FleetGetParams{

		timeout: timeout,
	}
}

// NewFleetGetParamsWithContext creates a new FleetGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetGetParamsWithContext(ctx context.Context) *FleetGetParams {
	var ()
	return &FleetGetParams{

		Context: ctx,
	}
}

// NewFleetGetParamsWithHTTPClient creates a new FleetGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetGetParamsWithHTTPClient(client *http.Client) *FleetGetParams {
	var ()
	return &FleetGetParams{
		HTTPClient: client,
	}
}

/*FleetGetParams contains all the parameters to send to the API endpoint
for the fleet get operation typically these are written to a http.Request
*/
type FleetGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FleetID
	  the id of the fleet

	*/
	FleetID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the fleet get params
func (o *FleetGetParams) WithTimeout(timeout time.Duration) *FleetGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet get params
func (o *FleetGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet get params
func (o *FleetGetParams) WithContext(ctx context.Context) *FleetGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet get params
func (o *FleetGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet get params
func (o *FleetGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet get params
func (o *FleetGetParams) WithHTTPClient(client *http.Client) *FleetGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet get params
func (o *FleetGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet get params
func (o *FleetGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFleetID adds the fleetID to the fleet get params
func (o *FleetGetParams) WithFleetID(fleetID string) *FleetGetParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet get params
func (o *FleetGetParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet get params
func (o *FleetGetParams) WithNamespace(namespace string) *FleetGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet get params
func (o *FleetGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param fleetID
	if err := r.SetPathParam("fleetID", o.FleetID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
