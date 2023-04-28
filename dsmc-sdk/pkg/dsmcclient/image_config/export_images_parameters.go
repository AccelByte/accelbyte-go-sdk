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

// NewExportImagesParams creates a new ExportImagesParams object
// with the default values initialized.
func NewExportImagesParams() *ExportImagesParams {
	var ()
	return &ExportImagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportImagesParamsWithTimeout creates a new ExportImagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportImagesParamsWithTimeout(timeout time.Duration) *ExportImagesParams {
	var ()
	return &ExportImagesParams{

		timeout: timeout,
	}
}

// NewExportImagesParamsWithContext creates a new ExportImagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportImagesParamsWithContext(ctx context.Context) *ExportImagesParams {
	var ()
	return &ExportImagesParams{

		Context: ctx,
	}
}

// NewExportImagesParamsWithHTTPClient creates a new ExportImagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportImagesParamsWithHTTPClient(client *http.Client) *ExportImagesParams {
	var ()
	return &ExportImagesParams{
		HTTPClient: client,
	}
}

/*ExportImagesParams contains all the parameters to send to the API endpoint
for the export images operation typically these are written to a http.Request
*/
type ExportImagesParams struct {

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

// WithTimeout adds the timeout to the export images params
func (o *ExportImagesParams) WithTimeout(timeout time.Duration) *ExportImagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export images params
func (o *ExportImagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export images params
func (o *ExportImagesParams) WithContext(ctx context.Context) *ExportImagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export images params
func (o *ExportImagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export images params
func (o *ExportImagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export images params
func (o *ExportImagesParams) WithHTTPClient(client *http.Client) *ExportImagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export images params
func (o *ExportImagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export images params
func (o *ExportImagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the export images params
func (o *ExportImagesParams) WithNamespace(namespace string) *ExportImagesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export images params
func (o *ExportImagesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportImagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
