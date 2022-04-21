// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users_v4

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

// NewPublicGenerateMyAuthenticatorKeyV4Params creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized.
func NewPublicGenerateMyAuthenticatorKeyV4Params() *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithTimeout creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithTimeout(timeout time.Duration) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		timeout: timeout,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithContext creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithContext(ctx context.Context) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		Context: ctx,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient(client *http.Client) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{
		HTTPClient: client,
	}
}

/*PublicGenerateMyAuthenticatorKeyV4Params contains all the parameters to send to the API endpoint
for the public generate my authenticator key v4 operation typically these are written to a http.Request
*/
type PublicGenerateMyAuthenticatorKeyV4Params struct {

	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithTimeout(timeout time.Duration) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithContext(ctx context.Context) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithHTTPClient(client *http.Client) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithNamespace(namespace string) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
