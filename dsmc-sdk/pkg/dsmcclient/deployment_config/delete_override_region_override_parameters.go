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

// NewDeleteOverrideRegionOverrideParams creates a new DeleteOverrideRegionOverrideParams object
// with the default values initialized.
func NewDeleteOverrideRegionOverrideParams() *DeleteOverrideRegionOverrideParams {
	var ()
	return &DeleteOverrideRegionOverrideParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteOverrideRegionOverrideParamsWithTimeout creates a new DeleteOverrideRegionOverrideParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteOverrideRegionOverrideParamsWithTimeout(timeout time.Duration) *DeleteOverrideRegionOverrideParams {
	var ()
	return &DeleteOverrideRegionOverrideParams{

		timeout: timeout,
	}
}

// NewDeleteOverrideRegionOverrideParamsWithContext creates a new DeleteOverrideRegionOverrideParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteOverrideRegionOverrideParamsWithContext(ctx context.Context) *DeleteOverrideRegionOverrideParams {
	var ()
	return &DeleteOverrideRegionOverrideParams{

		Context: ctx,
	}
}

// NewDeleteOverrideRegionOverrideParamsWithHTTPClient creates a new DeleteOverrideRegionOverrideParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteOverrideRegionOverrideParamsWithHTTPClient(client *http.Client) *DeleteOverrideRegionOverrideParams {
	var ()
	return &DeleteOverrideRegionOverrideParams{
		HTTPClient: client,
	}
}

/*DeleteOverrideRegionOverrideParams contains all the parameters to send to the API endpoint
for the delete override region override operation typically these are written to a http.Request
*/
type DeleteOverrideRegionOverrideParams struct {

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
	/*Region
	  region

	*/
	Region string
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

// WithTimeout adds the timeout to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithTimeout(timeout time.Duration) *DeleteOverrideRegionOverrideParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithContext(ctx context.Context) *DeleteOverrideRegionOverrideParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithHTTPClient(client *http.Client) *DeleteOverrideRegionOverrideParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteOverrideRegionOverrideParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithDeployment(deployment string) *DeleteOverrideRegionOverrideParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithNamespace(namespace string) *DeleteOverrideRegionOverrideParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithRegion(region string) *DeleteOverrideRegionOverrideParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetRegion(region string) {
	o.Region = region
}

// WithVersion adds the version to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) WithVersion(version string) *DeleteOverrideRegionOverrideParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the delete override region override params
func (o *DeleteOverrideRegionOverrideParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteOverrideRegionOverrideParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
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
