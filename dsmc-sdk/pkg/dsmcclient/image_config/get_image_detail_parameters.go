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

// NewGetImageDetailParams creates a new GetImageDetailParams object
// with the default values initialized.
func NewGetImageDetailParams() *GetImageDetailParams {
	var ()
	return &GetImageDetailParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetImageDetailParamsWithTimeout creates a new GetImageDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetImageDetailParamsWithTimeout(timeout time.Duration) *GetImageDetailParams {
	var ()
	return &GetImageDetailParams{

		timeout: timeout,
	}
}

// NewGetImageDetailParamsWithContext creates a new GetImageDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetImageDetailParamsWithContext(ctx context.Context) *GetImageDetailParams {
	var ()
	return &GetImageDetailParams{

		Context: ctx,
	}
}

// NewGetImageDetailParamsWithHTTPClient creates a new GetImageDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetImageDetailParamsWithHTTPClient(client *http.Client) *GetImageDetailParams {
	var ()
	return &GetImageDetailParams{
		HTTPClient: client,
	}
}

/*GetImageDetailParams contains all the parameters to send to the API endpoint
for the get image detail operation typically these are written to a http.Request
*/
type GetImageDetailParams struct {

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

// WithTimeout adds the timeout to the get image detail params
func (o *GetImageDetailParams) WithTimeout(timeout time.Duration) *GetImageDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get image detail params
func (o *GetImageDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get image detail params
func (o *GetImageDetailParams) WithContext(ctx context.Context) *GetImageDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get image detail params
func (o *GetImageDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get image detail params
func (o *GetImageDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get image detail params
func (o *GetImageDetailParams) WithHTTPClient(client *http.Client) *GetImageDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get image detail params
func (o *GetImageDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get image detail params
func (o *GetImageDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get image detail params
func (o *GetImageDetailParams) WithNamespace(namespace string) *GetImageDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get image detail params
func (o *GetImageDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the get image detail params
func (o *GetImageDetailParams) WithVersion(version string) *GetImageDetailParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the get image detail params
func (o *GetImageDetailParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *GetImageDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
