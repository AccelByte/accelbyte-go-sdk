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
)

// NewDeleteDeploymentParams creates a new DeleteDeploymentParams object
// with the default values initialized.
func NewDeleteDeploymentParams() *DeleteDeploymentParams {
	var ()
	return &DeleteDeploymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteDeploymentParamsWithTimeout creates a new DeleteDeploymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteDeploymentParamsWithTimeout(timeout time.Duration) *DeleteDeploymentParams {
	var ()
	return &DeleteDeploymentParams{

		timeout: timeout,
	}
}

// NewDeleteDeploymentParamsWithContext creates a new DeleteDeploymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteDeploymentParamsWithContext(ctx context.Context) *DeleteDeploymentParams {
	var ()
	return &DeleteDeploymentParams{

		Context: ctx,
	}
}

// NewDeleteDeploymentParamsWithHTTPClient creates a new DeleteDeploymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteDeploymentParamsWithHTTPClient(client *http.Client) *DeleteDeploymentParams {
	var ()
	return &DeleteDeploymentParams{
		HTTPClient: client,
	}
}

/*DeleteDeploymentParams contains all the parameters to send to the API endpoint
for the delete deployment operation typically these are written to a http.Request
*/
type DeleteDeploymentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete deployment params
func (o *DeleteDeploymentParams) WithTimeout(timeout time.Duration) *DeleteDeploymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete deployment params
func (o *DeleteDeploymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete deployment params
func (o *DeleteDeploymentParams) WithContext(ctx context.Context) *DeleteDeploymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete deployment params
func (o *DeleteDeploymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete deployment params
func (o *DeleteDeploymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete deployment params
func (o *DeleteDeploymentParams) WithHTTPClient(client *http.Client) *DeleteDeploymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete deployment params
func (o *DeleteDeploymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete deployment params
func (o *DeleteDeploymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteDeploymentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the delete deployment params
func (o *DeleteDeploymentParams) WithDeployment(deployment string) *DeleteDeploymentParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the delete deployment params
func (o *DeleteDeploymentParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the delete deployment params
func (o *DeleteDeploymentParams) WithNamespace(namespace string) *DeleteDeploymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete deployment params
func (o *DeleteDeploymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteDeploymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
