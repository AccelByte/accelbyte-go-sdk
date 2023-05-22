// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// NewDeletePodConfigClientParams creates a new DeletePodConfigClientParams object
// with the default values initialized.
func NewDeletePodConfigClientParams() *DeletePodConfigClientParams {
	var ()
	return &DeletePodConfigClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePodConfigClientParamsWithTimeout creates a new DeletePodConfigClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePodConfigClientParamsWithTimeout(timeout time.Duration) *DeletePodConfigClientParams {
	var ()
	return &DeletePodConfigClientParams{

		timeout: timeout,
	}
}

// NewDeletePodConfigClientParamsWithContext creates a new DeletePodConfigClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePodConfigClientParamsWithContext(ctx context.Context) *DeletePodConfigClientParams {
	var ()
	return &DeletePodConfigClientParams{

		Context: ctx,
	}
}

// NewDeletePodConfigClientParamsWithHTTPClient creates a new DeletePodConfigClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePodConfigClientParamsWithHTTPClient(client *http.Client) *DeletePodConfigClientParams {
	var ()
	return &DeletePodConfigClientParams{
		HTTPClient: client,
	}
}

/*DeletePodConfigClientParams contains all the parameters to send to the API endpoint
for the delete pod config client operation typically these are written to a http.Request
*/
type DeletePodConfigClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  pod name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete pod config client params
func (o *DeletePodConfigClientParams) WithTimeout(timeout time.Duration) *DeletePodConfigClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete pod config client params
func (o *DeletePodConfigClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete pod config client params
func (o *DeletePodConfigClientParams) WithContext(ctx context.Context) *DeletePodConfigClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete pod config client params
func (o *DeletePodConfigClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete pod config client params
func (o *DeletePodConfigClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete pod config client params
func (o *DeletePodConfigClientParams) WithHTTPClient(client *http.Client) *DeletePodConfigClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete pod config client params
func (o *DeletePodConfigClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete pod config client params
func (o *DeletePodConfigClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithName adds the name to the delete pod config client params
func (o *DeletePodConfigClientParams) WithName(name string) *DeletePodConfigClientParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the delete pod config client params
func (o *DeletePodConfigClientParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the delete pod config client params
func (o *DeletePodConfigClientParams) WithNamespace(namespace string) *DeletePodConfigClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete pod config client params
func (o *DeletePodConfigClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePodConfigClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
