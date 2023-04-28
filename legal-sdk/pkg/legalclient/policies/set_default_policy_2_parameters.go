// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// NewSetDefaultPolicy2Params creates a new SetDefaultPolicy2Params object
// with the default values initialized.
func NewSetDefaultPolicy2Params() *SetDefaultPolicy2Params {
	var ()
	return &SetDefaultPolicy2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetDefaultPolicy2ParamsWithTimeout creates a new SetDefaultPolicy2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetDefaultPolicy2ParamsWithTimeout(timeout time.Duration) *SetDefaultPolicy2Params {
	var ()
	return &SetDefaultPolicy2Params{

		timeout: timeout,
	}
}

// NewSetDefaultPolicy2ParamsWithContext creates a new SetDefaultPolicy2Params object
// with the default values initialized, and the ability to set a context for a request
func NewSetDefaultPolicy2ParamsWithContext(ctx context.Context) *SetDefaultPolicy2Params {
	var ()
	return &SetDefaultPolicy2Params{

		Context: ctx,
	}
}

// NewSetDefaultPolicy2ParamsWithHTTPClient creates a new SetDefaultPolicy2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetDefaultPolicy2ParamsWithHTTPClient(client *http.Client) *SetDefaultPolicy2Params {
	var ()
	return &SetDefaultPolicy2Params{
		HTTPClient: client,
	}
}

/*SetDefaultPolicy2Params contains all the parameters to send to the API endpoint
for the set default policy 2 operation typically these are written to a http.Request
*/
type SetDefaultPolicy2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PolicyID
	  Policy Id

	*/
	PolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the set default policy 2 params
func (o *SetDefaultPolicy2Params) WithTimeout(timeout time.Duration) *SetDefaultPolicy2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set default policy 2 params
func (o *SetDefaultPolicy2Params) WithContext(ctx context.Context) *SetDefaultPolicy2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set default policy 2 params
func (o *SetDefaultPolicy2Params) WithHTTPClient(client *http.Client) *SetDefaultPolicy2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPolicyID adds the policyID to the set default policy 2 params
func (o *SetDefaultPolicy2Params) WithPolicyID(policyID string) *SetDefaultPolicy2Params {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the set default policy 2 params
func (o *SetDefaultPolicy2Params) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *SetDefaultPolicy2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
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
