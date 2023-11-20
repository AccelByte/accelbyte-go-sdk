// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewImportStatCycleParams creates a new ImportStatCycleParams object
// with the default values initialized.
func NewImportStatCycleParams() *ImportStatCycleParams {
	var ()
	return &ImportStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportStatCycleParamsWithTimeout creates a new ImportStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportStatCycleParamsWithTimeout(timeout time.Duration) *ImportStatCycleParams {
	var ()
	return &ImportStatCycleParams{

		timeout: timeout,
	}
}

// NewImportStatCycleParamsWithContext creates a new ImportStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportStatCycleParamsWithContext(ctx context.Context) *ImportStatCycleParams {
	var ()
	return &ImportStatCycleParams{

		Context: ctx,
	}
}

// NewImportStatCycleParamsWithHTTPClient creates a new ImportStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportStatCycleParamsWithHTTPClient(client *http.Client) *ImportStatCycleParams {
	var ()
	return &ImportStatCycleParams{
		HTTPClient: client,
	}
}

/*ImportStatCycleParams contains all the parameters to send to the API endpoint
for the import stat cycle operation typically these are written to a http.Request
*/
type ImportStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ReplaceExisting
	  replaceExisting

	*/
	ReplaceExisting *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the import stat cycle params
func (o *ImportStatCycleParams) WithTimeout(timeout time.Duration) *ImportStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import stat cycle params
func (o *ImportStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import stat cycle params
func (o *ImportStatCycleParams) WithContext(ctx context.Context) *ImportStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import stat cycle params
func (o *ImportStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import stat cycle params
func (o *ImportStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import stat cycle params
func (o *ImportStatCycleParams) WithHTTPClient(client *http.Client) *ImportStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import stat cycle params
func (o *ImportStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import stat cycle params
func (o *ImportStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFile adds the file to the import stat cycle params
func (o *ImportStatCycleParams) WithFile(file runtime.NamedReadCloser) *ImportStatCycleParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import stat cycle params
func (o *ImportStatCycleParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import stat cycle params
func (o *ImportStatCycleParams) WithNamespace(namespace string) *ImportStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import stat cycle params
func (o *ImportStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReplaceExisting adds the replaceExisting to the import stat cycle params
func (o *ImportStatCycleParams) WithReplaceExisting(replaceExisting *bool) *ImportStatCycleParams {
	o.SetReplaceExisting(replaceExisting)
	return o
}

// SetReplaceExisting adds the replaceExisting to the import stat cycle params
func (o *ImportStatCycleParams) SetReplaceExisting(replaceExisting *bool) {
	o.ReplaceExisting = replaceExisting
}

// WriteToRequest writes these params to a swagger request
func (o *ImportStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ReplaceExisting != nil {

		// query param replaceExisting
		var qrReplaceExisting bool
		if o.ReplaceExisting != nil {
			qrReplaceExisting = *o.ReplaceExisting
		}
		qReplaceExisting := swag.FormatBool(qrReplaceExisting)
		if qReplaceExisting != "" {
			if err := r.SetQueryParam("replaceExisting", qReplaceExisting); err != nil {
				return err
			}
		}

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
