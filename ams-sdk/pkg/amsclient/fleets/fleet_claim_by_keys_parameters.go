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

// NewFleetClaimByKeysParams creates a new FleetClaimByKeysParams object
// with the default values initialized.
func NewFleetClaimByKeysParams() *FleetClaimByKeysParams {
	var ()
	return &FleetClaimByKeysParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetClaimByKeysParamsWithTimeout creates a new FleetClaimByKeysParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetClaimByKeysParamsWithTimeout(timeout time.Duration) *FleetClaimByKeysParams {
	var ()
	return &FleetClaimByKeysParams{

		timeout: timeout,
	}
}

// NewFleetClaimByKeysParamsWithContext creates a new FleetClaimByKeysParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetClaimByKeysParamsWithContext(ctx context.Context) *FleetClaimByKeysParams {
	var ()
	return &FleetClaimByKeysParams{

		Context: ctx,
	}
}

// NewFleetClaimByKeysParamsWithHTTPClient creates a new FleetClaimByKeysParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetClaimByKeysParamsWithHTTPClient(client *http.Client) *FleetClaimByKeysParams {
	var ()
	return &FleetClaimByKeysParams{
		HTTPClient: client,
	}
}

/*FleetClaimByKeysParams contains all the parameters to send to the API endpoint
for the fleet claim by keys operation typically these are written to a http.Request
*/
type FleetClaimByKeysParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIFleetClaimByKeysReq
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

// WithTimeout adds the timeout to the fleet claim by keys params
func (o *FleetClaimByKeysParams) WithTimeout(timeout time.Duration) *FleetClaimByKeysParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet claim by keys params
func (o *FleetClaimByKeysParams) WithContext(ctx context.Context) *FleetClaimByKeysParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet claim by keys params
func (o *FleetClaimByKeysParams) WithHTTPClient(client *http.Client) *FleetClaimByKeysParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *FleetClaimByKeysParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the fleet claim by keys params
func (o *FleetClaimByKeysParams) WithBody(body *amsclientmodels.APIFleetClaimByKeysReq) *FleetClaimByKeysParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetBody(body *amsclientmodels.APIFleetClaimByKeysReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the fleet claim by keys params
func (o *FleetClaimByKeysParams) WithNamespace(namespace string) *FleetClaimByKeysParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet claim by keys params
func (o *FleetClaimByKeysParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetClaimByKeysParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
