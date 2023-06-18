// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package servers

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

// NewFleetServerHistoryParams creates a new FleetServerHistoryParams object
// with the default values initialized.
func NewFleetServerHistoryParams() *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetServerHistoryParamsWithTimeout creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetServerHistoryParamsWithTimeout(timeout time.Duration) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		timeout: timeout,
	}
}

// NewFleetServerHistoryParamsWithContext creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetServerHistoryParamsWithContext(ctx context.Context) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{

		Context: ctx,
	}
}

// NewFleetServerHistoryParamsWithHTTPClient creates a new FleetServerHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetServerHistoryParamsWithHTTPClient(client *http.Client) *FleetServerHistoryParams {
	var ()
	return &FleetServerHistoryParams{
		HTTPClient: client,
	}
}

/*FleetServerHistoryParams contains all the parameters to send to the API endpoint
for the fleet server history operation typically these are written to a http.Request
*/
type FleetServerHistoryParams struct {

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
	/*Limit
	  the limit for the number of records

	*/
	Limit *int64
	/*Offset
	  the offset for pagination

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the fleet server history params
func (o *FleetServerHistoryParams) WithTimeout(timeout time.Duration) *FleetServerHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet server history params
func (o *FleetServerHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet server history params
func (o *FleetServerHistoryParams) WithContext(ctx context.Context) *FleetServerHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet server history params
func (o *FleetServerHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet server history params
func (o *FleetServerHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet server history params
func (o *FleetServerHistoryParams) WithHTTPClient(client *http.Client) *FleetServerHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet server history params
func (o *FleetServerHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet server history params
func (o *FleetServerHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFleetID adds the fleetID to the fleet server history params
func (o *FleetServerHistoryParams) WithFleetID(fleetID string) *FleetServerHistoryParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet server history params
func (o *FleetServerHistoryParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet server history params
func (o *FleetServerHistoryParams) WithNamespace(namespace string) *FleetServerHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet server history params
func (o *FleetServerHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the fleet server history params
func (o *FleetServerHistoryParams) WithLimit(limit *int64) *FleetServerHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the fleet server history params
func (o *FleetServerHistoryParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the fleet server history params
func (o *FleetServerHistoryParams) WithOffset(offset *int64) *FleetServerHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the fleet server history params
func (o *FleetServerHistoryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *FleetServerHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
