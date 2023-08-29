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
)

// NewValidateExistedPlaystationIAPConfigParams creates a new ValidateExistedPlaystationIAPConfigParams object
// with the default values initialized.
func NewValidateExistedPlaystationIAPConfigParams() *ValidateExistedPlaystationIAPConfigParams {
	var ()
	return &ValidateExistedPlaystationIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewValidateExistedPlaystationIAPConfigParamsWithTimeout creates a new ValidateExistedPlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewValidateExistedPlaystationIAPConfigParamsWithTimeout(timeout time.Duration) *ValidateExistedPlaystationIAPConfigParams {
	var ()
	return &ValidateExistedPlaystationIAPConfigParams{

		timeout: timeout,
	}
}

// NewValidateExistedPlaystationIAPConfigParamsWithContext creates a new ValidateExistedPlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewValidateExistedPlaystationIAPConfigParamsWithContext(ctx context.Context) *ValidateExistedPlaystationIAPConfigParams {
	var ()
	return &ValidateExistedPlaystationIAPConfigParams{

		Context: ctx,
	}
}

// NewValidateExistedPlaystationIAPConfigParamsWithHTTPClient creates a new ValidateExistedPlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewValidateExistedPlaystationIAPConfigParamsWithHTTPClient(client *http.Client) *ValidateExistedPlaystationIAPConfigParams {
	var ()
	return &ValidateExistedPlaystationIAPConfigParams{
		HTTPClient: client,
	}
}

/*ValidateExistedPlaystationIAPConfigParams contains all the parameters to send to the API endpoint
for the validate existed playstation iap config operation typically these are written to a http.Request
*/
type ValidateExistedPlaystationIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) WithTimeout(timeout time.Duration) *ValidateExistedPlaystationIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) WithContext(ctx context.Context) *ValidateExistedPlaystationIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) WithHTTPClient(client *http.Client) *ValidateExistedPlaystationIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) WithNamespace(namespace string) *ValidateExistedPlaystationIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the validate existed playstation iap config params
func (o *ValidateExistedPlaystationIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ValidateExistedPlaystationIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
