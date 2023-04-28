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

// NewRequestOneTimeLinkingCodeV3Params creates a new RequestOneTimeLinkingCodeV3Params object
// with the default values initialized.
func NewRequestOneTimeLinkingCodeV3Params() *RequestOneTimeLinkingCodeV3Params {
	var ()
	return &RequestOneTimeLinkingCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestOneTimeLinkingCodeV3ParamsWithTimeout creates a new RequestOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestOneTimeLinkingCodeV3ParamsWithTimeout(timeout time.Duration) *RequestOneTimeLinkingCodeV3Params {
	var ()
	return &RequestOneTimeLinkingCodeV3Params{

		timeout: timeout,
	}
}

// NewRequestOneTimeLinkingCodeV3ParamsWithContext creates a new RequestOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestOneTimeLinkingCodeV3ParamsWithContext(ctx context.Context) *RequestOneTimeLinkingCodeV3Params {
	var ()
	return &RequestOneTimeLinkingCodeV3Params{

		Context: ctx,
	}
}

// NewRequestOneTimeLinkingCodeV3ParamsWithHTTPClient creates a new RequestOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestOneTimeLinkingCodeV3ParamsWithHTTPClient(client *http.Client) *RequestOneTimeLinkingCodeV3Params {
	var ()
	return &RequestOneTimeLinkingCodeV3Params{
		HTTPClient: client,
	}
}

/*RequestOneTimeLinkingCodeV3Params contains all the parameters to send to the API endpoint
for the request one time linking code v3 operation typically these are written to a http.Request
*/
type RequestOneTimeLinkingCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Target platform ID for linking

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) WithTimeout(timeout time.Duration) *RequestOneTimeLinkingCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) WithContext(ctx context.Context) *RequestOneTimeLinkingCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) WithHTTPClient(client *http.Client) *RequestOneTimeLinkingCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPlatformID adds the platformID to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) WithPlatformID(platformID string) *RequestOneTimeLinkingCodeV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the request one time linking code v3 params
func (o *RequestOneTimeLinkingCodeV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *RequestOneTimeLinkingCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param platformId
	frPlatformID := o.PlatformID
	fPlatformID := frPlatformID
	if fPlatformID != "" {
		if err := r.SetFormParam("platformId", fPlatformID); err != nil {
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
