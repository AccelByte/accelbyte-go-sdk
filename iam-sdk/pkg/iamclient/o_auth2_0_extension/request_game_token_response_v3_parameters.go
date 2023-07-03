// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// NewRequestGameTokenResponseV3Params creates a new RequestGameTokenResponseV3Params object
// with the default values initialized.
func NewRequestGameTokenResponseV3Params() *RequestGameTokenResponseV3Params {
	var ()
	return &RequestGameTokenResponseV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestGameTokenResponseV3ParamsWithTimeout creates a new RequestGameTokenResponseV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestGameTokenResponseV3ParamsWithTimeout(timeout time.Duration) *RequestGameTokenResponseV3Params {
	var ()
	return &RequestGameTokenResponseV3Params{

		timeout: timeout,
	}
}

// NewRequestGameTokenResponseV3ParamsWithContext creates a new RequestGameTokenResponseV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestGameTokenResponseV3ParamsWithContext(ctx context.Context) *RequestGameTokenResponseV3Params {
	var ()
	return &RequestGameTokenResponseV3Params{

		Context: ctx,
	}
}

// NewRequestGameTokenResponseV3ParamsWithHTTPClient creates a new RequestGameTokenResponseV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestGameTokenResponseV3ParamsWithHTTPClient(client *http.Client) *RequestGameTokenResponseV3Params {
	var ()
	return &RequestGameTokenResponseV3Params{
		HTTPClient: client,
	}
}

/*RequestGameTokenResponseV3Params contains all the parameters to send to the API endpoint
for the request game token response v3 operation typically these are written to a http.Request
*/
type RequestGameTokenResponseV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*Code
	  code from request game token

	*/
	Code string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) WithTimeout(timeout time.Duration) *RequestGameTokenResponseV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) WithContext(ctx context.Context) *RequestGameTokenResponseV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) WithHTTPClient(client *http.Client) *RequestGameTokenResponseV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAdditionalData adds the additionalData to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) WithAdditionalData(additionalData *string) *RequestGameTokenResponseV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithCode adds the code to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) WithCode(code string) *RequestGameTokenResponseV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the request game token response v3 params
func (o *RequestGameTokenResponseV3Params) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *RequestGameTokenResponseV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdditionalData != nil {

		// form param additionalData
		var frAdditionalData string
		if o.AdditionalData != nil {
			frAdditionalData = *o.AdditionalData
		}
		fAdditionalData := frAdditionalData
		if fAdditionalData != "" {
			if err := r.SetFormParam("additionalData", fAdditionalData); err != nil {
				return err
			}
		}

	}

	// form param code
	frCode := o.Code
	fCode := frCode
	if fCode != "" {
		if err := r.SetFormParam("code", fCode); err != nil {
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
