// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// NewRequestTargetTokenResponseV4Params creates a new RequestTargetTokenResponseV4Params object
// with the default values initialized.
func NewRequestTargetTokenResponseV4Params() *RequestTargetTokenResponseV4Params {
	var ()
	return &RequestTargetTokenResponseV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestTargetTokenResponseV4ParamsWithTimeout creates a new RequestTargetTokenResponseV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestTargetTokenResponseV4ParamsWithTimeout(timeout time.Duration) *RequestTargetTokenResponseV4Params {
	var ()
	return &RequestTargetTokenResponseV4Params{

		timeout: timeout,
	}
}

// NewRequestTargetTokenResponseV4ParamsWithContext creates a new RequestTargetTokenResponseV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestTargetTokenResponseV4ParamsWithContext(ctx context.Context) *RequestTargetTokenResponseV4Params {
	var ()
	return &RequestTargetTokenResponseV4Params{

		Context: ctx,
	}
}

// NewRequestTargetTokenResponseV4ParamsWithHTTPClient creates a new RequestTargetTokenResponseV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestTargetTokenResponseV4ParamsWithHTTPClient(client *http.Client) *RequestTargetTokenResponseV4Params {
	var ()
	return &RequestTargetTokenResponseV4Params{
		HTTPClient: client,
	}
}

/*RequestTargetTokenResponseV4Params contains all the parameters to send to the API endpoint
for the request target token response v4 operation typically these are written to a http.Request
*/
type RequestTargetTokenResponseV4Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) WithTimeout(timeout time.Duration) *RequestTargetTokenResponseV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) WithContext(ctx context.Context) *RequestTargetTokenResponseV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) WithHTTPClient(client *http.Client) *RequestTargetTokenResponseV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RequestTargetTokenResponseV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAdditionalData adds the additionalData to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) WithAdditionalData(additionalData *string) *RequestTargetTokenResponseV4Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithCode adds the code to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) WithCode(code string) *RequestTargetTokenResponseV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the request target token response v4 params
func (o *RequestTargetTokenResponseV4Params) SetCode(code string) {
	o.Code = code
}

// WriteToRequest writes these params to a swagger request
func (o *RequestTargetTokenResponseV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
