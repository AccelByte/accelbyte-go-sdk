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

// NewAdminExportConfigV1Params creates a new AdminExportConfigV1Params object
// with the default values initialized.
func NewAdminExportConfigV1Params() *AdminExportConfigV1Params {
	var ()
	return &AdminExportConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminExportConfigV1ParamsWithTimeout creates a new AdminExportConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminExportConfigV1ParamsWithTimeout(timeout time.Duration) *AdminExportConfigV1Params {
	var ()
	return &AdminExportConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminExportConfigV1ParamsWithContext creates a new AdminExportConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminExportConfigV1ParamsWithContext(ctx context.Context) *AdminExportConfigV1Params {
	var ()
	return &AdminExportConfigV1Params{

		Context: ctx,
	}
}

// NewAdminExportConfigV1ParamsWithHTTPClient creates a new AdminExportConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminExportConfigV1ParamsWithHTTPClient(client *http.Client) *AdminExportConfigV1Params {
	var ()
	return &AdminExportConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminExportConfigV1Params contains all the parameters to send to the API endpoint
for the admin export config v1 operation typically these are written to a http.Request
*/
type AdminExportConfigV1Params struct {

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

// WithTimeout adds the timeout to the admin export config v1 params
func (o *AdminExportConfigV1Params) WithTimeout(timeout time.Duration) *AdminExportConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin export config v1 params
func (o *AdminExportConfigV1Params) WithContext(ctx context.Context) *AdminExportConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin export config v1 params
func (o *AdminExportConfigV1Params) WithHTTPClient(client *http.Client) *AdminExportConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin export config v1 params
func (o *AdminExportConfigV1Params) WithNamespace(namespace string) *AdminExportConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin export config v1 params
func (o *AdminExportConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminExportConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
