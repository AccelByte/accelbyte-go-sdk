// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewExportConfigParams creates a new ExportConfigParams object
// with the default values initialized.
func NewExportConfigParams() *ExportConfigParams {
	var ()
	return &ExportConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportConfigParamsWithTimeout creates a new ExportConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportConfigParamsWithTimeout(timeout time.Duration) *ExportConfigParams {
	var ()
	return &ExportConfigParams{

		timeout: timeout,
	}
}

// NewExportConfigParamsWithContext creates a new ExportConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportConfigParamsWithContext(ctx context.Context) *ExportConfigParams {
	var ()
	return &ExportConfigParams{

		Context: ctx,
	}
}

// NewExportConfigParamsWithHTTPClient creates a new ExportConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportConfigParamsWithHTTPClient(client *http.Client) *ExportConfigParams {
	var ()
	return &ExportConfigParams{
		HTTPClient: client,
	}
}

/*ExportConfigParams contains all the parameters to send to the API endpoint
for the export config operation typically these are written to a http.Request
*/
type ExportConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the export config params
func (o *ExportConfigParams) WithTimeout(timeout time.Duration) *ExportConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export config params
func (o *ExportConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export config params
func (o *ExportConfigParams) WithContext(ctx context.Context) *ExportConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export config params
func (o *ExportConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export config params
func (o *ExportConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export config params
func (o *ExportConfigParams) WithHTTPClient(client *http.Client) *ExportConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export config params
func (o *ExportConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export config params
func (o *ExportConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the export config params
func (o *ExportConfigParams) WithNamespace(namespace string) *ExportConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export config params
func (o *ExportConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
