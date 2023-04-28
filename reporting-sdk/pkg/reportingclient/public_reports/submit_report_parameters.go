// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_reports

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewSubmitReportParams creates a new SubmitReportParams object
// with the default values initialized.
func NewSubmitReportParams() *SubmitReportParams {
	var ()
	return &SubmitReportParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSubmitReportParamsWithTimeout creates a new SubmitReportParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSubmitReportParamsWithTimeout(timeout time.Duration) *SubmitReportParams {
	var ()
	return &SubmitReportParams{

		timeout: timeout,
	}
}

// NewSubmitReportParamsWithContext creates a new SubmitReportParams object
// with the default values initialized, and the ability to set a context for a request
func NewSubmitReportParamsWithContext(ctx context.Context) *SubmitReportParams {
	var ()
	return &SubmitReportParams{

		Context: ctx,
	}
}

// NewSubmitReportParamsWithHTTPClient creates a new SubmitReportParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSubmitReportParamsWithHTTPClient(client *http.Client) *SubmitReportParams {
	var ()
	return &SubmitReportParams{
		HTTPClient: client,
	}
}

/*SubmitReportParams contains all the parameters to send to the API endpoint
for the submit report operation typically these are written to a http.Request
*/
type SubmitReportParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiSubmitReportRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the submit report params
func (o *SubmitReportParams) WithTimeout(timeout time.Duration) *SubmitReportParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the submit report params
func (o *SubmitReportParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the submit report params
func (o *SubmitReportParams) WithContext(ctx context.Context) *SubmitReportParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the submit report params
func (o *SubmitReportParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the submit report params
func (o *SubmitReportParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the submit report params
func (o *SubmitReportParams) WithHTTPClient(client *http.Client) *SubmitReportParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the submit report params
func (o *SubmitReportParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the submit report params
func (o *SubmitReportParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the submit report params
func (o *SubmitReportParams) WithBody(body *reportingclientmodels.RestapiSubmitReportRequest) *SubmitReportParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the submit report params
func (o *SubmitReportParams) SetBody(body *reportingclientmodels.RestapiSubmitReportRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the submit report params
func (o *SubmitReportParams) WithNamespace(namespace string) *SubmitReportParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the submit report params
func (o *SubmitReportParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SubmitReportParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
