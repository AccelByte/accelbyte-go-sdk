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

// NewPublicSendRegistrationCodeParams creates a new PublicSendRegistrationCodeParams object
// with the default values initialized.
func NewPublicSendRegistrationCodeParams() *PublicSendRegistrationCodeParams {
	var ()
	return &PublicSendRegistrationCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSendRegistrationCodeParamsWithTimeout creates a new PublicSendRegistrationCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSendRegistrationCodeParamsWithTimeout(timeout time.Duration) *PublicSendRegistrationCodeParams {
	var ()
	return &PublicSendRegistrationCodeParams{

		timeout: timeout,
	}
}

// NewPublicSendRegistrationCodeParamsWithContext creates a new PublicSendRegistrationCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSendRegistrationCodeParamsWithContext(ctx context.Context) *PublicSendRegistrationCodeParams {
	var ()
	return &PublicSendRegistrationCodeParams{

		Context: ctx,
	}
}

// NewPublicSendRegistrationCodeParamsWithHTTPClient creates a new PublicSendRegistrationCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSendRegistrationCodeParamsWithHTTPClient(client *http.Client) *PublicSendRegistrationCodeParams {
	var ()
	return &PublicSendRegistrationCodeParams{
		HTTPClient: client,
	}
}

/*PublicSendRegistrationCodeParams contains all the parameters to send to the API endpoint
for the public send registration code operation typically these are written to a http.Request
*/
type PublicSendRegistrationCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendRegisterVerificationCodeRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public send registration code params
func (o *PublicSendRegistrationCodeParams) WithTimeout(timeout time.Duration) *PublicSendRegistrationCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public send registration code params
func (o *PublicSendRegistrationCodeParams) WithContext(ctx context.Context) *PublicSendRegistrationCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public send registration code params
func (o *PublicSendRegistrationCodeParams) WithHTTPClient(client *http.Client) *PublicSendRegistrationCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public send registration code params
func (o *PublicSendRegistrationCodeParams) WithBody(body *iamclientmodels.ModelSendRegisterVerificationCodeRequest) *PublicSendRegistrationCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetBody(body *iamclientmodels.ModelSendRegisterVerificationCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public send registration code params
func (o *PublicSendRegistrationCodeParams) WithNamespace(namespace string) *PublicSendRegistrationCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public send registration code params
func (o *PublicSendRegistrationCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSendRegistrationCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
