// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicSessionJoinCodeParams creates a new PublicSessionJoinCodeParams object
// with the default values initialized.
func NewPublicSessionJoinCodeParams() *PublicSessionJoinCodeParams {
	var ()
	return &PublicSessionJoinCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSessionJoinCodeParamsWithTimeout creates a new PublicSessionJoinCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSessionJoinCodeParamsWithTimeout(timeout time.Duration) *PublicSessionJoinCodeParams {
	var ()
	return &PublicSessionJoinCodeParams{

		timeout: timeout,
	}
}

// NewPublicSessionJoinCodeParamsWithContext creates a new PublicSessionJoinCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSessionJoinCodeParamsWithContext(ctx context.Context) *PublicSessionJoinCodeParams {
	var ()
	return &PublicSessionJoinCodeParams{

		Context: ctx,
	}
}

// NewPublicSessionJoinCodeParamsWithHTTPClient creates a new PublicSessionJoinCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSessionJoinCodeParamsWithHTTPClient(client *http.Client) *PublicSessionJoinCodeParams {
	var ()
	return &PublicSessionJoinCodeParams{
		HTTPClient: client,
	}
}

/*PublicSessionJoinCodeParams contains all the parameters to send to the API endpoint
for the public session join code operation typically these are written to a http.Request
*/
type PublicSessionJoinCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsJoinByCodeRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public session join code params
func (o *PublicSessionJoinCodeParams) WithTimeout(timeout time.Duration) *PublicSessionJoinCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public session join code params
func (o *PublicSessionJoinCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public session join code params
func (o *PublicSessionJoinCodeParams) WithContext(ctx context.Context) *PublicSessionJoinCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public session join code params
func (o *PublicSessionJoinCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public session join code params
func (o *PublicSessionJoinCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public session join code params
func (o *PublicSessionJoinCodeParams) WithHTTPClient(client *http.Client) *PublicSessionJoinCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public session join code params
func (o *PublicSessionJoinCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public session join code params
func (o *PublicSessionJoinCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public session join code params
func (o *PublicSessionJoinCodeParams) WithBody(body *sessionclientmodels.ApimodelsJoinByCodeRequest) *PublicSessionJoinCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public session join code params
func (o *PublicSessionJoinCodeParams) SetBody(body *sessionclientmodels.ApimodelsJoinByCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public session join code params
func (o *PublicSessionJoinCodeParams) WithNamespace(namespace string) *PublicSessionJoinCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public session join code params
func (o *PublicSessionJoinCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSessionJoinCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
