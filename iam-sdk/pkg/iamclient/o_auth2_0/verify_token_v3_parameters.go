// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewVerifyTokenV3Params creates a new VerifyTokenV3Params object
// with the default values initialized.
func NewVerifyTokenV3Params() *VerifyTokenV3Params {
	var ()
	return &VerifyTokenV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewVerifyTokenV3ParamsWithTimeout creates a new VerifyTokenV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewVerifyTokenV3ParamsWithTimeout(timeout time.Duration) *VerifyTokenV3Params {
	var ()
	return &VerifyTokenV3Params{

		timeout: timeout,
	}
}

// NewVerifyTokenV3ParamsWithContext creates a new VerifyTokenV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewVerifyTokenV3ParamsWithContext(ctx context.Context) *VerifyTokenV3Params {
	var ()
	return &VerifyTokenV3Params{

		Context: ctx,
	}
}

// NewVerifyTokenV3ParamsWithHTTPClient creates a new VerifyTokenV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVerifyTokenV3ParamsWithHTTPClient(client *http.Client) *VerifyTokenV3Params {
	var ()
	return &VerifyTokenV3Params{
		HTTPClient: client,
	}
}

/*VerifyTokenV3Params contains all the parameters to send to the API endpoint
for the verify token v3 operation typically these are written to a http.Request
*/
type VerifyTokenV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Token
	  Token to be verified

	*/
	Token string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the verify token v3 params
func (o *VerifyTokenV3Params) WithTimeout(timeout time.Duration) *VerifyTokenV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the verify token v3 params
func (o *VerifyTokenV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the verify token v3 params
func (o *VerifyTokenV3Params) WithContext(ctx context.Context) *VerifyTokenV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the verify token v3 params
func (o *VerifyTokenV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the verify token v3 params
func (o *VerifyTokenV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the verify token v3 params
func (o *VerifyTokenV3Params) WithHTTPClient(client *http.Client) *VerifyTokenV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the verify token v3 params
func (o *VerifyTokenV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the verify token v3 params
func (o *VerifyTokenV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithToken adds the token to the verify token v3 params
func (o *VerifyTokenV3Params) WithToken(token string) *VerifyTokenV3Params {
	o.SetToken(token)
	return o
}

// SetToken adds the token to the verify token v3 params
func (o *VerifyTokenV3Params) SetToken(token string) {
	o.Token = token
}

// WriteToRequest writes these params to a swagger request
func (o *VerifyTokenV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param token
	frToken := o.Token
	fToken := frToken
	if fToken != "" {
		if err := r.SetFormParam("token", fToken); err != nil {
			return err
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
