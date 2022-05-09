// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package wallet

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewResetPlatformWalletConfigParams creates a new ResetPlatformWalletConfigParams object
// with the default values initialized.
func NewResetPlatformWalletConfigParams() *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetPlatformWalletConfigParamsWithTimeout creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetPlatformWalletConfigParamsWithTimeout(timeout time.Duration) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		timeout: timeout,
	}
}

// NewResetPlatformWalletConfigParamsWithContext creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetPlatformWalletConfigParamsWithContext(ctx context.Context) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		Context: ctx,
	}
}

// NewResetPlatformWalletConfigParamsWithHTTPClient creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetPlatformWalletConfigParamsWithHTTPClient(client *http.Client) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{
		HTTPClient: client,
	}
}

/*ResetPlatformWalletConfigParams contains all the parameters to send to the API endpoint
for the reset platform wallet config operation typically these are written to a http.Request
*/
type ResetPlatformWalletConfigParams struct {

	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Platform*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithTimeout(timeout time.Duration) *ResetPlatformWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithContext(ctx context.Context) *ResetPlatformWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithHTTPClient(client *http.Client) *ResetPlatformWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithNamespace(namespace string) *ResetPlatformWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithPlatform(platform string) *ResetPlatformWalletConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *ResetPlatformWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
