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

// NewDeleteCreatingServerCountQueueParams creates a new DeleteCreatingServerCountQueueParams object
// with the default values initialized.
func NewDeleteCreatingServerCountQueueParams() *DeleteCreatingServerCountQueueParams {
	var ()
	return &DeleteCreatingServerCountQueueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteCreatingServerCountQueueParamsWithTimeout creates a new DeleteCreatingServerCountQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteCreatingServerCountQueueParamsWithTimeout(timeout time.Duration) *DeleteCreatingServerCountQueueParams {
	var ()
	return &DeleteCreatingServerCountQueueParams{

		timeout: timeout,
	}
}

// NewDeleteCreatingServerCountQueueParamsWithContext creates a new DeleteCreatingServerCountQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteCreatingServerCountQueueParamsWithContext(ctx context.Context) *DeleteCreatingServerCountQueueParams {
	var ()
	return &DeleteCreatingServerCountQueueParams{

		Context: ctx,
	}
}

// NewDeleteCreatingServerCountQueueParamsWithHTTPClient creates a new DeleteCreatingServerCountQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteCreatingServerCountQueueParamsWithHTTPClient(client *http.Client) *DeleteCreatingServerCountQueueParams {
	var ()
	return &DeleteCreatingServerCountQueueParams{
		HTTPClient: client,
	}
}

/*DeleteCreatingServerCountQueueParams contains all the parameters to send to the API endpoint
for the delete creating server count queue operation typically these are written to a http.Request
*/
type DeleteCreatingServerCountQueueParams struct {

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
	/*Version
	  version

	*/
	Version string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithTimeout(timeout time.Duration) *DeleteCreatingServerCountQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithContext(ctx context.Context) *DeleteCreatingServerCountQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithHTTPClient(client *http.Client) *DeleteCreatingServerCountQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteCreatingServerCountQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithDeployment(deployment string) *DeleteCreatingServerCountQueueParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithNamespace(namespace string) *DeleteCreatingServerCountQueueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) WithVersion(version string) *DeleteCreatingServerCountQueueParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the delete creating server count queue params
func (o *DeleteCreatingServerCountQueueParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteCreatingServerCountQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param version
	if err := r.SetPathParam("version", o.Version); err != nil {
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
