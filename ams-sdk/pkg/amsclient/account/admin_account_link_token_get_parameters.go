// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

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

// NewAdminAccountLinkTokenGetParams creates a new AdminAccountLinkTokenGetParams object
// with the default values initialized.
func NewAdminAccountLinkTokenGetParams() *AdminAccountLinkTokenGetParams {
	var ()
	return &AdminAccountLinkTokenGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAccountLinkTokenGetParamsWithTimeout creates a new AdminAccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAccountLinkTokenGetParamsWithTimeout(timeout time.Duration) *AdminAccountLinkTokenGetParams {
	var ()
	return &AdminAccountLinkTokenGetParams{

		timeout: timeout,
	}
}

// NewAdminAccountLinkTokenGetParamsWithContext creates a new AdminAccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAccountLinkTokenGetParamsWithContext(ctx context.Context) *AdminAccountLinkTokenGetParams {
	var ()
	return &AdminAccountLinkTokenGetParams{

		Context: ctx,
	}
}

// NewAdminAccountLinkTokenGetParamsWithHTTPClient creates a new AdminAccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAccountLinkTokenGetParamsWithHTTPClient(client *http.Client) *AdminAccountLinkTokenGetParams {
	var ()
	return &AdminAccountLinkTokenGetParams{
		HTTPClient: client,
	}
}

/*AdminAccountLinkTokenGetParams contains all the parameters to send to the API endpoint
for the admin account link token get operation typically these are written to a http.Request
*/
type AdminAccountLinkTokenGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) WithTimeout(timeout time.Duration) *AdminAccountLinkTokenGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) WithContext(ctx context.Context) *AdminAccountLinkTokenGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) WithHTTPClient(client *http.Client) *AdminAccountLinkTokenGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) WithNamespace(namespace string) *AdminAccountLinkTokenGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin account link token get params
func (o *AdminAccountLinkTokenGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAccountLinkTokenGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
