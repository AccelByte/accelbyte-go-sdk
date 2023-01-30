// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package player

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewAdminQueryPlayerAttributesParams creates a new AdminQueryPlayerAttributesParams object
// with the default values initialized.
func NewAdminQueryPlayerAttributesParams() *AdminQueryPlayerAttributesParams {
	var ()
	return &AdminQueryPlayerAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryPlayerAttributesParamsWithTimeout creates a new AdminQueryPlayerAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryPlayerAttributesParamsWithTimeout(timeout time.Duration) *AdminQueryPlayerAttributesParams {
	var ()
	return &AdminQueryPlayerAttributesParams{

		timeout: timeout,
	}
}

// NewAdminQueryPlayerAttributesParamsWithContext creates a new AdminQueryPlayerAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryPlayerAttributesParamsWithContext(ctx context.Context) *AdminQueryPlayerAttributesParams {
	var ()
	return &AdminQueryPlayerAttributesParams{

		Context: ctx,
	}
}

// NewAdminQueryPlayerAttributesParamsWithHTTPClient creates a new AdminQueryPlayerAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryPlayerAttributesParamsWithHTTPClient(client *http.Client) *AdminQueryPlayerAttributesParams {
	var ()
	return &AdminQueryPlayerAttributesParams{
		HTTPClient: client,
	}
}

/*AdminQueryPlayerAttributesParams contains all the parameters to send to the API endpoint
for the admin query player attributes operation typically these are written to a http.Request
*/
type AdminQueryPlayerAttributesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Users
	  comma-separated userIDs

	*/
	Users *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) WithTimeout(timeout time.Duration) *AdminQueryPlayerAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) WithContext(ctx context.Context) *AdminQueryPlayerAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) WithHTTPClient(client *http.Client) *AdminQueryPlayerAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) WithNamespace(namespace string) *AdminQueryPlayerAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUsers adds the users to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) WithUsers(users *string) *AdminQueryPlayerAttributesParams {
	o.SetUsers(users)
	return o
}

// SetUsers adds the users to the admin query player attributes params
func (o *AdminQueryPlayerAttributesParams) SetUsers(users *string) {
	o.Users = users
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryPlayerAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Users != nil {

		// query param users
		var qrUsers string
		if o.Users != nil {
			qrUsers = *o.Users
		}
		qUsers := qrUsers
		if qUsers != "" {
			if err := r.SetQueryParam("users", qUsers); err != nil {
				return err
			}
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
