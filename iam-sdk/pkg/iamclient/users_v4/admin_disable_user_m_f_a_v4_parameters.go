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

// NewAdminDisableUserMFAV4Params creates a new AdminDisableUserMFAV4Params object
// with the default values initialized.
func NewAdminDisableUserMFAV4Params() *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDisableUserMFAV4ParamsWithTimeout creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDisableUserMFAV4ParamsWithTimeout(timeout time.Duration) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		timeout: timeout,
	}
}

// NewAdminDisableUserMFAV4ParamsWithContext creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDisableUserMFAV4ParamsWithContext(ctx context.Context) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		Context: ctx,
	}
}

// NewAdminDisableUserMFAV4ParamsWithHTTPClient creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDisableUserMFAV4ParamsWithHTTPClient(client *http.Client) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{
		HTTPClient: client,
	}
}

/*AdminDisableUserMFAV4Params contains all the parameters to send to the API endpoint
for the admin disable user m f a v4 operation typically these are written to a http.Request
*/
type AdminDisableUserMFAV4Params struct {

	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) WithTimeout(timeout time.Duration) *AdminDisableUserMFAV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) WithContext(ctx context.Context) *AdminDisableUserMFAV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) WithHTTPClient(client *http.Client) *AdminDisableUserMFAV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) WithNamespace(namespace string) *AdminDisableUserMFAV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) WithUserID(userID string) *AdminDisableUserMFAV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin disable user m f a v4 params
func (o *AdminDisableUserMFAV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDisableUserMFAV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
