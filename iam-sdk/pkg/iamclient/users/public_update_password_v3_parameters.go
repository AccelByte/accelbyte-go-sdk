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

// NewPublicUpdatePasswordV3Params creates a new PublicUpdatePasswordV3Params object
// with the default values initialized.
func NewPublicUpdatePasswordV3Params() *PublicUpdatePasswordV3Params {
	var ()
	return &PublicUpdatePasswordV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdatePasswordV3ParamsWithTimeout creates a new PublicUpdatePasswordV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdatePasswordV3ParamsWithTimeout(timeout time.Duration) *PublicUpdatePasswordV3Params {
	var ()
	return &PublicUpdatePasswordV3Params{

		timeout: timeout,
	}
}

// NewPublicUpdatePasswordV3ParamsWithContext creates a new PublicUpdatePasswordV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdatePasswordV3ParamsWithContext(ctx context.Context) *PublicUpdatePasswordV3Params {
	var ()
	return &PublicUpdatePasswordV3Params{

		Context: ctx,
	}
}

// NewPublicUpdatePasswordV3ParamsWithHTTPClient creates a new PublicUpdatePasswordV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdatePasswordV3ParamsWithHTTPClient(client *http.Client) *PublicUpdatePasswordV3Params {
	var ()
	return &PublicUpdatePasswordV3Params{
		HTTPClient: client,
	}
}

/*PublicUpdatePasswordV3Params contains all the parameters to send to the API endpoint
for the public update password v3 operation typically these are written to a http.Request
*/
type PublicUpdatePasswordV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserPasswordUpdateV3Request
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) WithTimeout(timeout time.Duration) *PublicUpdatePasswordV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) WithContext(ctx context.Context) *PublicUpdatePasswordV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) WithHTTPClient(client *http.Client) *PublicUpdatePasswordV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) WithBody(body *iamclientmodels.ModelUserPasswordUpdateV3Request) *PublicUpdatePasswordV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetBody(body *iamclientmodels.ModelUserPasswordUpdateV3Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) WithNamespace(namespace string) *PublicUpdatePasswordV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update password v3 params
func (o *PublicUpdatePasswordV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdatePasswordV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
