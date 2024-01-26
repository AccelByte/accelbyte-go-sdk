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

// NewCreateDeploymentClientParams creates a new CreateDeploymentClientParams object
// with the default values initialized.
func NewCreateDeploymentClientParams() *CreateDeploymentClientParams {
	var ()
	return &CreateDeploymentClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateDeploymentClientParamsWithTimeout creates a new CreateDeploymentClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateDeploymentClientParamsWithTimeout(timeout time.Duration) *CreateDeploymentClientParams {
	var ()
	return &CreateDeploymentClientParams{

		timeout: timeout,
	}
}

// NewCreateDeploymentClientParamsWithContext creates a new CreateDeploymentClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateDeploymentClientParamsWithContext(ctx context.Context) *CreateDeploymentClientParams {
	var ()
	return &CreateDeploymentClientParams{

		Context: ctx,
	}
}

// NewCreateDeploymentClientParamsWithHTTPClient creates a new CreateDeploymentClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateDeploymentClientParamsWithHTTPClient(client *http.Client) *CreateDeploymentClientParams {
	var ()
	return &CreateDeploymentClientParams{
		HTTPClient: client,
	}
}

/*CreateDeploymentClientParams contains all the parameters to send to the API endpoint
for the create deployment client operation typically these are written to a http.Request
*/
type CreateDeploymentClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreateDeploymentRequest
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

// WithTimeout adds the timeout to the create deployment client params
func (o *CreateDeploymentClientParams) WithTimeout(timeout time.Duration) *CreateDeploymentClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create deployment client params
func (o *CreateDeploymentClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create deployment client params
func (o *CreateDeploymentClientParams) WithContext(ctx context.Context) *CreateDeploymentClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create deployment client params
func (o *CreateDeploymentClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create deployment client params
func (o *CreateDeploymentClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create deployment client params
func (o *CreateDeploymentClientParams) WithHTTPClient(client *http.Client) *CreateDeploymentClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create deployment client params
func (o *CreateDeploymentClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create deployment client params
func (o *CreateDeploymentClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateDeploymentClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create deployment client params
func (o *CreateDeploymentClientParams) WithBody(body *dsmcclientmodels.ModelsCreateDeploymentRequest) *CreateDeploymentClientParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create deployment client params
func (o *CreateDeploymentClientParams) SetBody(body *dsmcclientmodels.ModelsCreateDeploymentRequest) {
	o.Body = body
}

// WithDeployment adds the deployment to the create deployment client params
func (o *CreateDeploymentClientParams) WithDeployment(deployment string) *CreateDeploymentClientParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the create deployment client params
func (o *CreateDeploymentClientParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the create deployment client params
func (o *CreateDeploymentClientParams) WithNamespace(namespace string) *CreateDeploymentClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create deployment client params
func (o *CreateDeploymentClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateDeploymentClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
