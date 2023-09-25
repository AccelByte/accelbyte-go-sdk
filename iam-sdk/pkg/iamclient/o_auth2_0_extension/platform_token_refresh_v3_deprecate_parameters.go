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

// NewPlatformTokenRefreshV3DeprecateParams creates a new PlatformTokenRefreshV3DeprecateParams object
// with the default values initialized.
func NewPlatformTokenRefreshV3DeprecateParams() *PlatformTokenRefreshV3DeprecateParams {
	var ()
	return &PlatformTokenRefreshV3DeprecateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformTokenRefreshV3DeprecateParamsWithTimeout creates a new PlatformTokenRefreshV3DeprecateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformTokenRefreshV3DeprecateParamsWithTimeout(timeout time.Duration) *PlatformTokenRefreshV3DeprecateParams {
	var ()
	return &PlatformTokenRefreshV3DeprecateParams{

		timeout: timeout,
	}
}

// NewPlatformTokenRefreshV3DeprecateParamsWithContext creates a new PlatformTokenRefreshV3DeprecateParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformTokenRefreshV3DeprecateParamsWithContext(ctx context.Context) *PlatformTokenRefreshV3DeprecateParams {
	var ()
	return &PlatformTokenRefreshV3DeprecateParams{

		Context: ctx,
	}
}

// NewPlatformTokenRefreshV3DeprecateParamsWithHTTPClient creates a new PlatformTokenRefreshV3DeprecateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformTokenRefreshV3DeprecateParamsWithHTTPClient(client *http.Client) *PlatformTokenRefreshV3DeprecateParams {
	var ()
	return &PlatformTokenRefreshV3DeprecateParams{
		HTTPClient: client,
	}
}

/*PlatformTokenRefreshV3DeprecateParams contains all the parameters to send to the API endpoint
for the platform token refresh v3 deprecate operation typically these are written to a http.Request
*/
type PlatformTokenRefreshV3DeprecateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformToken
	  Platform Token

	*/
	PlatformToken string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) WithTimeout(timeout time.Duration) *PlatformTokenRefreshV3DeprecateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) WithContext(ctx context.Context) *PlatformTokenRefreshV3DeprecateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) WithHTTPClient(client *http.Client) *PlatformTokenRefreshV3DeprecateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPlatformToken adds the platformToken to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) WithPlatformToken(platformToken string) *PlatformTokenRefreshV3DeprecateParams {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetPlatformToken(platformToken string) {
	o.PlatformToken = platformToken
}

// WithPlatformID adds the platformID to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) WithPlatformID(platformID string) *PlatformTokenRefreshV3DeprecateParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform token refresh v3 deprecate params
func (o *PlatformTokenRefreshV3DeprecateParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformTokenRefreshV3DeprecateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param platform_token
	frPlatformToken := o.PlatformToken
	fPlatformToken := frPlatformToken
	if fPlatformToken != "" {
		if err := r.SetFormParam("platform_token", fPlatformToken); err != nil {
			return err
		}
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
