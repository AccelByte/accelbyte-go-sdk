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

// NewImportStatsParams creates a new ImportStatsParams object
// with the default values initialized.
func NewImportStatsParams() *ImportStatsParams {
	var ()
	return &ImportStatsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportStatsParamsWithTimeout creates a new ImportStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportStatsParamsWithTimeout(timeout time.Duration) *ImportStatsParams {
	var ()
	return &ImportStatsParams{

		timeout: timeout,
	}
}

// NewImportStatsParamsWithContext creates a new ImportStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportStatsParamsWithContext(ctx context.Context) *ImportStatsParams {
	var ()
	return &ImportStatsParams{

		Context: ctx,
	}
}

// NewImportStatsParamsWithHTTPClient creates a new ImportStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportStatsParamsWithHTTPClient(client *http.Client) *ImportStatsParams {
	var ()
	return &ImportStatsParams{
		HTTPClient: client,
	}
}

/*ImportStatsParams contains all the parameters to send to the API endpoint
for the import stats operation typically these are written to a http.Request
*/
type ImportStatsParams struct {

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

// WithTimeout adds the timeout to the import stats params
func (o *ImportStatsParams) WithTimeout(timeout time.Duration) *ImportStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import stats params
func (o *ImportStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import stats params
func (o *ImportStatsParams) WithContext(ctx context.Context) *ImportStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import stats params
func (o *ImportStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import stats params
func (o *ImportStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import stats params
func (o *ImportStatsParams) WithHTTPClient(client *http.Client) *ImportStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import stats params
func (o *ImportStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import stats params
func (o *ImportStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFile adds the file to the import stats params
func (o *ImportStatsParams) WithFile(file runtime.NamedReadCloser) *ImportStatsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import stats params
func (o *ImportStatsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import stats params
func (o *ImportStatsParams) WithNamespace(namespace string) *ImportStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import stats params
func (o *ImportStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReplaceExisting adds the replaceExisting to the import stats params
func (o *ImportStatsParams) WithReplaceExisting(replaceExisting *bool) *ImportStatsParams {
	o.SetReplaceExisting(replaceExisting)
	return o
}

// SetReplaceExisting adds the replaceExisting to the import stats params
func (o *ImportStatsParams) SetReplaceExisting(replaceExisting *bool) {
	o.ReplaceExisting = replaceExisting
}

// WriteToRequest writes these params to a swagger request
func (o *ImportStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
