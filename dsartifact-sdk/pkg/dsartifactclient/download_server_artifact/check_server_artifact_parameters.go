// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package download_server_artifact

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

// NewCheckServerArtifactParams creates a new CheckServerArtifactParams object
// with the default values initialized.
func NewCheckServerArtifactParams() *CheckServerArtifactParams {
	var ()
	return &CheckServerArtifactParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckServerArtifactParamsWithTimeout creates a new CheckServerArtifactParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckServerArtifactParamsWithTimeout(timeout time.Duration) *CheckServerArtifactParams {
	var ()
	return &CheckServerArtifactParams{

		timeout: timeout,
	}
}

// NewCheckServerArtifactParamsWithContext creates a new CheckServerArtifactParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckServerArtifactParamsWithContext(ctx context.Context) *CheckServerArtifactParams {
	var ()
	return &CheckServerArtifactParams{

		Context: ctx,
	}
}

// NewCheckServerArtifactParamsWithHTTPClient creates a new CheckServerArtifactParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckServerArtifactParamsWithHTTPClient(client *http.Client) *CheckServerArtifactParams {
	var ()
	return &CheckServerArtifactParams{
		HTTPClient: client,
	}
}

/*CheckServerArtifactParams contains all the parameters to send to the API endpoint
for the check server artifact operation typically these are written to a http.Request
*/
type CheckServerArtifactParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  name of the DS pod

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the check server artifact params
func (o *CheckServerArtifactParams) WithTimeout(timeout time.Duration) *CheckServerArtifactParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check server artifact params
func (o *CheckServerArtifactParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check server artifact params
func (o *CheckServerArtifactParams) WithContext(ctx context.Context) *CheckServerArtifactParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check server artifact params
func (o *CheckServerArtifactParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check server artifact params
func (o *CheckServerArtifactParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check server artifact params
func (o *CheckServerArtifactParams) WithHTTPClient(client *http.Client) *CheckServerArtifactParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check server artifact params
func (o *CheckServerArtifactParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check server artifact params
func (o *CheckServerArtifactParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CheckServerArtifactParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the check server artifact params
func (o *CheckServerArtifactParams) WithNamespace(namespace string) *CheckServerArtifactParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check server artifact params
func (o *CheckServerArtifactParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the check server artifact params
func (o *CheckServerArtifactParams) WithPodName(podName string) *CheckServerArtifactParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the check server artifact params
func (o *CheckServerArtifactParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *CheckServerArtifactParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param podName
	if err := r.SetPathParam("podName", o.PodName); err != nil {
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
