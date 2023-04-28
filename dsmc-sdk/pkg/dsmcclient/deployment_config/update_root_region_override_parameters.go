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

// NewUpdateRootRegionOverrideParams creates a new UpdateRootRegionOverrideParams object
// with the default values initialized.
func NewUpdateRootRegionOverrideParams() *UpdateRootRegionOverrideParams {
	var ()
	return &UpdateRootRegionOverrideParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRootRegionOverrideParamsWithTimeout creates a new UpdateRootRegionOverrideParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRootRegionOverrideParamsWithTimeout(timeout time.Duration) *UpdateRootRegionOverrideParams {
	var ()
	return &UpdateRootRegionOverrideParams{

		timeout: timeout,
	}
}

// NewUpdateRootRegionOverrideParamsWithContext creates a new UpdateRootRegionOverrideParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRootRegionOverrideParamsWithContext(ctx context.Context) *UpdateRootRegionOverrideParams {
	var ()
	return &UpdateRootRegionOverrideParams{

		Context: ctx,
	}
}

// NewUpdateRootRegionOverrideParamsWithHTTPClient creates a new UpdateRootRegionOverrideParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRootRegionOverrideParamsWithHTTPClient(client *http.Client) *UpdateRootRegionOverrideParams {
	var ()
	return &UpdateRootRegionOverrideParams{
		HTTPClient: client,
	}
}

/*UpdateRootRegionOverrideParams contains all the parameters to send to the API endpoint
for the update root region override operation typically these are written to a http.Request
*/
type UpdateRootRegionOverrideParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest
	/*Deployment
	  deployment name

	*/
	Deployment string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithTimeout(timeout time.Duration) *UpdateRootRegionOverrideParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithContext(ctx context.Context) *UpdateRootRegionOverrideParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithHTTPClient(client *http.Client) *UpdateRootRegionOverrideParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithBody(body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest) *UpdateRootRegionOverrideParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetBody(body *dsmcclientmodels.ModelsUpdateRegionOverrideRequest) {
	o.Body = body
}

// WithDeployment adds the deployment to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithDeployment(deployment string) *UpdateRootRegionOverrideParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithNamespace(namespace string) *UpdateRootRegionOverrideParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the update root region override params
func (o *UpdateRootRegionOverrideParams) WithRegion(region string) *UpdateRootRegionOverrideParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the update root region override params
func (o *UpdateRootRegionOverrideParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRootRegionOverrideParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
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
