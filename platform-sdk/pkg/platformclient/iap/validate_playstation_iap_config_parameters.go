// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewValidatePlaystationIAPConfigParams creates a new ValidatePlaystationIAPConfigParams object
// with the default values initialized.
func NewValidatePlaystationIAPConfigParams() *ValidatePlaystationIAPConfigParams {
	var ()
	return &ValidatePlaystationIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewValidatePlaystationIAPConfigParamsWithTimeout creates a new ValidatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewValidatePlaystationIAPConfigParamsWithTimeout(timeout time.Duration) *ValidatePlaystationIAPConfigParams {
	var ()
	return &ValidatePlaystationIAPConfigParams{

		timeout: timeout,
	}
}

// NewValidatePlaystationIAPConfigParamsWithContext creates a new ValidatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewValidatePlaystationIAPConfigParamsWithContext(ctx context.Context) *ValidatePlaystationIAPConfigParams {
	var ()
	return &ValidatePlaystationIAPConfigParams{

		Context: ctx,
	}
}

// NewValidatePlaystationIAPConfigParamsWithHTTPClient creates a new ValidatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewValidatePlaystationIAPConfigParamsWithHTTPClient(client *http.Client) *ValidatePlaystationIAPConfigParams {
	var ()
	return &ValidatePlaystationIAPConfigParams{
		HTTPClient: client,
	}
}

/*ValidatePlaystationIAPConfigParams contains all the parameters to send to the API endpoint
for the validate playstation iap config operation typically these are written to a http.Request
*/
type ValidatePlaystationIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlaystationIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) WithTimeout(timeout time.Duration) *ValidatePlaystationIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) WithContext(ctx context.Context) *ValidatePlaystationIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) WithHTTPClient(client *http.Client) *ValidatePlaystationIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) WithBody(body *platformclientmodels.PlaystationIAPConfigRequest) *ValidatePlaystationIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetBody(body *platformclientmodels.PlaystationIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) WithNamespace(namespace string) *ValidatePlaystationIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the validate playstation iap config params
func (o *ValidatePlaystationIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ValidatePlaystationIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
