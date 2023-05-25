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

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewFleetUpdateParams creates a new FleetUpdateParams object
// with the default values initialized.
func NewFleetUpdateParams() *FleetUpdateParams {
	var ()
	return &FleetUpdateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetUpdateParamsWithTimeout creates a new FleetUpdateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetUpdateParamsWithTimeout(timeout time.Duration) *FleetUpdateParams {
	var ()
	return &FleetUpdateParams{

		timeout: timeout,
	}
}

// NewFleetUpdateParamsWithContext creates a new FleetUpdateParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetUpdateParamsWithContext(ctx context.Context) *FleetUpdateParams {
	var ()
	return &FleetUpdateParams{

		Context: ctx,
	}
}

// NewFleetUpdateParamsWithHTTPClient creates a new FleetUpdateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetUpdateParamsWithHTTPClient(client *http.Client) *FleetUpdateParams {
	var ()
	return &FleetUpdateParams{
		HTTPClient: client,
	}
}

/*FleetUpdateParams contains all the parameters to send to the API endpoint
for the fleet update operation typically these are written to a http.Request
*/
type FleetUpdateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIFleetParameters
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

// WithTimeout adds the timeout to the fleet update params
func (o *FleetUpdateParams) WithTimeout(timeout time.Duration) *FleetUpdateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet update params
func (o *FleetUpdateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet update params
func (o *FleetUpdateParams) WithContext(ctx context.Context) *FleetUpdateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet update params
func (o *FleetUpdateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet update params
func (o *FleetUpdateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet update params
func (o *FleetUpdateParams) WithHTTPClient(client *http.Client) *FleetUpdateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet update params
func (o *FleetUpdateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet update params
func (o *FleetUpdateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the fleet update params
func (o *FleetUpdateParams) WithBody(body *amsclientmodels.APIFleetParameters) *FleetUpdateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fleet update params
func (o *FleetUpdateParams) SetBody(body *amsclientmodels.APIFleetParameters) {
	o.Body = body
}

// WithFleetID adds the fleetID to the fleet update params
func (o *FleetUpdateParams) WithFleetID(fleetID string) *FleetUpdateParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet update params
func (o *FleetUpdateParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet update params
func (o *FleetUpdateParams) WithNamespace(namespace string) *FleetUpdateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet update params
func (o *FleetUpdateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetUpdateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
