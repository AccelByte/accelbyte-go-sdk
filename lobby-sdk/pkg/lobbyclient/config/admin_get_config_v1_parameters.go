// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewAdminGetConfigV1Params creates a new AdminGetConfigV1Params object
// with the default values initialized.
func NewAdminGetConfigV1Params() *AdminGetConfigV1Params {
	var ()
	return &AdminGetConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetConfigV1ParamsWithTimeout creates a new AdminGetConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetConfigV1ParamsWithTimeout(timeout time.Duration) *AdminGetConfigV1Params {
	var ()
	return &AdminGetConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminGetConfigV1ParamsWithContext creates a new AdminGetConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetConfigV1ParamsWithContext(ctx context.Context) *AdminGetConfigV1Params {
	var ()
	return &AdminGetConfigV1Params{

		Context: ctx,
	}
}

// NewAdminGetConfigV1ParamsWithHTTPClient creates a new AdminGetConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetConfigV1ParamsWithHTTPClient(client *http.Client) *AdminGetConfigV1Params {
	var ()
	return &AdminGetConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminGetConfigV1Params contains all the parameters to send to the API endpoint
for the admin get config v1 operation typically these are written to a http.Request
*/
type AdminGetConfigV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get config v1 params
func (o *AdminGetConfigV1Params) WithTimeout(timeout time.Duration) *AdminGetConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get config v1 params
func (o *AdminGetConfigV1Params) WithContext(ctx context.Context) *AdminGetConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get config v1 params
func (o *AdminGetConfigV1Params) WithHTTPClient(client *http.Client) *AdminGetConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get config v1 params
func (o *AdminGetConfigV1Params) WithNamespace(namespace string) *AdminGetConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get config v1 params
func (o *AdminGetConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
