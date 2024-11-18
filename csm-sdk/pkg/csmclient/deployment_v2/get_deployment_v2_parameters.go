// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_v2

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

// NewGetDeploymentV2Params creates a new GetDeploymentV2Params object
// with the default values initialized.
func NewGetDeploymentV2Params() *GetDeploymentV2Params {
	var ()
	return &GetDeploymentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDeploymentV2ParamsWithTimeout creates a new GetDeploymentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDeploymentV2ParamsWithTimeout(timeout time.Duration) *GetDeploymentV2Params {
	var ()
	return &GetDeploymentV2Params{

		timeout: timeout,
	}
}

// NewGetDeploymentV2ParamsWithContext creates a new GetDeploymentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetDeploymentV2ParamsWithContext(ctx context.Context) *GetDeploymentV2Params {
	var ()
	return &GetDeploymentV2Params{

		Context: ctx,
	}
}

// NewGetDeploymentV2ParamsWithHTTPClient creates a new GetDeploymentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDeploymentV2ParamsWithHTTPClient(client *http.Client) *GetDeploymentV2Params {
	var ()
	return &GetDeploymentV2Params{
		HTTPClient: client,
	}
}

/*GetDeploymentV2Params contains all the parameters to send to the API endpoint
for the get deployment v2 operation typically these are written to a http.Request
*/
type GetDeploymentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DeploymentID
	  Deployment ID

	*/
	DeploymentID string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get deployment v2 params
func (o *GetDeploymentV2Params) WithTimeout(timeout time.Duration) *GetDeploymentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get deployment v2 params
func (o *GetDeploymentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get deployment v2 params
func (o *GetDeploymentV2Params) WithContext(ctx context.Context) *GetDeploymentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get deployment v2 params
func (o *GetDeploymentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get deployment v2 params
func (o *GetDeploymentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get deployment v2 params
func (o *GetDeploymentV2Params) WithHTTPClient(client *http.Client) *GetDeploymentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get deployment v2 params
func (o *GetDeploymentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get deployment v2 params
func (o *GetDeploymentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetDeploymentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeploymentID adds the deploymentID to the get deployment v2 params
func (o *GetDeploymentV2Params) WithDeploymentID(deploymentID string) *GetDeploymentV2Params {
	o.SetDeploymentID(deploymentID)
	return o
}

// SetDeploymentID adds the deploymentId to the get deployment v2 params
func (o *GetDeploymentV2Params) SetDeploymentID(deploymentID string) {
	o.DeploymentID = deploymentID
}

// WithNamespace adds the namespace to the get deployment v2 params
func (o *GetDeploymentV2Params) WithNamespace(namespace string) *GetDeploymentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get deployment v2 params
func (o *GetDeploymentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetDeploymentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param deploymentId
	if err := r.SetPathParam("deploymentId", o.DeploymentID); err != nil {
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
