// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package images

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

// NewImageListParams creates a new ImageListParams object
// with the default values initialized.
func NewImageListParams() *ImageListParams {
	var ()
	return &ImageListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageListParamsWithTimeout creates a new ImageListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageListParamsWithTimeout(timeout time.Duration) *ImageListParams {
	var ()
	return &ImageListParams{

		timeout: timeout,
	}
}

// NewImageListParamsWithContext creates a new ImageListParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageListParamsWithContext(ctx context.Context) *ImageListParams {
	var ()
	return &ImageListParams{

		Context: ctx,
	}
}

// NewImageListParamsWithHTTPClient creates a new ImageListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageListParamsWithHTTPClient(client *http.Client) *ImageListParams {
	var ()
	return &ImageListParams{
		HTTPClient: client,
	}
}

/*ImageListParams contains all the parameters to send to the API endpoint
for the image list operation typically these are written to a http.Request
*/
type ImageListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the image list params
func (o *ImageListParams) WithTimeout(timeout time.Duration) *ImageListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image list params
func (o *ImageListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image list params
func (o *ImageListParams) WithContext(ctx context.Context) *ImageListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image list params
func (o *ImageListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image list params
func (o *ImageListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image list params
func (o *ImageListParams) WithHTTPClient(client *http.Client) *ImageListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image list params
func (o *ImageListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image list params
func (o *ImageListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the image list params
func (o *ImageListParams) WithNamespace(namespace string) *ImageListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image list params
func (o *ImageListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImageListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
