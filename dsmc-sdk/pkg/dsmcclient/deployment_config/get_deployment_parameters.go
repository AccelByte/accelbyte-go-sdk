// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package deployment_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewGetDeploymentParams creates a new GetDeploymentParams object
// with the default values initialized.
func NewGetDeploymentParams() *GetDeploymentParams {
	var ()
	return &GetDeploymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDeploymentParamsWithTimeout creates a new GetDeploymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDeploymentParamsWithTimeout(timeout time.Duration) *GetDeploymentParams {
	var ()
	return &GetDeploymentParams{

		timeout: timeout,
	}
}

// NewGetDeploymentParamsWithContext creates a new GetDeploymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetDeploymentParamsWithContext(ctx context.Context) *GetDeploymentParams {
	var ()
	return &GetDeploymentParams{

		Context: ctx,
	}
}

// NewGetDeploymentParamsWithHTTPClient creates a new GetDeploymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDeploymentParamsWithHTTPClient(client *http.Client) *GetDeploymentParams {
	var ()
	return &GetDeploymentParams{
		HTTPClient: client,
	}
}

/*GetDeploymentParams contains all the parameters to send to the API endpoint
for the get deployment operation typically these are written to a http.Request
*/
type GetDeploymentParams struct {

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

// WithTimeout adds the timeout to the get deployment params
func (o *GetDeploymentParams) WithTimeout(timeout time.Duration) *GetDeploymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get deployment params
func (o *GetDeploymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get deployment params
func (o *GetDeploymentParams) WithContext(ctx context.Context) *GetDeploymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get deployment params
func (o *GetDeploymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get deployment params
func (o *GetDeploymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get deployment params
func (o *GetDeploymentParams) WithHTTPClient(client *http.Client) *GetDeploymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get deployment params
func (o *GetDeploymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get deployment params
func (o *GetDeploymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithDeployment adds the deployment to the get deployment params
func (o *GetDeploymentParams) WithDeployment(deployment string) *GetDeploymentParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the get deployment params
func (o *GetDeploymentParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the get deployment params
func (o *GetDeploymentParams) WithNamespace(namespace string) *GetDeploymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get deployment params
func (o *GetDeploymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetDeploymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
