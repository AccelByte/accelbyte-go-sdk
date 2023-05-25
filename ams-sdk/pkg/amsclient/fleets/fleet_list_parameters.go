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

// NewFleetListParams creates a new FleetListParams object
// with the default values initialized.
func NewFleetListParams() *FleetListParams {
	var ()
	return &FleetListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetListParamsWithTimeout creates a new FleetListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetListParamsWithTimeout(timeout time.Duration) *FleetListParams {
	var ()
	return &FleetListParams{

		timeout: timeout,
	}
}

// NewFleetListParamsWithContext creates a new FleetListParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetListParamsWithContext(ctx context.Context) *FleetListParams {
	var ()
	return &FleetListParams{

		Context: ctx,
	}
}

// NewFleetListParamsWithHTTPClient creates a new FleetListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetListParamsWithHTTPClient(client *http.Client) *FleetListParams {
	var ()
	return &FleetListParams{
		HTTPClient: client,
	}
}

/*FleetListParams contains all the parameters to send to the API endpoint
for the fleet list operation typically these are written to a http.Request
*/
type FleetListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the fleet list params
func (o *FleetListParams) WithTimeout(timeout time.Duration) *FleetListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet list params
func (o *FleetListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet list params
func (o *FleetListParams) WithContext(ctx context.Context) *FleetListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet list params
func (o *FleetListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet list params
func (o *FleetListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet list params
func (o *FleetListParams) WithHTTPClient(client *http.Client) *FleetListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet list params
func (o *FleetListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet list params
func (o *FleetListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the fleet list params
func (o *FleetListParams) WithNamespace(namespace string) *FleetListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet list params
func (o *FleetListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
