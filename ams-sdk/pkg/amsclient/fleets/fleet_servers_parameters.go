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
	"github.com/go-openapi/swag"
)

// NewFleetServersParams creates a new FleetServersParams object
// with the default values initialized.
func NewFleetServersParams() *FleetServersParams {
	var ()
	return &FleetServersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetServersParamsWithTimeout creates a new FleetServersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetServersParamsWithTimeout(timeout time.Duration) *FleetServersParams {
	var ()
	return &FleetServersParams{

		timeout: timeout,
	}
}

// NewFleetServersParamsWithContext creates a new FleetServersParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetServersParamsWithContext(ctx context.Context) *FleetServersParams {
	var ()
	return &FleetServersParams{

		Context: ctx,
	}
}

// NewFleetServersParamsWithHTTPClient creates a new FleetServersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetServersParamsWithHTTPClient(client *http.Client) *FleetServersParams {
	var ()
	return &FleetServersParams{
		HTTPClient: client,
	}
}

/*FleetServersParams contains all the parameters to send to the API endpoint
for the fleet servers operation typically these are written to a http.Request
*/
type FleetServersParams struct {

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
	/*Count
	  the data limit

	*/
	Count *string
	/*Offset
	  the data offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the fleet servers params
func (o *FleetServersParams) WithTimeout(timeout time.Duration) *FleetServersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet servers params
func (o *FleetServersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet servers params
func (o *FleetServersParams) WithContext(ctx context.Context) *FleetServersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet servers params
func (o *FleetServersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet servers params
func (o *FleetServersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet servers params
func (o *FleetServersParams) WithHTTPClient(client *http.Client) *FleetServersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet servers params
func (o *FleetServersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet servers params
func (o *FleetServersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetServersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFleetID adds the fleetID to the fleet servers params
func (o *FleetServersParams) WithFleetID(fleetID string) *FleetServersParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet servers params
func (o *FleetServersParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet servers params
func (o *FleetServersParams) WithNamespace(namespace string) *FleetServersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet servers params
func (o *FleetServersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the fleet servers params
func (o *FleetServersParams) WithCount(count *string) *FleetServersParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the fleet servers params
func (o *FleetServersParams) SetCount(count *string) {
	o.Count = count
}

// WithOffset adds the offset to the fleet servers params
func (o *FleetServersParams) WithOffset(offset *int64) *FleetServersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the fleet servers params
func (o *FleetServersParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *FleetServersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Count != nil {

		// query param count
		var qrCount string
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := qrCount
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
