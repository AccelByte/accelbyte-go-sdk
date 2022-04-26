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

// NewAdminEnableMyBackupCodesV4Params creates a new AdminEnableMyBackupCodesV4Params object
// with the default values initialized.
func NewAdminEnableMyBackupCodesV4Params() *AdminEnableMyBackupCodesV4Params {

	return &AdminEnableMyBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminEnableMyBackupCodesV4ParamsWithTimeout creates a new AdminEnableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminEnableMyBackupCodesV4ParamsWithTimeout(timeout time.Duration) *AdminEnableMyBackupCodesV4Params {

	return &AdminEnableMyBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewAdminEnableMyBackupCodesV4ParamsWithContext creates a new AdminEnableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminEnableMyBackupCodesV4ParamsWithContext(ctx context.Context) *AdminEnableMyBackupCodesV4Params {

	return &AdminEnableMyBackupCodesV4Params{

		Context: ctx,
	}
}

// NewAdminEnableMyBackupCodesV4ParamsWithHTTPClient creates a new AdminEnableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminEnableMyBackupCodesV4ParamsWithHTTPClient(client *http.Client) *AdminEnableMyBackupCodesV4Params {

	return &AdminEnableMyBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*AdminEnableMyBackupCodesV4Params contains all the parameters to send to the API endpoint
for the admin enable my backup codes v4 operation typically these are written to a http.Request
*/
type AdminEnableMyBackupCodesV4Params struct {
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) WithTimeout(timeout time.Duration) *AdminEnableMyBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) WithContext(ctx context.Context) *AdminEnableMyBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) WithHTTPClient(client *http.Client) *AdminEnableMyBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin enable my backup codes v4 params
func (o *AdminEnableMyBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *AdminEnableMyBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}