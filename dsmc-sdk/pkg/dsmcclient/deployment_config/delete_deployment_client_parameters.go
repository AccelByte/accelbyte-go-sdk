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

// NewDeleteDeploymentClientParams creates a new DeleteDeploymentClientParams object
// with the default values initialized.
func NewDeleteDeploymentClientParams() *DeleteDeploymentClientParams {
	var ()
	return &DeleteDeploymentClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteDeploymentClientParamsWithTimeout creates a new DeleteDeploymentClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteDeploymentClientParamsWithTimeout(timeout time.Duration) *DeleteDeploymentClientParams {
	var ()
	return &DeleteDeploymentClientParams{

		timeout: timeout,
	}
}

// NewDeleteDeploymentClientParamsWithContext creates a new DeleteDeploymentClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteDeploymentClientParamsWithContext(ctx context.Context) *DeleteDeploymentClientParams {
	var ()
	return &DeleteDeploymentClientParams{

		Context: ctx,
	}
}

// NewDeleteDeploymentClientParamsWithHTTPClient creates a new DeleteDeploymentClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteDeploymentClientParamsWithHTTPClient(client *http.Client) *DeleteDeploymentClientParams {
	var ()
	return &DeleteDeploymentClientParams{
		HTTPClient: client,
	}
}

/*DeleteDeploymentClientParams contains all the parameters to send to the API endpoint
for the delete deployment client operation typically these are written to a http.Request
*/
type DeleteDeploymentClientParams struct {

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
}

// WithTimeout adds the timeout to the delete deployment client params
func (o *DeleteDeploymentClientParams) WithTimeout(timeout time.Duration) *DeleteDeploymentClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete deployment client params
func (o *DeleteDeploymentClientParams) WithContext(ctx context.Context) *DeleteDeploymentClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete deployment client params
func (o *DeleteDeploymentClientParams) WithHTTPClient(client *http.Client) *DeleteDeploymentClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithDeployment adds the deployment to the delete deployment client params
func (o *DeleteDeploymentClientParams) WithDeployment(deployment string) *DeleteDeploymentClientParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the delete deployment client params
func (o *DeleteDeploymentClientParams) WithNamespace(namespace string) *DeleteDeploymentClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete deployment client params
func (o *DeleteDeploymentClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteDeploymentClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
