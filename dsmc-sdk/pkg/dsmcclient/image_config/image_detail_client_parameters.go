// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

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

// NewImageDetailClientParams creates a new ImageDetailClientParams object
// with the default values initialized.
func NewImageDetailClientParams() *ImageDetailClientParams {
	var ()
	return &ImageDetailClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageDetailClientParamsWithTimeout creates a new ImageDetailClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageDetailClientParamsWithTimeout(timeout time.Duration) *ImageDetailClientParams {
	var ()
	return &ImageDetailClientParams{

		timeout: timeout,
	}
}

// NewImageDetailClientParamsWithContext creates a new ImageDetailClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageDetailClientParamsWithContext(ctx context.Context) *ImageDetailClientParams {
	var ()
	return &ImageDetailClientParams{

		Context: ctx,
	}
}

// NewImageDetailClientParamsWithHTTPClient creates a new ImageDetailClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageDetailClientParamsWithHTTPClient(client *http.Client) *ImageDetailClientParams {
	var ()
	return &ImageDetailClientParams{
		HTTPClient: client,
	}
}

/*ImageDetailClientParams contains all the parameters to send to the API endpoint
for the image detail client operation typically these are written to a http.Request
*/
type ImageDetailClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Version
	  version of the image

	*/
	Version string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the image detail client params
func (o *ImageDetailClientParams) WithTimeout(timeout time.Duration) *ImageDetailClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image detail client params
func (o *ImageDetailClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image detail client params
func (o *ImageDetailClientParams) WithContext(ctx context.Context) *ImageDetailClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image detail client params
func (o *ImageDetailClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image detail client params
func (o *ImageDetailClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image detail client params
func (o *ImageDetailClientParams) WithHTTPClient(client *http.Client) *ImageDetailClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image detail client params
func (o *ImageDetailClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image detail client params
func (o *ImageDetailClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the image detail client params
func (o *ImageDetailClientParams) WithNamespace(namespace string) *ImageDetailClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image detail client params
func (o *ImageDetailClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the image detail client params
func (o *ImageDetailClientParams) WithVersion(version string) *ImageDetailClientParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the image detail client params
func (o *ImageDetailClientParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *ImageDetailClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
