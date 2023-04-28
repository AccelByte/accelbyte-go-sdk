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
)

// NewPublicVerifyUserByLinkV3Params creates a new PublicVerifyUserByLinkV3Params object
// with the default values initialized.
func NewPublicVerifyUserByLinkV3Params() *PublicVerifyUserByLinkV3Params {
	var ()
	return &PublicVerifyUserByLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicVerifyUserByLinkV3ParamsWithTimeout creates a new PublicVerifyUserByLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicVerifyUserByLinkV3ParamsWithTimeout(timeout time.Duration) *PublicVerifyUserByLinkV3Params {
	var ()
	return &PublicVerifyUserByLinkV3Params{

		timeout: timeout,
	}
}

// NewPublicVerifyUserByLinkV3ParamsWithContext creates a new PublicVerifyUserByLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicVerifyUserByLinkV3ParamsWithContext(ctx context.Context) *PublicVerifyUserByLinkV3Params {
	var ()
	return &PublicVerifyUserByLinkV3Params{

		Context: ctx,
	}
}

// NewPublicVerifyUserByLinkV3ParamsWithHTTPClient creates a new PublicVerifyUserByLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicVerifyUserByLinkV3ParamsWithHTTPClient(client *http.Client) *PublicVerifyUserByLinkV3Params {
	var ()
	return &PublicVerifyUserByLinkV3Params{
		HTTPClient: client,
	}
}

/*PublicVerifyUserByLinkV3Params contains all the parameters to send to the API endpoint
for the public verify user by link v3 operation typically these are written to a http.Request
*/
type PublicVerifyUserByLinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  Verification code, it can be get from `/users/me/verify_link/request`

	*/
	Code *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) WithTimeout(timeout time.Duration) *PublicVerifyUserByLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) WithContext(ctx context.Context) *PublicVerifyUserByLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) WithHTTPClient(client *http.Client) *PublicVerifyUserByLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) WithCode(code *string) *PublicVerifyUserByLinkV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public verify user by link v3 params
func (o *PublicVerifyUserByLinkV3Params) SetCode(code *string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *PublicVerifyUserByLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
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
