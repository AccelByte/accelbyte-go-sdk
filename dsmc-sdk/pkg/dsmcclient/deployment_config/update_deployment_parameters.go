// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewUpdateDeploymentParams creates a new UpdateDeploymentParams object
// with the default values initialized.
func NewUpdateDeploymentParams() *UpdateDeploymentParams {
	var ()
	return &UpdateDeploymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateDeploymentParamsWithTimeout creates a new UpdateDeploymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateDeploymentParamsWithTimeout(timeout time.Duration) *UpdateDeploymentParams {
	var ()
	return &UpdateDeploymentParams{

		timeout: timeout,
	}
}

// NewUpdateDeploymentParamsWithContext creates a new UpdateDeploymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateDeploymentParamsWithContext(ctx context.Context) *UpdateDeploymentParams {
	var ()
	return &UpdateDeploymentParams{

		Context: ctx,
	}
}

// NewUpdateDeploymentParamsWithHTTPClient creates a new UpdateDeploymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateDeploymentParamsWithHTTPClient(client *http.Client) *UpdateDeploymentParams {
	var ()
	return &UpdateDeploymentParams{
		HTTPClient: client,
	}
}

/*UpdateDeploymentParams contains all the parameters to send to the API endpoint
for the update deployment operation typically these are written to a http.Request
*/
type UpdateDeploymentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsUpdateDeploymentRequest
	/*Deployment
	  deployment name

	*/
	Deployment string
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

// WithTimeout adds the timeout to the update deployment params
func (o *UpdateDeploymentParams) WithTimeout(timeout time.Duration) *UpdateDeploymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update deployment params
func (o *UpdateDeploymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update deployment params
func (o *UpdateDeploymentParams) WithContext(ctx context.Context) *UpdateDeploymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update deployment params
func (o *UpdateDeploymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update deployment params
func (o *UpdateDeploymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update deployment params
func (o *UpdateDeploymentParams) WithHTTPClient(client *http.Client) *UpdateDeploymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update deployment params
func (o *UpdateDeploymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update deployment params
func (o *UpdateDeploymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateDeploymentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update deployment params
func (o *UpdateDeploymentParams) WithBody(body *dsmcclientmodels.ModelsUpdateDeploymentRequest) *UpdateDeploymentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update deployment params
func (o *UpdateDeploymentParams) SetBody(body *dsmcclientmodels.ModelsUpdateDeploymentRequest) {
	o.Body = body
}

// WithDeployment adds the deployment to the update deployment params
func (o *UpdateDeploymentParams) WithDeployment(deployment string) *UpdateDeploymentParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the update deployment params
func (o *UpdateDeploymentParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the update deployment params
func (o *UpdateDeploymentParams) WithNamespace(namespace string) *UpdateDeploymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update deployment params
func (o *UpdateDeploymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateDeploymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param deployment
	if err := r.SetPathParam("deployment", o.Deployment); err != nil {
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
