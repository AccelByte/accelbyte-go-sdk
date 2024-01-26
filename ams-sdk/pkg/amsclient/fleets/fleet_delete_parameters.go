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

// NewFleetDeleteParams creates a new FleetDeleteParams object
// with the default values initialized.
func NewFleetDeleteParams() *FleetDeleteParams {
	var ()
	return &FleetDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetDeleteParamsWithTimeout creates a new FleetDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetDeleteParamsWithTimeout(timeout time.Duration) *FleetDeleteParams {
	var ()
	return &FleetDeleteParams{

		timeout: timeout,
	}
}

// NewFleetDeleteParamsWithContext creates a new FleetDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetDeleteParamsWithContext(ctx context.Context) *FleetDeleteParams {
	var ()
	return &FleetDeleteParams{

		Context: ctx,
	}
}

// NewFleetDeleteParamsWithHTTPClient creates a new FleetDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetDeleteParamsWithHTTPClient(client *http.Client) *FleetDeleteParams {
	var ()
	return &FleetDeleteParams{
		HTTPClient: client,
	}
}

/*FleetDeleteParams contains all the parameters to send to the API endpoint
for the fleet delete operation typically these are written to a http.Request
*/
type FleetDeleteParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the fleet delete params
func (o *FleetDeleteParams) WithTimeout(timeout time.Duration) *FleetDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet delete params
func (o *FleetDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet delete params
func (o *FleetDeleteParams) WithContext(ctx context.Context) *FleetDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet delete params
func (o *FleetDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet delete params
func (o *FleetDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet delete params
func (o *FleetDeleteParams) WithHTTPClient(client *http.Client) *FleetDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet delete params
func (o *FleetDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet delete params
func (o *FleetDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetDeleteParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFleetID adds the fleetID to the fleet delete params
func (o *FleetDeleteParams) WithFleetID(fleetID string) *FleetDeleteParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet delete params
func (o *FleetDeleteParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet delete params
func (o *FleetDeleteParams) WithNamespace(namespace string) *FleetDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet delete params
func (o *FleetDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
