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

// NewPublicGenerateMyBackupCodesV4Params creates a new PublicGenerateMyBackupCodesV4Params object
// with the default values initialized.
func NewPublicGenerateMyBackupCodesV4Params() *PublicGenerateMyBackupCodesV4Params {
	var ()
	return &PublicGenerateMyBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGenerateMyBackupCodesV4ParamsWithTimeout creates a new PublicGenerateMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGenerateMyBackupCodesV4ParamsWithTimeout(timeout time.Duration) *PublicGenerateMyBackupCodesV4Params {
	var ()
	return &PublicGenerateMyBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewPublicGenerateMyBackupCodesV4ParamsWithContext creates a new PublicGenerateMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGenerateMyBackupCodesV4ParamsWithContext(ctx context.Context) *PublicGenerateMyBackupCodesV4Params {
	var ()
	return &PublicGenerateMyBackupCodesV4Params{

		Context: ctx,
	}
}

// NewPublicGenerateMyBackupCodesV4ParamsWithHTTPClient creates a new PublicGenerateMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGenerateMyBackupCodesV4ParamsWithHTTPClient(client *http.Client) *PublicGenerateMyBackupCodesV4Params {
	var ()
	return &PublicGenerateMyBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*PublicGenerateMyBackupCodesV4Params contains all the parameters to send to the API endpoint
for the public generate my backup codes v4 operation typically these are written to a http.Request
*/
type PublicGenerateMyBackupCodesV4Params struct {

	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) WithTimeout(timeout time.Duration) *PublicGenerateMyBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) WithContext(ctx context.Context) *PublicGenerateMyBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) WithHTTPClient(client *http.Client) *PublicGenerateMyBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) WithNamespace(namespace string) *PublicGenerateMyBackupCodesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generate my backup codes v4 params
func (o *PublicGenerateMyBackupCodesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGenerateMyBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
