// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewReportUserParams creates a new ReportUserParams object
// with the default values initialized.
func NewReportUserParams() *ReportUserParams {
	var ()
	return &ReportUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewReportUserParamsWithTimeout creates a new ReportUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewReportUserParamsWithTimeout(timeout time.Duration) *ReportUserParams {
	var ()
	return &ReportUserParams{

		timeout: timeout,
	}
}

// NewReportUserParamsWithContext creates a new ReportUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewReportUserParamsWithContext(ctx context.Context) *ReportUserParams {
	var ()
	return &ReportUserParams{

		Context: ctx,
	}
}

// NewReportUserParamsWithHTTPClient creates a new ReportUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewReportUserParamsWithHTTPClient(client *http.Client) *ReportUserParams {
	var ()
	return &ReportUserParams{
		HTTPClient: client,
	}
}

/*ReportUserParams contains all the parameters to send to the API endpoint
for the report user operation typically these are written to a http.Request
*/
type ReportUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserReportRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the report user params
func (o *ReportUserParams) WithTimeout(timeout time.Duration) *ReportUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the report user params
func (o *ReportUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the report user params
func (o *ReportUserParams) WithContext(ctx context.Context) *ReportUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the report user params
func (o *ReportUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the report user params
func (o *ReportUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the report user params
func (o *ReportUserParams) WithHTTPClient(client *http.Client) *ReportUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the report user params
func (o *ReportUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the report user params
func (o *ReportUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the report user params
func (o *ReportUserParams) WithBody(body *basicclientmodels.UserReportRequest) *ReportUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the report user params
func (o *ReportUserParams) SetBody(body *basicclientmodels.UserReportRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the report user params
func (o *ReportUserParams) WithNamespace(namespace string) *ReportUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the report user params
func (o *ReportUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ReportUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
