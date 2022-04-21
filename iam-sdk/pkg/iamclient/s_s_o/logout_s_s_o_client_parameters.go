// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package s_s_o

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

// NewLogoutSSOClientParams creates a new LogoutSSOClientParams object
// with the default values initialized.
func NewLogoutSSOClientParams() *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLogoutSSOClientParamsWithTimeout creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLogoutSSOClientParamsWithTimeout(timeout time.Duration) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		timeout: timeout,
	}
}

// NewLogoutSSOClientParamsWithContext creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewLogoutSSOClientParamsWithContext(ctx context.Context) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		Context: ctx,
	}
}

// NewLogoutSSOClientParamsWithHTTPClient creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLogoutSSOClientParamsWithHTTPClient(client *http.Client) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{
		HTTPClient: client,
	}
}

/*LogoutSSOClientParams contains all the parameters to send to the API endpoint
for the logout s s o client operation typically these are written to a http.Request
*/
type LogoutSSOClientParams struct {

	/*PlatformID
	  SSO Client ID

	*/
	PlatformID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the logout s s o client params
func (o *LogoutSSOClientParams) WithTimeout(timeout time.Duration) *LogoutSSOClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the logout s s o client params
func (o *LogoutSSOClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the logout s s o client params
func (o *LogoutSSOClientParams) WithContext(ctx context.Context) *LogoutSSOClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the logout s s o client params
func (o *LogoutSSOClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the logout s s o client params
func (o *LogoutSSOClientParams) WithHTTPClient(client *http.Client) *LogoutSSOClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the logout s s o client params
func (o *LogoutSSOClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithPlatformID adds the platformID to the logout s s o client params
func (o *LogoutSSOClientParams) WithPlatformID(platformID string) *LogoutSSOClientParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the logout s s o client params
func (o *LogoutSSOClientParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *LogoutSSOClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
