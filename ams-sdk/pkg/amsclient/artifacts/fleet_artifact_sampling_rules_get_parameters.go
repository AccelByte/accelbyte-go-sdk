// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifacts

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

// NewFleetArtifactSamplingRulesGetParams creates a new FleetArtifactSamplingRulesGetParams object
// with the default values initialized.
func NewFleetArtifactSamplingRulesGetParams() *FleetArtifactSamplingRulesGetParams {
	var ()
	return &FleetArtifactSamplingRulesGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetArtifactSamplingRulesGetParamsWithTimeout creates a new FleetArtifactSamplingRulesGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetArtifactSamplingRulesGetParamsWithTimeout(timeout time.Duration) *FleetArtifactSamplingRulesGetParams {
	var ()
	return &FleetArtifactSamplingRulesGetParams{

		timeout: timeout,
	}
}

// NewFleetArtifactSamplingRulesGetParamsWithContext creates a new FleetArtifactSamplingRulesGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetArtifactSamplingRulesGetParamsWithContext(ctx context.Context) *FleetArtifactSamplingRulesGetParams {
	var ()
	return &FleetArtifactSamplingRulesGetParams{

		Context: ctx,
	}
}

// NewFleetArtifactSamplingRulesGetParamsWithHTTPClient creates a new FleetArtifactSamplingRulesGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetArtifactSamplingRulesGetParamsWithHTTPClient(client *http.Client) *FleetArtifactSamplingRulesGetParams {
	var ()
	return &FleetArtifactSamplingRulesGetParams{
		HTTPClient: client,
	}
}

/*FleetArtifactSamplingRulesGetParams contains all the parameters to send to the API endpoint
for the fleet artifact sampling rules get operation typically these are written to a http.Request
*/
type FleetArtifactSamplingRulesGetParams struct {

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

// WithTimeout adds the timeout to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) WithTimeout(timeout time.Duration) *FleetArtifactSamplingRulesGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) WithContext(ctx context.Context) *FleetArtifactSamplingRulesGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) WithHTTPClient(client *http.Client) *FleetArtifactSamplingRulesGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFleetID adds the fleetID to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) WithFleetID(fleetID string) *FleetArtifactSamplingRulesGetParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) WithNamespace(namespace string) *FleetArtifactSamplingRulesGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet artifact sampling rules get params
func (o *FleetArtifactSamplingRulesGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetArtifactSamplingRulesGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
