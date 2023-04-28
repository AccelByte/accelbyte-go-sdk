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

// NewValidateOneTimeLinkingCodeV3Params creates a new ValidateOneTimeLinkingCodeV3Params object
// with the default values initialized.
func NewValidateOneTimeLinkingCodeV3Params() *ValidateOneTimeLinkingCodeV3Params {
	var ()
	return &ValidateOneTimeLinkingCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewValidateOneTimeLinkingCodeV3ParamsWithTimeout creates a new ValidateOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewValidateOneTimeLinkingCodeV3ParamsWithTimeout(timeout time.Duration) *ValidateOneTimeLinkingCodeV3Params {
	var ()
	return &ValidateOneTimeLinkingCodeV3Params{

		timeout: timeout,
	}
}

// NewValidateOneTimeLinkingCodeV3ParamsWithContext creates a new ValidateOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewValidateOneTimeLinkingCodeV3ParamsWithContext(ctx context.Context) *ValidateOneTimeLinkingCodeV3Params {
	var ()
	return &ValidateOneTimeLinkingCodeV3Params{

		Context: ctx,
	}
}

// NewValidateOneTimeLinkingCodeV3ParamsWithHTTPClient creates a new ValidateOneTimeLinkingCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewValidateOneTimeLinkingCodeV3ParamsWithHTTPClient(client *http.Client) *ValidateOneTimeLinkingCodeV3Params {
	var ()
	return &ValidateOneTimeLinkingCodeV3Params{
		HTTPClient: client,
	}
}

/*ValidateOneTimeLinkingCodeV3Params contains all the parameters to send to the API endpoint
for the validate one time linking code v3 operation typically these are written to a http.Request
*/
type ValidateOneTimeLinkingCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*OneTimeLinkCode
	  one time linking code

	*/
	OneTimeLinkCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) WithTimeout(timeout time.Duration) *ValidateOneTimeLinkingCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) WithContext(ctx context.Context) *ValidateOneTimeLinkingCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) WithHTTPClient(client *http.Client) *ValidateOneTimeLinkingCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithOneTimeLinkCode adds the oneTimeLinkCode to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) WithOneTimeLinkCode(oneTimeLinkCode string) *ValidateOneTimeLinkingCodeV3Params {
	o.SetOneTimeLinkCode(oneTimeLinkCode)
	return o
}

// SetOneTimeLinkCode adds the oneTimeLinkCode to the validate one time linking code v3 params
func (o *ValidateOneTimeLinkingCodeV3Params) SetOneTimeLinkCode(oneTimeLinkCode string) {
	o.OneTimeLinkCode = oneTimeLinkCode
}

// WriteToRequest writes these params to a swagger request
func (o *ValidateOneTimeLinkingCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param oneTimeLinkCode
	frOneTimeLinkCode := o.OneTimeLinkCode
	fOneTimeLinkCode := frOneTimeLinkCode
	if fOneTimeLinkCode != "" {
		if err := r.SetFormParam("oneTimeLinkCode", fOneTimeLinkCode); err != nil {
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
