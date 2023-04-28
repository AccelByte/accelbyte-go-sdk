// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewForgotPasswordParams creates a new ForgotPasswordParams object
// with the default values initialized.
func NewForgotPasswordParams() *ForgotPasswordParams {
	var ()
	return &ForgotPasswordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewForgotPasswordParamsWithTimeout creates a new ForgotPasswordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewForgotPasswordParamsWithTimeout(timeout time.Duration) *ForgotPasswordParams {
	var ()
	return &ForgotPasswordParams{

		timeout: timeout,
	}
}

// NewForgotPasswordParamsWithContext creates a new ForgotPasswordParams object
// with the default values initialized, and the ability to set a context for a request
func NewForgotPasswordParamsWithContext(ctx context.Context) *ForgotPasswordParams {
	var ()
	return &ForgotPasswordParams{

		Context: ctx,
	}
}

// NewForgotPasswordParamsWithHTTPClient creates a new ForgotPasswordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewForgotPasswordParamsWithHTTPClient(client *http.Client) *ForgotPasswordParams {
	var ()
	return &ForgotPasswordParams{
		HTTPClient: client,
	}
}

/*ForgotPasswordParams contains all the parameters to send to the API endpoint
for the forgot password operation typically these are written to a http.Request
*/
type ForgotPasswordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendVerificationCodeRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the forgot password params
func (o *ForgotPasswordParams) WithTimeout(timeout time.Duration) *ForgotPasswordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the forgot password params
func (o *ForgotPasswordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the forgot password params
func (o *ForgotPasswordParams) WithContext(ctx context.Context) *ForgotPasswordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the forgot password params
func (o *ForgotPasswordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the forgot password params
func (o *ForgotPasswordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the forgot password params
func (o *ForgotPasswordParams) WithHTTPClient(client *http.Client) *ForgotPasswordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the forgot password params
func (o *ForgotPasswordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the forgot password params
func (o *ForgotPasswordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the forgot password params
func (o *ForgotPasswordParams) WithBody(body *iamclientmodels.ModelSendVerificationCodeRequest) *ForgotPasswordParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the forgot password params
func (o *ForgotPasswordParams) SetBody(body *iamclientmodels.ModelSendVerificationCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the forgot password params
func (o *ForgotPasswordParams) WithNamespace(namespace string) *ForgotPasswordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the forgot password params
func (o *ForgotPasswordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ForgotPasswordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
