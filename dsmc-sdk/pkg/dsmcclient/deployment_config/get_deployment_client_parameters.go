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

// NewGetDeploymentClientParams creates a new GetDeploymentClientParams object
// with the default values initialized.
func NewGetDeploymentClientParams() *GetDeploymentClientParams {
	var ()
	return &GetDeploymentClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDeploymentClientParamsWithTimeout creates a new GetDeploymentClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDeploymentClientParamsWithTimeout(timeout time.Duration) *GetDeploymentClientParams {
	var ()
	return &GetDeploymentClientParams{

		timeout: timeout,
	}
}

// NewGetDeploymentClientParamsWithContext creates a new GetDeploymentClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetDeploymentClientParamsWithContext(ctx context.Context) *GetDeploymentClientParams {
	var ()
	return &GetDeploymentClientParams{

		Context: ctx,
	}
}

// NewGetDeploymentClientParamsWithHTTPClient creates a new GetDeploymentClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDeploymentClientParamsWithHTTPClient(client *http.Client) *GetDeploymentClientParams {
	var ()
	return &GetDeploymentClientParams{
		HTTPClient: client,
	}
}

/*GetDeploymentClientParams contains all the parameters to send to the API endpoint
for the get deployment client operation typically these are written to a http.Request
*/
type GetDeploymentClientParams struct {

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

// WithTimeout adds the timeout to the get deployment client params
func (o *GetDeploymentClientParams) WithTimeout(timeout time.Duration) *GetDeploymentClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get deployment client params
func (o *GetDeploymentClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get deployment client params
func (o *GetDeploymentClientParams) WithContext(ctx context.Context) *GetDeploymentClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get deployment client params
func (o *GetDeploymentClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get deployment client params
func (o *GetDeploymentClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get deployment client params
func (o *GetDeploymentClientParams) WithHTTPClient(client *http.Client) *GetDeploymentClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get deployment client params
func (o *GetDeploymentClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get deployment client params
func (o *GetDeploymentClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetDeploymentClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the get deployment client params
func (o *GetDeploymentClientParams) WithDeployment(deployment string) *GetDeploymentClientParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the get deployment client params
func (o *GetDeploymentClientParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the get deployment client params
func (o *GetDeploymentClientParams) WithNamespace(namespace string) *GetDeploymentClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get deployment client params
func (o *GetDeploymentClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetDeploymentClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
