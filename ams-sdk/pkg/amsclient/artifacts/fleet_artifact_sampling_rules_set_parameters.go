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

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewFleetArtifactSamplingRulesSetParams creates a new FleetArtifactSamplingRulesSetParams object
// with the default values initialized.
func NewFleetArtifactSamplingRulesSetParams() *FleetArtifactSamplingRulesSetParams {
	var ()
	return &FleetArtifactSamplingRulesSetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetArtifactSamplingRulesSetParamsWithTimeout creates a new FleetArtifactSamplingRulesSetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetArtifactSamplingRulesSetParamsWithTimeout(timeout time.Duration) *FleetArtifactSamplingRulesSetParams {
	var ()
	return &FleetArtifactSamplingRulesSetParams{

		timeout: timeout,
	}
}

// NewFleetArtifactSamplingRulesSetParamsWithContext creates a new FleetArtifactSamplingRulesSetParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetArtifactSamplingRulesSetParamsWithContext(ctx context.Context) *FleetArtifactSamplingRulesSetParams {
	var ()
	return &FleetArtifactSamplingRulesSetParams{

		Context: ctx,
	}
}

// NewFleetArtifactSamplingRulesSetParamsWithHTTPClient creates a new FleetArtifactSamplingRulesSetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetArtifactSamplingRulesSetParamsWithHTTPClient(client *http.Client) *FleetArtifactSamplingRulesSetParams {
	var ()
	return &FleetArtifactSamplingRulesSetParams{
		HTTPClient: client,
	}
}

/*FleetArtifactSamplingRulesSetParams contains all the parameters to send to the API endpoint
for the fleet artifact sampling rules set operation typically these are written to a http.Request
*/
type FleetArtifactSamplingRulesSetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIFleetArtifactsSampleRules
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

// WithTimeout adds the timeout to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithTimeout(timeout time.Duration) *FleetArtifactSamplingRulesSetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithContext(ctx context.Context) *FleetArtifactSamplingRulesSetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithHTTPClient(client *http.Client) *FleetArtifactSamplingRulesSetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetArtifactSamplingRulesSetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithBody(body *amsclientmodels.APIFleetArtifactsSampleRules) *FleetArtifactSamplingRulesSetParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetBody(body *amsclientmodels.APIFleetArtifactsSampleRules) {
	o.Body = body
}

// WithFleetID adds the fleetID to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithFleetID(fleetID string) *FleetArtifactSamplingRulesSetParams {
	o.SetFleetID(fleetID)
	return o
}

// SetFleetID adds the fleetId to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetFleetID(fleetID string) {
	o.FleetID = fleetID
}

// WithNamespace adds the namespace to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) WithNamespace(namespace string) *FleetArtifactSamplingRulesSetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet artifact sampling rules set params
func (o *FleetArtifactSamplingRulesSetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetArtifactSamplingRulesSetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
