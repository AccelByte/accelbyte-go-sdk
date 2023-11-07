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

// NewRequestTargetTokenResponseV3Params creates a new RequestTargetTokenResponseV3Params object
// with the default values initialized.
func NewRequestTargetTokenResponseV3Params() *RequestTargetTokenResponseV3Params {
	var ()
	return &RequestTargetTokenResponseV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestTargetTokenResponseV3ParamsWithTimeout creates a new RequestTargetTokenResponseV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestTargetTokenResponseV3ParamsWithTimeout(timeout time.Duration) *RequestTargetTokenResponseV3Params {
	var ()
	return &RequestTargetTokenResponseV3Params{

		timeout: timeout,
	}
}

// NewRequestTargetTokenResponseV3ParamsWithContext creates a new RequestTargetTokenResponseV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestTargetTokenResponseV3ParamsWithContext(ctx context.Context) *RequestTargetTokenResponseV3Params {
	var ()
	return &RequestTargetTokenResponseV3Params{

		Context: ctx,
	}
}

// NewRequestTargetTokenResponseV3ParamsWithHTTPClient creates a new RequestTargetTokenResponseV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestTargetTokenResponseV3ParamsWithHTTPClient(client *http.Client) *RequestTargetTokenResponseV3Params {
	var ()
	return &RequestTargetTokenResponseV3Params{
		HTTPClient: client,
	}
}

/*RequestTargetTokenResponseV3Params contains all the parameters to send to the API endpoint
for the request target token response v3 operation typically these are written to a http.Request
*/
type RequestTargetTokenResponseV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*Code
	  code from request target token response

	*/
	Code string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) WithTimeout(timeout time.Duration) *RequestTargetTokenResponseV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) WithContext(ctx context.Context) *RequestTargetTokenResponseV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) WithHTTPClient(client *http.Client) *RequestTargetTokenResponseV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAdditionalData adds the additionalData to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) WithAdditionalData(additionalData *string) *RequestTargetTokenResponseV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithCode adds the code to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) WithCode(code string) *RequestTargetTokenResponseV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the request target token response v3 params
func (o *RequestTargetTokenResponseV3Params) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *RequestTargetTokenResponseV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
