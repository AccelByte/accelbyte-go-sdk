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

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminUpdateConfigV1Params creates a new AdminUpdateConfigV1Params object
// with the default values initialized.
func NewAdminUpdateConfigV1Params() *AdminUpdateConfigV1Params {
	var ()
	return &AdminUpdateConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateConfigV1ParamsWithTimeout creates a new AdminUpdateConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateConfigV1ParamsWithTimeout(timeout time.Duration) *AdminUpdateConfigV1Params {
	var ()
	return &AdminUpdateConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminUpdateConfigV1ParamsWithContext creates a new AdminUpdateConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateConfigV1ParamsWithContext(ctx context.Context) *AdminUpdateConfigV1Params {
	var ()
	return &AdminUpdateConfigV1Params{

		Context: ctx,
	}
}

// NewAdminUpdateConfigV1ParamsWithHTTPClient creates a new AdminUpdateConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateConfigV1ParamsWithHTTPClient(client *http.Client) *AdminUpdateConfigV1Params {
	var ()
	return &AdminUpdateConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminUpdateConfigV1Params contains all the parameters to send to the API endpoint
for the admin update config v1 operation typically these are written to a http.Request
*/
type AdminUpdateConfigV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsConfigResponse
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) WithTimeout(timeout time.Duration) *AdminUpdateConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) WithContext(ctx context.Context) *AdminUpdateConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) WithHTTPClient(client *http.Client) *AdminUpdateConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) WithBody(body *chatclientmodels.ModelsConfigResponse) *AdminUpdateConfigV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetBody(body *chatclientmodels.ModelsConfigResponse) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) WithNamespace(namespace string) *AdminUpdateConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update config v1 params
func (o *AdminUpdateConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
